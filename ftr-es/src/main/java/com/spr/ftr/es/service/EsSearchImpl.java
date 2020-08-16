package com.spr.ftr.es.service;

import com.google.gson.Gson;
import com.spr.ftr.es.bean.CrawlerContent;
import com.spr.ftr.es.client.ElasticsearchClientBase;
import com.spr.ftr.es.dto.EsIndexDTO;
import com.spr.ftr.es.dto.EsSearchDTO;
import com.spr.ftr.es.dto.Page;
import com.spr.ftr.es.util.TikaUtil;
import net.sf.json.JSONObject;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.action.update.UpdateResponse;
import org.elasticsearch.common.text.Text;
import org.elasticsearch.common.xcontent.XContentBuilder;
import org.elasticsearch.common.xcontent.XContentFactory;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightBuilder;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightField;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.util.Assert;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

//@Service(version = "1.0.0", application = "${dubbo.application.id}", protocol = "${dubbo.protocol.id}", registry = "${dubbo.registry.id}")
@org.springframework.stereotype.Service("esSearch")
@RabbitListener(queues = "${mafeng-es-queue}")
public class EsSearchImpl extends ElasticsearchClientBase implements IEsSearch {

	private  static final Gson gson = new Gson();

	private  static final String mafeng_Indices="mafeng_trip";

	private  static final String mafeng_IndexType="mafeng_trip";

	//监听rabbitmq任务，添加索引
	@RabbitHandler
	public void saveContentFromRabbit(String content) throws IOException {
		CrawlerContent dto = gson.fromJson(content, CrawlerContent.class);

			Assert.notNull(dto.getPageId(), "pageId could not be null");
			Assert.hasText(dto.getIntroduction(), "fieldObj could not be null");

			XContentBuilder builder = XContentFactory.jsonBuilder();

			builder.startObject();

			builder.field("title", dto.getTitle());
			builder.field("name", dto.getName());
			builder.field("destination", dto.getDestination());
			builder.field("introduction", dto.getIntroduction());
			builder.field("male", dto.getMale()==0?"女":"男");
			builder.field("pageId", dto.getPageId());
			builder.field("startdate",dto.getStartdate());
			builder.endObject();
			IndexResponse response = getClient().prepareIndex(mafeng_Indices, mafeng_IndexType, dto.getPageId().toString()).setSource(builder).get();
			System.out.println(response.toString());

	}

	/**
	 * 添加索引
	 */
	public void addIndex(EsIndexDTO dto) {
		try {
			Assert.hasText(dto.getIndices(), "indices could not be null");
			Assert.hasText(dto.getIndexType(), "indexType could not be null");
			Assert.hasText(dto.getId(), "id could not be null");
			Assert.notNull(dto.getFieldObj(), "fieldObj could not be null");

			XContentBuilder builder = XContentFactory.jsonBuilder();
			Iterator<Entry<String, String>> iterator = dto.getFieldObj().iterator();

			builder.startObject();
			while (iterator.hasNext()) {
				Entry<String, String> entry = iterator.next();
				builder.field(entry.getKey(), entry.getValue());
			}

			if (!dto.getFieldObj().getFilePaths().isEmpty()) {
				StringBuilder content = new StringBuilder();

				for (String path : dto.getFieldObj().getFilePaths()) {
					content.append(TikaUtil.parse(path)).append("*****");
				}

				builder.field(dto.getFieldObj().getFileFieldName(), content.toString());
			}

			builder.endObject();

			IndexResponse response = getClient().prepareIndex(dto.getIndices(), dto.getIndexType(), dto.getId()).setSource(builder).get();

			System.out.println(response.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * 更新索引
	 * 
	 * @param dto
	 *            2018-5-12 下午2:22:35
	 */
	public void updateIndex(EsIndexDTO dto) {
		Assert.hasText(dto.getIndices(), "indices could not be null");
		Assert.hasText(dto.getIndexType(), "indexType could not be null");
		Assert.hasText(dto.getId(), "id could not be null");
		Assert.notNull(dto.getFieldObj(), "fieldObj could not be null");

		try {

			XContentBuilder builder = XContentFactory.jsonBuilder();
			Iterator<Entry<String, String>> iterator = dto.getFieldObj().iterator();

			builder.startObject();
			while (iterator.hasNext()) {
				Entry<String, String> entry = iterator.next();
				builder.field(entry.getKey(), entry.getValue());
			}

			if (!dto.getFieldObj().getFilePaths().isEmpty()) {
				StringBuilder content = new StringBuilder();

				for (String path : dto.getFieldObj().getFilePaths()) {
					content.append(TikaUtil.parse(path)).append("*****");
				}

				builder.field(dto.getFieldObj().getFileFieldName(), content.toString());
			}

			builder.endObject();

			// 如不存在记录则插入新的
			IndexRequest indexRequest = new IndexRequest(dto.getIndices(), dto.getIndexType(), dto.getId()).source(builder);

			UpdateRequest updateRequest = new UpdateRequest(dto.getIndices(), dto.getIndexType(), dto.getId()).doc(builder).upsert(indexRequest);

			UpdateResponse response = getClient().update(updateRequest).get();

			System.out.println(response.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * 删除索引
	 * 
	 * @param dto
	 *            2018-5-12 下午2:23:50
	 */
	public void deleteIndex(EsIndexDTO dto) {
		Assert.hasText(dto.getIndices(), "indices could not be null");
		Assert.hasText(dto.getIndexType(), "indexType could not be null");
		Assert.hasText(dto.getId(), "id could not be null");

		try {

			DeleteResponse response = getClient().prepareDelete(dto.getIndices(), dto.getIndexType(), dto.getId()).get();

			System.out.println(response.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * 搜索
	 */
	public Page<JSONObject> search(EsSearchDTO dto) {

		HighlightBuilder hiBuilder = new HighlightBuilder();
		hiBuilder.preTags("<em>");
		hiBuilder.postTags("</em>");
		for (String name : dto.getHighlightFields()) {
			hiBuilder.field(name);
		}

		String[] fields = new String[dto.getQueryFields().size()];
		dto.getQueryFields().toArray(fields);
		QueryBuilder qb = QueryBuilders.multiMatchQuery(dto.getSearchVal(), // field
																			// 字段
				fields// text
				);

		SearchResponse response = getClient().prepareSearch(dto.getIndices())// 可以是多个index
				.setTypes(dto.getIndexType())// 可以是多个类型
				.setSearchType(SearchType.DFS_QUERY_THEN_FETCH).setQuery(qb)// Query
				.highlighter(hiBuilder) // 查询条件
				// .setPostFilter(QueryBuilders.rangeQuery("age").from(12).to(18))

				.setFrom(dto.getStartQuery()).setSize(dto.getPageSize()).setExplain(true).get();

		SearchHit[] searchHits = response.getHits().getHits();

		List<JSONObject> list = new ArrayList<JSONObject>();
		for (SearchHit searchHit : searchHits) {
			System.out.println(searchHit.getHighlightFields().toString());
			JSONObject obj = JSONObject.fromObject(searchHit.getSourceAsString());

			StringBuilder highContent = new StringBuilder();
			for (String name : dto.getHighlightFields()) {
				HighlightField hf = searchHit.getHighlightFields().get(name);
				if (hf != null && hf.getFragments() != null) {
					for (Text text : hf.getFragments()) {

						highContent.append(text.string());

					}
				}

			}

			obj.put("highContent", highContent.toString());

			list.add(obj);
		}

		Page<JSONObject> pageResult = new Page<JSONObject>(dto.getCurrentPage(), dto.getPageSize(), list, response.getHits().getTotalHits());

		// println(response);
		System.out.println(response.toString());

		return pageResult;

	}

}

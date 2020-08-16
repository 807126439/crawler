package test.es;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.elasticsearch.action.admin.indices.analyze.AnalyzeRequest;
import org.elasticsearch.action.admin.indices.analyze.AnalyzeResponse;
import org.elasticsearch.action.admin.indices.mapping.put.PutMappingRequest;
import org.elasticsearch.action.admin.indices.mapping.put.PutMappingResponse;
import org.elasticsearch.action.admin.indices.settings.get.GetSettingsResponse;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.client.Requests;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.xcontent.XContentBuilder;
import org.elasticsearch.common.xcontent.XContentFactory;
import org.elasticsearch.common.xcontent.XContentType;
import org.junit.Test;

import com.carrotsearch.hppc.cursors.ObjectObjectCursor;
import com.spr.ftr.es.util.TikaUtil;

public class IndexAPI extends ElasticsearchClientBase {

	/**
	 * 使用json字符串来构造文档内容
	 * 
	 * @throws Exception
	 */
	@Test
	public void testForUseStr() throws Exception {
		String json = "{" + "\"user\":\"kimchy\"," + "\"postDate\":\"2019-01-30\"," + "\"message\":\"trying out Elasticsearch\"" + "}";
		getClient().prepareIndex("twitter", "tweet", "2").setSource(json, XContentType.JSON).get();

		System.out.println("testForUseStr twitter 创建成功");

	}

	/**
	 * 使用map来构造文档内容
	 * 
	 * @throws Exception
	 */
	@Test
	public void testForUseMap() throws Exception {

		Map<String, Object> json = new HashMap<String, Object>();
		json.put("user", "kimchy");
		json.put("postDate", "2017-10-10");
		json.put("message", "trying out Elasticsearch");

		IndexResponse response = getClient().prepareIndex("twitter", "tweet", String.valueOf(4)).setSource(json).get();

		System.out.println(response.getResult());

		// Assert.assertEquals("CREATED", response.getResult().name());

		System.out.println("testForUseMap twitter 创建成功");
	}

	/**
	 * 使用elasticsearch官方提供的json构造器来构造文档内容
	 * 
	 * @throws Exception
	 */
	@Test
	public void testForUseXContentBuilder() throws Exception {
		XContentBuilder builder = XContentFactory.jsonBuilder().startObject().field("user", "kimchy").field("postDate", new Date()).field("age", 10)
				.field("gender", "male").field("message", "trying out Elasticsearch").endObject();
		getClient().prepareIndex("twitter", "tweet", "1").setSource(builder).get();

		System.out.println("testForUseXContentBuilder twitter 创建成功");
	}

	private void createIKMapping(String indices, String indexType) {
		// DeleteRequest deleteRequest = new DeleteRequest(indices);
		//
		// ActionFuture<DeleteResponse> responses =
		// getClient().delete(deleteRequest);
		// System.out.println(responses.toString());
		//
		// System.out.println("删除成功！");

		getClient().admin().indices().prepareCreate(indices).execute().actionGet();

		XContentBuilder builder = null;
		try {
			builder = XContentFactory.jsonBuilder().startObject().startObject("properties").startObject("fileContent").field("type", "text")
					.field("analyzer", "ik_max_word").field("search_analyzer", "ik_smart").endObject().startObject("title").field("type", "text")
					.field("analyzer", "ik_max_word").field("search_analyzer", "ik_smart").endObject().endObject().endObject();

			PutMappingRequest mapping = Requests.putMappingRequest(indices).type(indexType).source(builder);

			PutMappingResponse resp = getClient().admin().indices().putMapping(mapping).actionGet();
			System.out.println(resp.toString());
			getClient().close();

			System.out.println("finish...");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void indexContent(String indices, String indexType, String id, String content) throws Exception {
		XContentBuilder builder = XContentFactory.jsonBuilder().startObject().field("content", content).endObject();
		IndexResponse response = getClient().prepareIndex(indices, indexType, id).setSource(builder).get();

		System.out.println(response.toString());

		System.out.println("indexContent " + indices + " 创建成功");
	}

	public void indexFile(String indices, String indexType, String id, String filePath) throws Exception {

		String content = TikaUtil.parse(filePath);
		XContentBuilder builder = XContentFactory.jsonBuilder().startObject().field("content", content).endObject();
		IndexResponse response = getClient().prepareIndex(indices, indexType, id).setSource(builder).get();

		System.out.println(response.toString());

		System.out.println("indexContent " + indices + " 创建成功");
	}

	public void getSetting(String indices) throws Exception {
		GetSettingsResponse response = getClient().admin().indices().prepareGetSettings(indices).get();
		for (ObjectObjectCursor<String, Settings> cursor : response.getIndexToSettings()) {
			String index = cursor.key;
			Settings settings = cursor.value;
			Integer shards = settings.getAsInt("index.number_of_shards", null);
			Integer replicas = settings.getAsInt("index.number_of_replicas", null);

			System.out.println(cursor.toString());
		}
	}

	/**
	 * 查看分词结果
	 * 
	 * @param indices
	 * @throws Exception
	 *             2018-5-9 下午7:22:44
	 */
	public void analyzePhrase(String indices) throws Exception {

		AnalyzeRequest analyzeRequest = new AnalyzeRequest("wanve10").text("中华人民共和国国歌").analyzer("ik_max_word");// .analyzer("standard")

		List<AnalyzeResponse.AnalyzeToken> tokens = getClient().admin().indices().analyze(analyzeRequest).actionGet().getTokens();

		for (AnalyzeResponse.AnalyzeToken token : tokens) {
			System.out.println(token.getTerm());
		}
	}

	public static void main(String[] args) {
		IndexAPI api = new IndexAPI();
		try {

			// api.createIKMapping(EsTask.ARCHIVES_INDICES,
			// EsTask.ARCHIVES_TEXT_TYPE);
			// api.indexFile("wanve10", "article", "1", "D:/cc.pdf");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

package test.es;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightBuilder;
import org.junit.Test;

public class SearchAPI extends ElasticsearchClientBase {

	@Test
	public void testPrepareSearch(String indices, String indexType, String keyword) throws Exception {

		HighlightBuilder hiBuilder = new HighlightBuilder();
		hiBuilder.preTags("<h2>");
		hiBuilder.postTags("</h2>");
		hiBuilder.field("content");

		QueryBuilder qb = QueryBuilders.multiMatchQuery("message", // field 字段
				"Elasticsearch" // text
		);

		SearchResponse response = getClient().prepareSearch(indices)// 可以是多个index
				.setTypes(indexType)// 可以是多个类型
				.setSearchType(SearchType.DFS_QUERY_THEN_FETCH).setQuery(QueryBuilders.termQuery("content", keyword)) // Query
				.highlighter(hiBuilder) // 查询条件
				// .setPostFilter(QueryBuilders.rangeQuery("age").from(12).to(18))
				// // Filter 过滤
				.setFrom(0).setSize(60).setExplain(true).get();

		println(response);

		System.out.println("finish");
	}

	public static void main(String[] args) {
		SearchAPI api = new SearchAPI();
		try {
			api.testPrepareSearch("wanve10", "article", "中国");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

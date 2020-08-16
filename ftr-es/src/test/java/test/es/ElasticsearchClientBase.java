package test.es;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.index.query.QueryBuilder;

public class ElasticsearchClientBase extends ElasticsearchClient {

	protected SearchResponse twitterPrepareSearch(QueryBuilder qb) {
		SearchResponse response = getClient().prepareSearch("twitter")// 可以是多个index
				.setTypes("tweet")// 可以是多个类型
				.setQuery(qb) // Query 查询条件
				.get();

		println(response);
		return response;
	}

}

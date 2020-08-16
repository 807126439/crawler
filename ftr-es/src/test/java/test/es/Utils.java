package test.es;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.search.SearchHit;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

public class Utils {

	public static void println(SearchResponse searchResponse) {
		SearchHit[] searchHits = searchResponse.getHits().getHits();
		for (SearchHit searchHit : searchHits) {
			System.out.println(searchHit.getHighlightFields().toString());
			System.out.println(JSON.toJSONString(searchHit.getSourceAsString(), SerializerFeature.PrettyFormat));
		}

	}

}

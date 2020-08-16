package com.spr.ftr.es.util;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.search.SearchHit;

public class Utils {

	public static void println(SearchResponse searchResponse) {
		SearchHit[] searchHits = searchResponse.getHits().getHits();
		for (SearchHit searchHit : searchHits) {
			System.out.println(searchHit.getHighlightFields().toString());
			//System.out.println(JSON.toJSONString(searchHit.getSourceAsString(), SerializerFeature.PrettyFormat));
		}

	}

}

package test;

import com.spr.ftr.es.dto.EsIndexDTO;
import com.spr.ftr.es.service.EsSearchImpl;

public class Test {

	public static void main(String[] args) {
		System.out.println("start");
		// EsSearchDTO dto = new EsSearchDTO("wanve10", "article", "中国");
		//
		// dto.addQueryFields("content").addHighlightFields("content");
		//
		// EsSearchImpl es = new EsSearchImpl();
		// es.search(dto);

		EsIndexDTO dto = new EsIndexDTO();

		dto.setIndices("wanve10");
		dto.setIndexType("article");
		dto.setId("88");
		dto.addField("title", "还要生活");
		EsSearchImpl es = new EsSearchImpl();
		es.updateIndex(dto);

		System.out.println("finish");

	}
}

package com.spr.ftr.es.client;

import com.spr.ftr.es.config.IndexConfig;
import com.spr.ftr.es.util.Utils;
import org.elasticsearch.action.admin.indices.mapping.put.PutMappingRequest;
import org.elasticsearch.action.admin.indices.mapping.put.PutMappingResponse;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.Requests;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.TransportAddress;
import org.elasticsearch.common.xcontent.XContentBuilder;
import org.elasticsearch.common.xcontent.XContentFactory;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.net.InetAddress;

@Component
public class ElasticsearchClient {

	private final String CLUSTER_NAME = "elasticsearch";

	 private final String HOST_NAME = "localhost";

	 private final int PORT = 9300;

	 private final String indexName="drklb";

	private final String TypeName="drklb";

	private TransportClient client;
	@Autowired
	private IndexConfig indexConfig;

	public ElasticsearchClient() {

	}

	@PostConstruct
	public void init() {

		if (client == null) {

			try {
				setUp();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			System.out.println("init..");
		}
//		createIKMapping(indexName, TypeName);
	}

	protected TransportClient getClient() {

		return client;
	}

	private void setUp() throws Exception {

		Settings esSettings = Settings.builder().put("cluster.name", CLUSTER_NAME) // 设置ES实例的名称
				.put("client.transport.sniff", true) //
				// 自动嗅探整个集群的状态，把集群中其他ES节点的ip添加到本地的客户端列表中
				.build();

		/**
		 * 这里的连接方式指的是没有安装x-pack插件,如果安装了x-pack则参考{@link ElasticsearchXPackClient}
		 * 1. java客户端的方式是以tcp协议在9300端口上进行通信 2. http客户端的方式是以http协议在9200端口上进行通信
		 */
		System.out.println("ElasticsearchClient 尝试连接");

		client = new PreBuiltTransportClient(esSettings).addTransportAddress(new TransportAddress(InetAddress.getByName(HOST_NAME), PORT));

		System.out.println("ElasticsearchClient 连接成功");
	}

	protected void tearDown() throws Exception {
		if (client != null) {
			client.close();
		}

	}

	protected void println(SearchResponse searchResponse) {
		Utils.println(searchResponse);
	}

	private void createIKMapping(String indices, String indexType) {

		try {
			getClient().admin().indices().prepareCreate(indices).execute().actionGet();

			XContentBuilder builder = null;
			builder = XContentFactory.jsonBuilder().startObject().startObject("properties").startObject("fileContent").field("type", "text")
					.field("analyzer", "ik_max_word").field("search_analyzer", "ik_smart").endObject().startObject("category").field("type", "text")
					.field("analyzer", "ik_max_word").field("search_analyzer", "ik_smart").endObject().startObject("content").field("type", "text")
					.field("analyzer", "ik_max_word").field("search_analyzer", "ik_smart").endObject().endObject().endObject();

			PutMappingRequest mapping = Requests.putMappingRequest(indices).type(indexType).source(builder);

			PutMappingResponse resp = getClient().admin().indices().putMapping(mapping).actionGet();
			System.out.println(resp.toString());
			getClient().close();

			System.out.println("finish...");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("创建IK失败...");
		}

	}

	public static void main(String[] args) {
		ElasticsearchClient t = new ElasticsearchClient();

		try {
			t.createIKMapping("archives", "archives_text");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}

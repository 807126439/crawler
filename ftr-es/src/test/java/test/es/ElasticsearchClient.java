package test.es;

import java.net.InetAddress;

import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.TransportAddress;
import org.elasticsearch.transport.client.PreBuiltTransportClient;

public class ElasticsearchClient {

	private TransportClient client;

	protected TransportClient getClient() {

		try {
			if (client == null) {
				setUp();
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return client;
	}

	public void setUp() throws Exception {

		Settings esSettings = Settings.builder().put("cluster.name", "es-6.4-test") // 设置ES实例的名称
				.put("client.transport.sniff", true) //
				// 自动嗅探整个集群的状态，把集群中其他ES节点的ip添加到本地的客户端列表中
				.build();

		/**
		 * 这里的连接方式指的是没有安装x-pack插件,如果安装了x-pack则参考{@link ElasticsearchXPackClient}
		 * 1. java客户端的方式是以tcp协议在9300端口上进行通信 2. http客户端的方式是以http协议在9200端口上进行通信
		 */

		client = new PreBuiltTransportClient(esSettings).addTransportAddress(new TransportAddress(InetAddress.getByName("localhost"), 9300));

		System.out.println("ElasticsearchClient 连接成功");
	}

	public void tearDown() throws Exception {
		if (client != null) {
			client.close();
		}

	}

	protected void println(SearchResponse searchResponse) {
		Utils.println(searchResponse);
	}

	public static void main(String[] args) {
		ElasticsearchClient t = new ElasticsearchClient();

		try {
			t.setUp();
			t.tearDown();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}

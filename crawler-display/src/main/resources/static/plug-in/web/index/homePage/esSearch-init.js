var client = new $.es.Client({
    //连接的服务器
    hosts: 'localhost:9200/'
});

function getHealthy(){
// 获取状态，参数可选，可以只传递一个回调
    client.cluster.health(function (err, resp) {
        if (err) {
            $("#message").append(err.message + "<br\>");
            console.error(err.message);
        } else {
            console.dir(resp);
            $("#message").append("server status: " + resp.status + "<br\>");
        }
    });
}




function addesIndex(){
    var data = {
        title: 'test!',
        content: 'It all started when...',
        date: '2018-03-11'
    };
// 建立索引, 添加数据
    client.index({
        index: 'blog',
        type: 'post',
        id: 1,
        body: data
    }, function (err, resp) {
        console.dir(resp);
        console.dir(err);
        $("#message").append("add data result: " + resp.result + "<br\>");
    });
}

//关键字或类为空查所有
function searchEs(keyword,type,from,size){
    loading_flag = true;
    var query_str;
    if(keyword==null||keyword==''||type==null){
        query_str = {
            from : from, size : 10,
            query: {
                match_all: {
                }
            }
        };
    }else if(type == 1||type == 2){
        if(type == 1){
            query_str = {
                from : from, size : 10,
                query: {
                    "match": {
                        "title": keyword
                    }
                }
            };
        }else{
            query_str = {
                from : from, size : 10,
                query: {
                    "match": {
                        "introduction": keyword
                    }
                }
            };
        }
    }else{
        query_str = {
            from : from, size : 10,
            "query": {
                "bool": {
                    "should": [
                        { "match": {
                                "title":  {
                                    "query": keyword,
                                    "boost": 3
                                }}},
                        { "match": {
                                "introduction":  {
                                    "query": keyword,
                                    "boost": 1
                                }}}
                    ]
                }
            }
        };
    }

// 搜索文档
    client.search({
        index: 'mafeng_trip',
        size: 10,
        body: query_str
    }).then(function (resp) {
        var html="";
        if(resp.hits.hits!=null){
            for (var i in resp.hits.hits) {
                var div="<div class='blogs' data-scroll-reveal='enter bottom over 1s' data-scroll-reveal-id='2' style='-webkit-transform: translatey(0);transform: translatey(0);opacity: 1;-webkit-transition: -webkit-transform 1s ease-in-out 0s,  opacity 1s ease-in-out 0s;transition: transform 1s ease-in-out 0s, opacity 1s ease-in-out 0s;-webkit-perspective: 1000;-webkit-backface-visibility: hidden;' data-scroll-reveal-initialized='true'>"+
                        "<h3 class='blogtitle'><a href='http://www.mafengwo.cn/together/detail/"+resp.hits.hits[i]._source.pageId+".html' target='_blank' >"+resp.hits.hits[i]._source.title+"</a></h3>"+
                        "<p class='blogtext'>"+resp.hits.hits[i]._source.introduction+"</p>"+
                        "<div class='bloginfo'>"+
                            "<ul>"+
                            "<li class='author'><a href='/'>"+resp.hits.hits[i]._source.name+"</a></li>"+
                        "<li class='lmname'><a href='/'>"+resp.hits.hits[i]._source.destination+"</a></li>"+
                        "<li class='timer'>"+resp.hits.hits[i]._source.startdate+"</li>"+
                        "<li class='view'>"+resp.hits.hits[i]._source.male+"</li>"+
                        "<li class='like'>"+resp.hits.hits[i]._source.pageId+"</li>"+
                            "</ul>"+
                            "</div>"+
                    "</div>"
                html+=div;
            }
        }else{
            html="查询不到结果";
        }
        $("#esResult_list").append(html);
    });
}



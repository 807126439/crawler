$(function(){
    getFundationDate();
})
var true_dateArray = [];
var growthRateArray = [];
var dateArray = [];
var dataArray = [];

function getFundationDate(){
    var loading_index = layer.load(2, {shade: false})
    var code=$("#code").val();
    $.ajax({
        url:path+"/fundationRecordController/getDate.do",
        tranditional:true,
        dataType:"json",
        data:{
            "code":code
        },
        type:"post",
        cache : false,
        async : false,
        success:function(data){
            if(data.status == "y" || data.status == "Y"){
                var minValue = 0;
                for(var i in data.data){
                    var now = new Date(data.data[i].date);
                    growthRateArray.push(data.data[i].growthRate);
                    true_dateArray.push(now);
                    dateArray.push([now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'));
                    dataArray.push(data.data[i].netValue);
                    minValue = (minValue<data.data[i].netValue?minValue:data.data[i].netValue);
                }
                buildChart(dateArray,dataArray,minValue);
                layer.close(layer.index);
            }else{
                layer.close(layer.index);
                layer.msg(data.info,{icon: 2,time:2500});
            }

        },
        error : function(error) {
            alert(error);
        }
    })

    function buildChart(dateArray,dataArray,minValue){
        option = {
            tooltip: {
                trigger: 'axis',
                position: function (pt) {
                    return [pt[0], '10%'];
                }
            },
            title: {
                left: 'center',
                text: $("#fundationName").val(),
            },
            toolbox: {
                feature: {
                    dataZoom: {
                        yAxisIndex: 'none'
                    },
                    restore: {},
                    saveAsImage: {}
                }
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: dateArray
            },
            yAxis: {
                type: 'value',
                boundaryGap: [0, '100%'],
                min: function(value) {
                    return value.min * 0.8;
                }
            },
            dataZoom: [{
                type: 'inside',
                start: 0,
                end: 10
            }, {
                start: 0,
                end: 10,
                handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
                handleSize: '80%',
                handleStyle: {
                    color: '#fff',
                    shadowBlur: 3,
                    shadowColor: 'rgba(0, 0, 0, 0.6)',
                    shadowOffsetX: 2,
                    shadowOffsetY: 2
                }
            }],
            series: [
                {
                    name:'净值',
                    type:'line',
                    smooth:true,
                    symbol: 'none',
                    sampling: 'average',
                    itemStyle: {
                        color: 'rgb(255, 70, 131)'
                    },
                    areaStyle: {
                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                            offset: 0,
                            color: 'rgb(255, 158, 68)'
                        }, {
                            offset: 1,
                            color: 'rgb(255, 70, 131)'
                        }])
                    },
                    data: dataArray
                }
            ]
        };

        var myChart = echarts.init(document.getElementById('show_char'));
        myChart.setOption(option);
    }
}




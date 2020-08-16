function cal_1_start(){

    if(dateArray == null|| dataArray ==null){
        layer.alert("请求的数据为空");
        return;
    }

    var startDate = true_dateArray[0];
    var endDate = true_dateArray[true_dateArray.length-1];
    var buying = $("#cal_1_amount").val();
    if(buying==null||buying ==""){
        layer.alert("请输入金额");
        return;
    }
    if(isNaN(buying)){
        layer.alert("请输入数字");
        return;
    }
    if($("#cal_1_start").val()!=null){
        startDate =  new Date($("#cal_1_start").val());
    }
    if($("#cal_1_end").val()!=null){
        endDate = new Date($("#cal_1_end").val());
    }


    var final_share = 0;
    var cost = 0;
    var tempI = 0;
    for (var i = 0; i < true_dateArray.length; i++) {
        if(true_dateArray[i]<startDate){
            continue;
        }
        if(true_dateArray[i]>endDate){
            tempI = i-1;
            break;
        }
        tempI = i;
        final_share+=(buying/dataArray[i]);
        cost+=1;
    }
    cost = cost*buying;
    var earn = (dataArray[tempI]*final_share-cost);
    $("#cal_1_result").val(earn.toFixed(4));
    $("#cal_1_cost").val(cost.toFixed(4));
    $("#cal_1_result_percent").val((earn/cost*100).toFixed(4)+"%");
}

function cal_2_start(){
    if(dateArray == null|| dataArray ==null){
        layer.alert("请求的数据为空");
        return;
    }
    var startDate = true_dateArray[0];
    var endDate = true_dateArray[true_dateArray.length-1];
    var buying = $("#cal_2_amount").val();
    var price_ratio = $("#cal_2_price_ratio").val();
    var raf_ratio = $("#cal_2_raf_ratio").val();

    if(buying==null||buying ==""){
        layer.alert("请输入金额");
        return;
    }
    if(isNaN(buying)||isNaN(price_ratio)||isNaN(raf_ratio)){
        layer.alert("请输入数字");
        return;
    }
    if($("#cal_2_start").val()!=null){
        startDate =  new Date($("#cal_2_start").val());
    }
    if($("#cal_2_end").val()!=null){
        endDate = new Date($("#cal_2_end").val());
    }

    var average_price = 0;
    var total = 0;
    var final_share = 0;
    var costNum = 0;
    var cost = 0;
    var tempI = 0;
    for (var i = 0; i < true_dateArray.length; i++) {
        if(true_dateArray[i]<startDate){
            continue;
        }
        if(true_dateArray[i]>endDate){
            tempI = i-1;
            break;
        }
        total += dataArray[i];
        costNum+=1;
        average_price = total/costNum;
        tempI = i;
        var single = buying*(1+(1-dataArray[i]/average_price)*price_ratio-growthRateArray[i]/100*raf_ratio);
        final_share+=(single/dataArray[i]);
        cost = single+cost;
    }
    var earn = (dataArray[tempI]*final_share-cost);
    $("#cal_2_result").val(earn.toFixed(4));
    $("#cal_2_cost").val(cost.toFixed(4));
    $("#cal_2_result_percent").val((earn/cost*100).toFixed(4)+"%");
}

function cal_3_start(){
    if(dateArray == null|| dataArray ==null){
        layer.alert("请求的数据为空");
        return;
    }
    var startDate = true_dateArray[0];
    var endDate = true_dateArray[true_dateArray.length-1];
    var buying = $("#cal_3_amount").val();
    var price_ratio = $("#cal_3_price_ratio").val();
    var raf_ratio = $("#cal_3_raf_ratio").val();
    var fragment_length = $("#cal_3_fragment_length").val();

    if(buying==null||buying ==""){
        layer.alert("请输入金额");
        return;
    }
    if(isNaN(buying)||isNaN(price_ratio)||isNaN(raf_ratio)||isNaN(fragment_length)){
        layer.alert("请输入数字");
        return;
    }
    if($("#cal_3_start").val()!=null){
        startDate =  new Date($("#cal_3_start").val());
    }
    if($("#cal_3_end").val()!=null){
        endDate = new Date($("#cal_3_end").val());
    }
    var division_fragment = Math.round(fragment_length*2/3)
    var pre_changge = 0;
    var after_change = 0;
    var queue= new Queue();
    var after_queue= new Queue();
    var pre_queue= new Queue();
    var average_price = 0;
    var total = 0;
    var final_share = 0;
    var costNum = 0;
    var cost = 0;
    var tempI = 0;
    for (var i = 0; i < true_dateArray.length; i++) {
        if(true_dateArray[i]<startDate){
            continue;
        }
        if(true_dateArray[i]>endDate){
            tempI = i-1;
            break;
        }

        if(i>0){
            queue.enqueue(dataArray[i]-dataArray[i-1]);
            after_change += dataArray[i]-dataArray[i-1];
            after_queue.enqueue(dataArray[i]-dataArray[i-1]);
            if(queue.getSize()>=division_fragment){
                var tem_change = after_queue.dequeue();
                after_change -= tem_change;
                pre_changge += tem_change;
                pre_queue.enqueue(tem_change);
            }
            if(queue.getSize()>=fragment_length){
                queue.dequeue();
                pre_changge -= pre_queue.dequeue();
            }

        }
        total += dataArray[i];
        costNum+=1;
        average_price = total/costNum;
        tempI = i;

        var single = buying*(1+(1-dataArray[i]/average_price)*price_ratio-growthRateArray[i]/100*raf_ratio);

        if(pre_changge<0&&after_change>0){
            single = single*(1+0.2)
        }
        if(pre_changge>0&&after_change<0){
            single = single*(1-0.2)
        }
        final_share+=(single/dataArray[i]);
        cost = single+cost;
    }
    var earn = (dataArray[tempI]*final_share-cost);
    $("#cal_3_result").val(earn.toFixed(4));
    $("#cal_3_cost").val(cost.toFixed(4));
    $("#cal_3_result_percent").val((earn/cost*100).toFixed(4)+"%");
}

function Queue() {
    this.dataStore = [];
    this.enqueue = enqueue;
    this.dequeue = dequeue;
    this.front = front;
    this.back = back;
    this.toString = toString;
    this.empty = empty;
    this.getSize = getSize;
}

/*
 向队尾添加一个元素
 @param element
 */
function enqueue(element) {
    this.dataStore.push(element)
}
/*

删除队首的元素
*/
function dequeue() {
    return this.dataStore.shift();
}
// 读取队首元素
function front() {
    return this.dataStore[0]
}

// 读取队尾元素
function back() {
    return this.dataStore[this.dataStore.length-1];
}

// 显示队列内所有的元素
function toString() {
    var result = "";
    for(var i=0;i<this.dataStore.length;i++){
        result+=this.dataStore[i]+"\n";
    }
    return result;
}

// 判断队列是否为空
function empty() {
    if(this.dataStore.length==0){
        return true;
    }else{
        return false;
    }
}

function getSize() {
    return this.dataStore.length;
}

function getByIndex(index) {
    return this.dataStore[index];
}
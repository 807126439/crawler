<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
<head>
    <base href="${basePath!}">

    <title></title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="renderer" content="webkit|ie-stand">

    <#include "../../common/script/main-css.ftl"/>
    <style type="text/css" >
        .fundation_show_char{
            width: 80%;min-height: 1000px;display: inline-block;margin-left: 5px;
        }
        .fundation_setting{
            width: 15%;display: inline-block;
        }
        .row{
            margin-top: 5px;
        }

    </style>


</head>


<body>

<input type="hidden" value="${(model.code?c)!}" id="code" name="code" />
<input type="hidden" value="${(model.fundationName)!}" id="fundationName" name="fundationName" />

<div class="ui-panel">


    <div class="ui-panel-body">
        <div class="fundation_setting text-l va-t">
            <div>
                <h2>定额计算方式</h2>
                <div class="row cl">
                    <label class="form-label col-xs-4">开始日期：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text Wdate" id="cal_1_start" value="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'cal_1_end\')}'})">
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4">结束日期：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text Wdate" id="cal_1_end" value="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'cal_1_start\')}'})">
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4">每日份额：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_1_amount" value="" type="n" >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">最总花费：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_1_cost" disabled >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">结果：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_1_result" disabled >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4">比例：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_1_result_percent" disabled >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <input class="btn btn-primary radius" type="button" id="cal_1_button" value="计算" onclick="cal_1_start()">
            </div>


            <div>
                <h2>浮动计算方式</h2>
                <div class="row cl">
                    <label class="form-label col-xs-4">开始日期：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text Wdate" id="cal_2_start" value="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'cal_2_end\')}'})">
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4">结束日期：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text Wdate" id="cal_2_end" value="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'cal_2_start\')}'})">
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4">每日基础份额：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_2_amount" value="" type="n" >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">单价影响系数(0-1)：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_2_price_ratio" value="" type="n" >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">涨跌影响系数(1-100)：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_2_raf_ratio" value="" type="n" >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">最总花费：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_2_cost" disabled >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">结果：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_2_result" disabled >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4">比例：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_2_result_percent" disabled >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <input class="btn btn-primary radius" type="button" id="cal_2_button" value="计算" onclick="cal_2_start()">
            </div>

            <div>
                <h2>分段计算方式</h2>
                <div class="row cl">
                    <label class="form-label col-xs-4">开始日期：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text Wdate" id="cal_3_start" value="2017-01-04" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'cal_3_end\')}'})">
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4">结束日期：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text Wdate" id="cal_3_end" value="2019-04-29" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'cal_3_start\')}'})">
                    </div>
                    <div class="col-xs-3"> </div>
                </div>
                <div class="row cl">
                    <label class="form-label col-xs-4">每日基础份额：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_3_amount" value="50" type="n" >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">片段长度：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_3_fragment_length" value="20" type="n" >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">单价影响系数(0-1)：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_3_price_ratio" value="50" type="n" >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">涨跌影响系数(1-100)：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_3_raf_ratio" value="10" type="n" >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">最总花费：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_3_cost" disabled >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">结果：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_3_result" disabled >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <div class="row cl">
                    <label class="form-label col-xs-4">比例：</label>
                    <div class="formControls col-xs-6">
                        <input type="text" class="input-text" id="cal_3_result_percent" disabled >
                    </div>
                    <div class="col-xs-3"> </div>
                </div>

                <input class="btn btn-primary radius" type="button" id="cal_3_button" value="计算" onclick="cal_3_start()">
            </div>

        </div>

        <div class="fundation_show_char text-r" id="show_char"  ></div>
    </div>

</div>

<#include "../../common/script/main-js.ftl"/>

<script type="text/javascript" src="${request.contextPath}/plug-in/h-ui/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${request.contextPath}/plug-in/h-ui/lib/echarts/4/echarts-4.2.1/echarts.js"></script>
<script type="text/javascript" src="${request.contextPath}/plug-in/web/fundation/fundationRecord/paintChart.js"></script>
<script type="text/javascript" src="${request.contextPath}/plug-in/web/fundation/fundationRecord/analysis.js"></script>


</body>



</html>

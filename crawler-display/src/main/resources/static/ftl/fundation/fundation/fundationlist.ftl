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

  </head>
  
  
  <body>
	
  <div class="ui-panel">
  
	
	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="ui-table-actions-right">
		           <div class="ui-btn-group">
					<@m.if_own_auth authCode="skipAddFundation">
		            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="model_add('添加','800','400px')">添加</a>
					</@m.if_own_auth>
		            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
		            <@m.if_own_auth authCode="deleteFundation">
		           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
					</@m.if_own_auth>
		          </div>
	          </div>
	          
	          
	     	<div class="ui-table-actions-left">
	     	    <label>基金名称：</label>
	            <input style="width:220px" name="search" type="text" class="ui-input size-s" placeholder="基金名称" id="fundationName">
	            <label>基金编号：</label>
	            <input style="width:180px" name="search" type="text" class="ui-input size-s" placeholder="基金编号" id="fundationCode">
	             <button type="button" class="ui-btn size-s"  onclick="goSearch()">查 询</button>
	          </div>
	         
	        </div>
	        
	        <table id="fundation_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>
	        </table>
	        
	      </div>

	</div>
	
  		<#include "../../common/script/main-js.ftl"/>

  		<@m.ajs_button operCode="startFundationCrawl"  funMethod="fundation_crawl('爬取数据','{0}','400','')" context="爬取数据" varName="crawl_fundation" />
  		<@m.ajs_button operCode="checkFundation"  funMethod="fundation_check('查看分析数据','{0}','400','')" context="查看分析数据" varName="check_fundation" />
		<@m.ajs_button operCode="getFundationDetail"  funMethod="fundation_edit('编辑','{0}','400','')" context="编辑" varName="edit_fundation" />
		<@m.ajs_button operCode="deleteFundation"  funMethod="fundation_del(this,'{0}')" context="删除" varName="del_fundation" />

  		<script type="text/javascript" src="${request.contextPath}/plug-in/web/fundation/fundation/fundation-list.js"></script>
		
		
</body>
  
  
  
</html>

<%@ page language="java" pageEncoding="utf-8"%>

	<div class="ui-form-item">
		<label class="ui-form-label"><em>*</em>所属单位：</label>
		<div class="ui-input-block">
			<input type="text" datatype="*" nullmsg="请选择单位" class="ui-input" placeholder="请选择单位" value="${model.unitName}" onclick="checkTree(this,{url:'<%=path %>/unitController/skipUnitTree.do',title:'请选择单位',w:300,h:'85%',limit:1},'#unitId')">
	        <input type="hidden" name="unitId" id="unitId" value="${model.unitId}">
		</div>
      </div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>部门编号：</label>
	  <div class="ui-input-block">    
	     <input type="text" class="ui-input"  id="" name="departNo" value="${model.departNo}" datatype="*" nullmsg="请填写部门编号" placeholder="请填写部门编号">
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>部门名称：</label>
	  <div class="ui-input-block">    
	     <input type="text" class="ui-input"  id="" name="departName" value="${model.departName}" datatype="*" nullmsg="请填写部门名称" placeholder="请填写部门名称">
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label">备注：</label>
	  <div class="ui-input-block">    
	    <textarea name="note"  cols="" rows="5" class="ui-textarea"   datatype="*" ignore="ignore" onKeyUp="textarealength(this,255)" placeholder="请填写备注">${model.note}</textarea>
	  </div>	 
	</div>
	

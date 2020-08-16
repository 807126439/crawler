<%@ page language="java" pageEncoding="utf-8"%>


 <div class="ui-form-item">
   <label class="ui-form-label">序号：</label>
   <div class="ui-input-block">
     <input type="text" class="ui-input" name="sortNo"  value="${model.sortNo}" ignore="ignore"  datatype="n"  placeholder="请输入序号">
   </div>
 </div>

 <div class="ui-form-item">
   <label class="ui-form-label"><em>*</em>单位名称：</label>
   <div class="ui-input-block">
     <input type="text" class="ui-input" name="unitName"  value="${model.unitName}"  datatype="*" nullmsg="单位名称不能为空" placeholder="请输入单位名称">
   </div>
 </div>
 

 <%-- <div class="ui-form-item">
   <label class="ui-form-label length-ll"><em>*</em>单位类型：</label>
   <div class="ui-input-block ">   
     <select class="ui-select" id="unitType" name="unitType" datatype="*" nullmsg="请选择单位类型">
		<c:forEach items="${unitTypeList}" var="ty"  varStatus="vs" >
			  <option value="${ty.dictValue}" ${ty.dictValue == model.unitType?'selected="selected"':'' } >${ty.dictItem}</option>
		</c:forEach>
     </select> 
   </div>
 </div> --%>
 
<%--  <div class="ui-form-item" id="organizationCodeDiv">
   <label class="ui-form-label length-ll"><em>*</em>承包商类型：</label>
   <div class="ui-input-block ">     
      <select class="ui-select" id="contractorTypeCode" name="contractorTypeCode">
		<c:forEach items="${contractorTypeList}" var="ty"  varStatus="vs" >
			  <option value="${ty.typeCode}" ${ty.typeCode == model.contractorTypeCode?'selected="selected"':'' } >${ty.typeName}</option>
		</c:forEach>
     </select> 
   </div>
 </div>
  --%>
    
 
 
 <div class="ui-form-item">
   <label class="ui-form-label"><em>*</em>组织机构代码：</label>
   <div class="ui-input-block ">   
        <input type="text" class="ui-input" id="organizationCode" name="organizationCode"  value="${model.organizationCode}"  placeholder="请输入承包商类型代码">
   </div>
 </div>

 
 
 <div class="ui-form-item">
   <label class="ui-form-label">联系人：</label>
   <div class="ui-input-block">
     <input type="text" class="ui-input" name="linkMan" value="${model.linkMan}" datatype="*1-50" ignore="ignore" nullmsg="联系人不能为空" placeholder="请输入联系人">
   </div>
 </div>
 
   <div class="ui-form-item">
   <label class="ui-form-label"> 联系电话：</label>
   <div class="ui-input-block">
     <input type="text" class="ui-input" name="linkTel" value="${model.linkTel}" datatype="m" ignore="ignore" nullmsg="联系电话不能为空" placeholder="请输入联系电话">
   </div>
 </div>
 
 
   <div class="ui-form-item">
   <label class="ui-form-label"> 备注：</label>
   <div class="ui-input-block">
     <textarea rows="5" type="text" class="ui-textarea" name="note" datatype="*" ignore="ignore" nullmsg="备注不能为空" placeholder="请输入备注">${model.note}</textarea>
   </div>
 </div>
 
 

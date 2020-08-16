<%@ page language="java" pageEncoding="utf-8"%>

 <tr class="odd">
    <td width="130">机构名称</td>
    <td>
    	<c:choose>
		    <c:when test="${isView eq true}">
		    	${userItem.unit}
		    </c:when>
		    <c:otherwise>
		      <input type="text" class="input-text"  id="unit" name="unit"  datatype="*2-100" nullmsg="请输入机构名称！" value="${userItem.unit}" >
		    </c:otherwise> 
	  	</c:choose> 
    
    </td>
    <td width="130">机构性质</td>
    <td>
    	<c:choose>
		    <c:when test="${isView eq true}">
		    	${userItem.unitNature}
		    </c:when>
		    <c:otherwise>
		       <input type="text" class="input-text" id="unitNature" name="unitNature" datatype="*1-50" nullmsg="请输入单位性质！" value="${userItem.unitNature}">
		    </c:otherwise> 
	  	</c:choose> 
    </td>
  </tr>
  <tr class="even">
    <td>经营范围</td>
    <td colspan="3">
    	<c:choose>
		    <c:when test="${isView eq true}">
		    	${userItem.runRange}
		    </c:when>
		    <c:otherwise>
		     	 <textarea class="textarea" name="runRange"  datatype="*1-1000" nullmsg="请输入经营范围！" >${userItem.runRange}</textarea>
		    </c:otherwise> 
	  	</c:choose> 
    
    </td>
  </tr>
  <tr class="odd">
    <td>工商登记机构名称</td>
    <td>
    	<c:choose>
		    <c:when test="${isView eq true}">
		    	${userItem.gsdjjgName}
		    </c:when>
		    <c:otherwise>
		     	<input type="text" class="input-text" id="gsdjjgName" name="gsdjjgName" datatype="*1-100" nullmsg="请输入工商登记机构名称！" value="${userItem.gsdjjgName}">
		    </c:otherwise> 
	  	</c:choose> 
    
    </td>
    <td>法人代表</td>
    <td>
    	<c:choose>
		    <c:when test="${isView eq true}">
		    	${userItem.legalPerson}
		    </c:when>
		    <c:otherwise>
		     	<input type="text" class="input-text" id="legalPerson" name="legalPerson" datatype="*1-50" nullmsg="请输入法人代表！" value="${userItem.legalPerson}">
	  		</c:otherwise>
	  	</c:choose> 
    
    </td>
  </tr>
  <tr class="even">
    <td>联系人</td>
    <td>
    	 <c:choose>
		    <c:when test="${isView eq true}">
		    	${userItem.linkPerson}		    	
		    </c:when>
		    <c:otherwise>
		     <input type="text" class="input-text" id="linkPerson" name="linkPerson" datatype="*1-50" nullmsg="请输入联系人！" value="${userItem.linkPerson}">
		    </c:otherwise> 
	  	</c:choose>
    </td>
    <td>联系电话</td>
    <td>
    	 <c:choose>
		    <c:when test="${isView eq true}">
		    	${userItem.phone}		    	
		    </c:when>
		    <c:otherwise>
		      <input type="text" class="input-text" id="phone" name="phone" datatype="m" nullmsg="请输入联系电话！" value="${userItem.phone}">
		    </c:otherwise> 
	  	</c:choose>
    
    </td>
  </tr>
    <tr class="odd">
    <td>办公地址</td>
    <td colspan="3">
    	 <c:choose>
		    <c:when test="${isView eq true}">
		    	${userItem.linkAddress}	    	
		    </c:when>
		    <c:otherwise>
		      <input type="text" class="input-text" id="linkAddress" name="linkAddress" datatype="*1-100" nullmsg="请输入办公地址！" value="${userItem.linkAddress}">
		    </c:otherwise> 
	  	</c:choose>
    </td>
  </tr>
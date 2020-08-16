<%@ page language="java" pageEncoding="utf-8"%>

 <tr class="odd">
    <td width="130">申请人</td>
    <td>  
	    <c:choose>
		    <c:when test="${isView eq true}">
		    	 ${userItem.chineseName}
		    </c:when>
		    <c:otherwise>
		        <input  type="text" class="input-text" id="ChineseName" name="chineseName"  datatype="/^[\u4e00-\u9fa5\.\u00B7]{1,20}$/" 
				      nullmsg="请输入中文姓名！"errormsg="请输入正确的中文名称！" value="${userItem.chineseName}" >
		    </c:otherwise> 
	  	</c:choose> 
    </td>
    <td width="130">所属单位</td>
    <td>
    	 <c:choose>
		    <c:when test="${isView eq true}">
		    	 ${userItem.unit}
		    </c:when>
		    <c:otherwise>
		        <input type="text" class="input-text" id="unit" name="unit" datatype="*1-100" nullmsg="请输入所属单位名称！" value="${userItem.unit}">
		    </c:otherwise> 
	  	</c:choose> 
    
    </td>
  </tr>
  <tr class="even">
    <td>联系电话</td>
    <td>
    	 <c:choose>
		    <c:when test="${isView eq true}">
		    	 ${userItem.phone}
		    </c:when>
		    <c:otherwise>
		        <input type="text" class="input-text" id="tel" name="phone"  datatype="m" nullmsg="请输入联系电话！" value="${userItem.phone}">
		    </c:otherwise> 
	  	</c:choose> 
    </td>
    <td>联系邮箱</td>
    <td>
    	 <c:choose>
		    <c:when test="${isView eq true}">
		    	 ${userItem.email}
		    </c:when>
		    <c:otherwise>
		       <input type="text" class="input-text" id="email" name="email"  datatype="e" nullmsg="请输入电子邮箱！" value="${userItem.email}">
		    </c:otherwise> 
	  	</c:choose> 
    
    </td>
  </tr>
   <tr class="odd">
    <td>联系地址</td>
    <td colspan="3">
    	 <c:choose>
		    <c:when test="${isView eq true}">
		    	 ${userItem.linkAddress}
		    </c:when>
		    <c:otherwise>
		       <input type="text" class="input-text" id="adress" name="linkAddress" datatype="*1-100" nullmsg="请输入联系地址！" value="${userItem.linkAddress}" >
		    </c:otherwise> 
	  	</c:choose> 
    </td>
  </tr>
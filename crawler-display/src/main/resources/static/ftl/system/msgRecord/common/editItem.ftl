
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>sort：</label>
	  <div class="ui-input-block">    
	     <input type="text" class="ui-input"  id="" name="sort" value="${(model.sort)!}" datatype="*1-18" nullmsg="sort不能为空">
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>content：</label>
	  <div class="ui-input-block">    
	    <textarea name="content"  cols="" rows="" class="ui-textarea"   datatype="*1-2,000" ignore="ignore" onKeyUp="textarealength(this,2,000)">${(model.content)!}</textarea>
		<p class="textarea-numberbar"><em class="textarea-length">0</em>/2,000</p>
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>receiver：</label>
	  <div class="ui-input-block">    
	    <textarea name="receiver"  cols="" rows="" class="ui-textarea"   datatype="*1-2,000" ignore="ignore" onKeyUp="textarealength(this,2,000)">${(model.receiver)!}</textarea>
		<p class="textarea-numberbar"><em class="textarea-length">0</em>/2,000</p>
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>sendUserId：</label>
	  <div class="ui-input-block">    
	     <input type="text" class="ui-input"  id="" name="sendUserId" value="${(model.sendUserId)!}" datatype="*1-32" nullmsg="sendUserId不能为空">
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>sender：</label>
	  <div class="ui-input-block">    
	     <input type="text" class="ui-input"  id="" name="sender" value="${(model.sender)!}" datatype="*1-50" nullmsg="sender不能为空">
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>status：</label>
	  <div class="ui-input-block">    
	     <input type="text" class="ui-input"  id="" name="status" value="${(model.status)!}" datatype="*1-3" nullmsg="status不能为空">
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>type：</label>
	  <div class="ui-input-block">    
	     <input type="text" class="ui-input"  id="" name="type" value="${(model.type)!}" datatype="*1-3" nullmsg="type不能为空">
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>resultNote：</label>
	  <div class="ui-input-block">    
	    <textarea name="resultNote"  cols="" rows="" class="ui-textarea"   datatype="*1-500" ignore="ignore" onKeyUp="textarealength(this,500)">${(model.resultNote)!}</textarea>
		<p class="textarea-numberbar"><em class="textarea-length">0</em>/500</p>
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>gmtCreate：</label>
	  <div class="ui-input-block">    
	    <input type="text" id="" class="ui-input Wdate"  name="gmtCreate"  value="${(model.gmtCreate)?datetime("yyyy-MM-dd hh:mm:ss")}"
	     onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"  datatype="*"  nullmsg="gmtCreate不能为空"  readonly="readonly" >
	  </div>	 
	</div>
	
	 <div class="ui-form-item">
	  <label class="ui-form-label"><em>*</em>gmtModified：</label>
	  <div class="ui-input-block">    
	    <input type="text" id="" class="ui-input Wdate"  name="gmtModified"  value="${(model.gmtModified)?datetime("yyyy-MM-dd hh:mm:ss")}"
	     onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"  datatype="*"  nullmsg="gmtModified不能为空"  readonly="readonly" >
	  </div>	 
	</div>
	

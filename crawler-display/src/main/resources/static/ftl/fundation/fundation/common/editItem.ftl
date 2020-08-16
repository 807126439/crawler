<div class="row cl">
    <label class="form-label col-xs-3"><span class="c-red">*</span>基金号：</label>
    <div class="formControls col-xs-6">
        <input type="text" class="input-text" name="code" value="${(model.code)!}" datatype="*1-18" nullmsg="编号不能为空">
    </div>
    <div class="col-xs-3"></div>
</div>
<div class="row cl">
    <label class="form-label col-xs-3"><span class="c-red">*</span>基金名称：</label>
    <div class="formControls col-xs-6">
        <input type="text" class="input-text" name="fundationName" value="${(model.fundationName)!}" datatype="*1-18"
               nullmsg="名称不能为空">
    </div>
    <div class="col-xs-3"></div>
</div>

<div class="row cl">
    <div class="col-xs-9 col-xs-offset-3">
        <@m.b_button operCode="addFundation,editFundation" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" />
    </div>
</div>
<#assign basePath=request.contextPath />
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>Edit</title>
    <link href="${basePath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- 添加model -->
<div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title"><strong>编辑</strong></h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    </div>
    <div class="modal-body">
        <form>
            <div class="row">
                <div class="col-md-6">
                    <label class="control-label">类别</label>
                    <input class="form-control form-white" placeholder="类别" type="text" name="flname" />
                </div>
                <div class="col-md-6">
                    <label class="control-label">账户</label>
                    <input class="form-control form-white" placeholder="账户" type="text" name="zhang_hu" />
                </div>
                <div class="col-md-6">
                    <label class="control-label">金额</label>
                    <input class="form-control form-white" placeholder="金额" type="text" name="money" />
                </div>
                <div class="col-md-6">
                    <label class="control-label">说明</label>
                    <input class="form-control form-white" placeholder="说明" type="text" name="description" />
                </div>
                <div class="col-md-6">
                    <label class="control-label">时间</label>
                    <input class="form-control form-white" placeholder="时间" type="text" name="createtime" />
                </div>
            <#--<div class="col-md-6">-->
            <#--<label class="control-label">Choose Category Color</label>-->
            <#--<select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">-->
            <#--<option value="success">Success</option>-->
            <#--<option value="danger">Danger</option>-->
            <#--</select>-->
            <#--</div>-->
            </div>
        </form>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
        <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
    </div>
</div>


</body>
</html>
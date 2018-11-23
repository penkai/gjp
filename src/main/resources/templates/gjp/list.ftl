<!DOCTYPE html>
<html lang="zh">
<#include "../common/header.ftl">
<body>

<div id="main-wrapper">
    <#include "../common/sidebar.ftl">

    <#include "../common/topbar.ftl">

    <!-- 页面主体内容 -->
    <!-- Page wrapper  -->
    <div class="page-wrapper">

        <!-- 页面功能导航 -->
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-5 align-self-center">
                    <h4 class="page-title">管家婆管理</h4>
                    <div class="d-flex align-items-center"></div>
                </div>
                <div class="col-7 align-self-center">
                    <div class="d-flex no-block justify-content-end align-items-center">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">首页</li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    列表
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <!-- 页面主体信息 -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">管理列表</h4>
                            <div>
                            <a href="javascript:void(0)" data-toggle="modal" data-target="#myModal" class="btn btn-sm btn-outline-info">
                                <i class="ti-plus"></i> 添加
                            </a>
                            </div>&nbsp;
                            <div class="table-responsive">
                                <table id="zero_config" class="table table-striped table-bordered">

                                    <thead>
                                    <tr>
                                        <th class="text-center">ID</th>
                                        <th class="text-center">类别</th>
                                        <th class="text-center">账户</th>
                                        <th class="text-center">金额</th>
                                        <th class="text-center">说明</th>
                                        <th class="text-center">创建时间</th>
                                        <th class="text-center">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <#list zhangWuList as zhangWu >
                                        <tr>
                                            <td>${zhangWu.zwId}</td>
                                            <td>${zhangWu.flname}</td>
                                            <td>${zhangWu.zhangHu}</td>
                                            <td>${zhangWu.money}</td>
                                            <td>${zhangWu.description}</td>
                                            <td>${zhangWu.createtime}</td>
                                            <td>
                                                <a class="btn btn-sm btn-outline-info" href="${basePath}/gjp/list/update?zwId=${zhangWu.zwId}">修改</a>
                                                <a class="btn btn-sm btn-outline-danger" href="${basePath}/gjp/list/delete?zwId=${zhangWu.zwId}">删除</a>

                                            </td>
                                        </tr>
                                        </#list>
                                    </tbody>
                                </table>
                                <!-- 分页 -->
                                <ul class="pagination float-right">
                                        <#if zhangWuPage.first>
                                        <li class="page-item disabled">
                                            <a class="page-link" href="${basePath}/gjp/list?page=${zhangWuPage.number}">
                                                上一页
                                            </a>
                                        </li>
                                        <#else>
                                        <li class="page-item">
                                            <a class="page-link" href="${basePath}/gjp/list?page=${zhangWuPage.number}" aria-label="Previous">
                                                上一页
                                            </a>
                                        </li>
                                        </#if>
                                        <#list 1..zhangWuPage.totalPages as index>
                                            <#if zhangWuPage.number == (index - 1)>
                                        <li class="page-item active">
                                            <a class="page-link" href="${basePath}/gjp/list?page=${index}">${index}</a>
                                        </li>
                                            <#else>
                                        <li class="page-item">
                                            <a class="page-link" href="${basePath}/gjp/list?page=${index}">${index}</a>
                                        </li>
                                            </#if>
                                        </#list>
                                        <#if zhangWuPage.last>
                                        <li class="page-item disabled">
                                            <a class="page-link" href="${basePath}/gjp/list?page=${zhangWuPage.number+1}" aria-label="Next">
                                                下一页
                                            </a>
                                        </li>
                                        <#else>
                                        <li class="page-item">
                                            <a class="page-link" href="${basePath}/gjp/list?page=${zhangWuPage.number+2}" aria-label="Next">
                                                下一页
                                            </a>
                                        </li>
                                        </#if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- 添加model -->
<div class="modal fade none-border" id="myModal" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"><strong>编辑</strong></h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="control-label">类别</label>
                            <input class="form-control form-white"  required type="text" name="flname" />
                        </div>
                        <div class="col-md-6">
                            <label class="control-label">账户</label>
                            <input class="form-control form-white"  required type="text" name="zhang_hu" />
                        </div>
                        <div class="col-md-6">
                            <label class="control-label">金额</label>
                            <input class="form-control form-white"  required type="text" name="money" />
                        </div>
                        <div class="col-md-6">
                            <label class="control-label">说明</label>
                            <input class="form-control form-white"  required type="text" name="description" />
                        </div>
                        <div class="col-md-6">
                            <label class="control-label">时间</label>
                            <input class="form-control form-white"  required type="text" name="createtime" />
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
                <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal" href="${basePath}/gjp/list/add">Save</button>
                <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<#include "../common/layout.ftl">

<#include "../common/js.ftl">
</body>
</html>
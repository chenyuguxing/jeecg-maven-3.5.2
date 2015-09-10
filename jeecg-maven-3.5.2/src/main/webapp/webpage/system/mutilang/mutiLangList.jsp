<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools"/>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:1px;">
  <t:datagrid name="mutiLangList" title="lang.maintain" actionUrl="mutiLangController.do?datagrid" 
      idField="id" fit="true" queryMode="group" sortName="createDate" sortOrder="desc">
   <t:dgCol title="common.code" field="id" hidden="true"></t:dgCol>
   <t:dgCol title="common.languagekey" field="langKey" query="true" extend="{style:'width:200px'}"></t:dgCol>
   <t:dgCol title="common.content" field="langContext" query="true" extend="{style:'width:200px'}"></t:dgCol>
   <t:dgCol title="common.language" field="langCode" ></t:dgCol>
   <t:dgCol title="common.createby" field="createBy" hidden="true"></t:dgCol>
	<t:dgCol title="common.createtime" field="createDate" formatter="yyyy-MM-dd" hidden="true"></t:dgCol>
	<t:dgCol title="common.updateby" field="updateBy" hidden="true"></t:dgCol>
	<t:dgCol title="common.updatetime" field="updateDate" formatter="yyyy-MM-dd" hidden="true"></t:dgCol>
   <t:dgCol title="common.operation" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="common.delete" url="mutiLangController.do?del&id={id}" />
   <t:dgToolBar title="common.add.param" langArg="common.language" icon="icon-add" url="mutiLangController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="common.edit.param" langArg="common.language" icon="icon-edit" url="mutiLangController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="common.view" icon="icon-search" url="mutiLangController.do?addorupdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="common.refresh" icon="icon-search" url="mutiLangController.do?refreshCach" funname="doSubmit"></t:dgToolBar>
  </t:datagrid>
 </div>
</div> 
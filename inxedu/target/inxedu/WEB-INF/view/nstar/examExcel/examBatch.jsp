<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试批次信息</title>

<script type="text/javascript">
function importExcel(){
	
	var myFile = $("#myFile").val();
	if(myFile.length <= 0){
	alert("请选择导入内容");
	return false;
	}
	$("#importP").submit();
}
</script>
</head>
<body>


<center><h1>导出功能</h1></center>
<center><form action="/admin/examExcel/exportExamBatch" method="post">
  <input type="submit" value="导出" />
</form></center>
<hr/>
<hr/>
<center><h1>导入功能</h1></center>

<div class="mt20">
    <div class="commonWrap">
		<form action="/admin/examExcel/importExamBatch" method="post" id="importP" enctype="multipart/form-data">
				<table width="100%" cellspacing="0" cellpadding="0" border="0" class="commonTab01">
					<caption>&nbsp;</caption>
					<tbody>
						<tr>
							<td align="center"><font color="red">*</font>&nbsp;信息描述</td>
							<td>excel模版说明：<br>
                                第一列：考试名称,不能为空<br>
                                第二列：考试批次号不能为空<br>
								第三列：考场名称不能为空<br>
                                第四列：考试日期不能为空不能低于当前时间<br>
                                第五列：考试时间段,例如:8:00-9:00<br>
								第六列: 考试课程代码,在考试课程表里一定要存在<br>
								第七列: 状态不能为空
                                （<a href="${ctx }/static/common/import_student/import_exambatch.xls"  style="color: red;">点击下载模版</a>）<br>
							</td>
						</tr>
						<tr>
							<td align="center">导入中出错选择项</td>
							<td>
								<select name="mark">
									<option value="1">跳过</option>
									<option value="2">全部放弃</option>
								</select>
							</td>
						</tr>
						<tr>
							<td align="center">上传</td>
							<td>
								<span class="ml10"><input id="myFile" type="file" value="" name="myFile"/><input type="button" value="提交" class="btn btn-danger"  onclick="importExcel()"/>
								<a href="javascript:history.go(-1);" title="返回" class="btn btn-danger">返回</a>
								</span>
							</td>
						</tr>
					</tbody>
				</table>
				</form>

			</div>
    </div>
</body>
</html>
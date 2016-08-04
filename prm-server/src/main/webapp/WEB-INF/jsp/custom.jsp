<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<%@include file="/WEB-INF/jsp/components/base.jsp"%>

<link href="/css/bootstrap-table.css" rel="stylesheet">
<script src="/js/jquery.form.js"></script>
<script src="/js/bootstrap-table.js"></script>
<script src="/js/bootstrap-table-zh-CN.js"></script>
<style type="text/css">
</style>

<title>PRM</title>
</head>
<body>
	<div>
		<%@include file="/WEB-INF/jsp/components/nav.jsp"%>
		<script type="text/javascript">
			$('#nav_custom').addClass('active');
		</script>
	</div>
	<div class="container-fluid">
	<%@include file="/WEB-INF/jsp/components/custom/custom.jsp"%>
	</div>
</body>
</html>
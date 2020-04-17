<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="UTF-8">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><c:out value="${teacherEntity.title}" />--教师队伍</title>
		<link href="<%=request.getContextPath()%>/css/default.css"
			rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/css/article.css"
			rel="stylesheet" type="text/css" />
	</head>
	<style type="text/css">
		#cd {
			display:flex;
			width: 100%;
		}
		#left {
			width: 49%;
		}
		#right {
			width: 49%;
		}
		.teacherInt {
			 width:420px; 
			 height:300px; 
			 line-height:25px; 
			 overflow:hidden;
		}
		.teahcerInfo {
			margin-top: 30px;
			width: 420px;
		}
		.teacherPhoto {
			float: left;
			height: 160px;
		}
		.teacherUl {
			float: left;
			width:300px;
		}
		img {
			width:  150px;
			height: 160px;
		}
		
	</style>
	<body>
		<div class="wrap">
			<!--头部定义开始-->
			<div id="header" class="main">
				<jsp:include page="/WEB-INF/jsp/pub/header.jsp"></jsp:include>
			</div>
			<!--头部定义结束-->
			<div id="center_all" class="main">
				<div id="main_bg">
					<div id="" style="width: 100%;">
						<div class="">
								<!-- 网站位置导航信息开始 -->
								<div class="r_navigation">
									您现在的位置：
									<a href="<c:url value="/"/>"><f:message key="site_name"/></a>&gt;&gt;
									<a href="<c:url value="/teacher/"/>"><span class="current">在线测试</span></a>&gt;&gt;
									<a href="<c:url value="/teacher/menu.do?id=${teacherEntity.menuEntity.id}"/>"><c:out value="${topicEntity.menuEntity.name}"/></a>
								</div>
								<div id="cd" class="content">
									在线答题内容
								</div>
								<div id="left">
									在线答题内容
								</div>
							</div>		
						</div>
					</div>
				</div>
			</div>
		</div>
			<div class="clearbox"></div>
			<jsp:include page="/WEB-INF/jsp/pub/footer.jsp"></jsp:include>
		</div>
	</body>
</html>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/fckeditor/fckeditor.js"></script>


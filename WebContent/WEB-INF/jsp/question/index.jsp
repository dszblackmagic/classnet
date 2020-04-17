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
								<div class="content">
										<div class="question">
											<div class="questionTitle"><span>1、采用幂次变换进行灰度变换时，当幂次取大于1时，该变换是针对如下哪一类图像进行增强。( )</span></div>
											<div class="questionOption">
												<p><input type="radio" name="radio_1" value="A">A:图像整体偏暗</p>
												<p><input type="radio" name="radio_1" value="B">B:图像整体偏亮</p>
												<p><input type="radio" name="radio_1" value="C">C:图像细节淹没在暗背景中</p>
												<p><input type="radio" name="radio_1" value="D">D:图像同时存在过亮和过暗背景</p>
											</div>
										</div>
										
										<div class="question">
											<div class="questionTitle"><span>2、图像灰度方差说明了图像哪一个属性。( )</span></div>
											<div class="questionOption">
												<p><input type="radio" name="radio_2" value="A">A:平均灰度</p>
												<p><input type="radio" name="radio_2" value="B">B:图像对比度</p>
												<p><input type="radio" name="radio_2" value="C">C:图像整体亮度</p>
												<p><input type="radio" name="radio_2" value="D">D:图像细节</p>
											</div>
										</div>
										
										<div class="question">
											<div class="questionTitle"><span>3、计算机显示器主要采用哪一种彩色模型。( )</span></div>
											<div class="questionOption">
												<p><input type="radio" name="radio_3" value="A">A:RGB</p>
												<p><input type="radio" name="radio_3" value="B">B:CMY或CMYK</p>
												<p><input type="radio" name="radio_3" value="C">C:HSI</p>
												<p><input type="radio" name="radio_3" value="D">D:HSV</p>
											</div>
										</div>
										
										<div class="question">
											<div class="questionTitle"><span>4、采用模板[-11]主要检测 ( A )方向的边缘。( )</span></div>
											<div class="questionOption">
												<p><input type="radio" name="radio_4" value="A">A:水平</p>
												<p><input type="radio" name="radio_4" value="B">B:45°</p>
												<p><input type="radio" name="radio_4" value="C">C:垂直</p>
												<p><input type="radio" name="radio_4" value="D">D:135°</p>
											</div>
										</div>
										
										<div class="question">
											<div class="questionTitle"><span>5、下列算法中属于图象锐化处理的是。( )</span></div>
											<div class="questionOption">
												<p><input type="radio" name="radio_5" value="A">A:低通滤波</p>
												<p><input type="radio" name="radio_5" value="B">B:加权平均法</p>
												<p><input type="radio" name="radio_5" value="C">C:高通滤波</p>
												<p><input type="radio" name="radio_5" value="D">D:中值滤波</p>
											</div>
										</div>
										
										
									
									<button id="submit">提交答案</button>
									</div>
									
								</body>
								
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
	<script>
									
									
									document.getElementById('submit').onclick= function() {
										var source = 0;
										var anwser = ["B","B","A","A","C"];
										var question  = document.getElementsByClassName("questionOption");
										console.dir(question)
										for(var i=0;i<question.length;i++){
											var ps = question[i].children;	
											for(var j=0;j<ps.length;j++) {
												var radioInput = ps[j].children;
												if(radioInput[0].checked == true&& radioInput[0].value == anwser[i]){
													source+=20;
												}
											}
										}
										alert('得分:' + source);
									}
									
								</script>
</html>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/fckeditor/fckeditor.js"></script>


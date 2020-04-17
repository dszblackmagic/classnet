<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="UTF-8">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title><c:out value="${teacherEntity.title}" />-->数字图像课程</title>
		<link href="<%=request.getContextPath()%>/css/default.css"
			rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath()%>/css/article.css"
			rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/thems.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/responsive.css">
	</head>
	
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
									<a href="<c:url value="/teacher/"/>"><span class="current">数字图像课程</span></a>&gt;&gt;
									<a href="<c:url value="/teacher/menu.do?id=${teacherEntity.menuEntity.id}"/>"><c:out value="${topicEntity.menuEntity.name}"/></a>	
								</div>
								
								<div>
<dl class="i_about clearfix">
	<dt><img src="<%=request.getContextPath()%>/images/history.jpg" alt=""/></dt>
    <dd>
    	<div class="i_title">
        	历史沿革
           
        </div>
        <div class="ctn">
        	<p>
        		数字图像处理(Digital Image Processing) 将图像信号转换成数字信号并利用计算机对其进行处理。<br>
				1.起源于20世纪20年代。<br>
				2.数字图像处理作为-一门学科形成于20世纪60年代初期，美国喷气推进实验室(JPL)推动了数字图像处理这门学科的诞生。<br>
				3. 1972年英国EMI公司工程师Housfield发明了用于头颅诊断的X射线计算机断层摄影装置即CT (Computer Tomograph)， 1975 年EMI公司又成功研制出全身用的CT装置,获得了人体各个部位鲜明清晰的断层图像。<br>
				4.从70年代中期开始，随着计算机技术和人工智能、思维科学研究的迅速发展,数字图像处理向更高、更深层次发展，人们已开始研究如何用计算机系统解释图像,实现类似人类视觉系统理解外部世界，其中代表性的成果是70年代末MIT的Marr提出的视觉计算理论。<br>
        	</p>
        </div>
    </dd>
</dl>
</div>
<div class="hui_bg">
	<div class="i_new">
    	<div class="i_title">
        	课程内容         
        </div>
        <div class="i_newm clearfix">
        	<dl class="clearfix">
            	<a href="">
                	<dt><img src="<%=request.getContextPath()%>/images/course.jpg" alt=""/></dt>
                    <dd>
                                                                    数字图象处理是电子信息类专业的一门专业课，主要讲述图象的数字处理技术和基本应用。课程共分八章三大部分，第一部分是数字图象处理基础，包括绪论、图象处理基础和图象变换三章。第二部分介绍图象处理基本方法和技术，包括图象增强、图象恢复和重建、图象压缩编码三章。第三部分讲述数字图象分析的基本原理和技术，包括图象分割和图象描述二章。
                    </dd>
                </a>
            </dl>
            
        </div>
    </div>
</div>
<div class="i_brand" style="text-align: center">
    <div class="i_title" >
        教学计划
        
    </div >
    <ul class="i_brd_m clearfix">
    	<li>
        	<h6>第1章 绪论（2学时）</h6>
            1.1 图象和图象处理 <br>
			1.2 图象技术和图象工程 <br>
			1.3 图象处理系统构成和应用 
        </li>
        <li>
        	<h6>第2章 数字图象处理基础 （4学时）  </h6>
            2.1 图象数字化 <br>
			2.2 数字图象表示形式和特点 <br>
			2.3 人眼的亮度感觉 <br>
			2.4 图象象素间关系 
        </li>
        <li>
        	<h6>第3章 图象变换 （4学时）</h6>
            3.1 概述 <br>
			3.2 离散傅立叶变换和性质 <br>
			3.3 其它可分离图象变换（书3.4） 
        </li>
        <li>
        	<h6>第4章 图象增强 （6学时） </h6>
            4.1 概述 <br>
			4.2 灰度增强 <br>
			4.3 图象平滑 <br>
			4.4 图象锐化 <br>
			4.5 图象的同态增晰 <br>
			4.6 图象的彩色增强 
        </li>
        <li>
        	<h6>第5章 图象恢复 （4学时）</h6>
            5.1 概述 <br>
			5.2 退化模型 <br>
			5.3 无约束复原 <br>
			5.4 有约束恢复 
        </li>
        <li>
        	<h6>第6章 图象压缩编码 （7学时）</h6>
            6.1 概述 <br>
			6.2 基本理论 <br>
			6.3 熵编码方法 <br>
			6.4 预测编码方法 <br>
			6.5 变换编码方法 
        </li>
        <li>
        	<h6>第7章 图象分割 （5学时） </h6>
            7.1 概述 <br>
			7.2 边缘检测法 <br>
			7.3 门限化分割法 <br>
			7.4 区域分割法 
        </li>
        <li>
        	<h6>第8章 图象描述 （6学时）  </h6>
            8.1 概述 <br>
			8.2 目标物边界描述<br> 
			8.3 目标物区域描述 
        </li>
        <li>
        	<h6>第9章 图象分类识别 （2学时） </h6>
            9.1图象的匹配<br>
			9.2 图象的分类<br>
			9.3 图象的识别
        </li>
        <li>
        	<h6>上机实验 （课内 6课时+课外6课时）</h6>
            
        </li>
        
    </ul>
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


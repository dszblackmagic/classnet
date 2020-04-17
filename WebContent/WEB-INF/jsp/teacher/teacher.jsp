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
									<a href="<c:url value="/teacher/"/>"><span class="current">教师队伍</span></a>&gt;&gt;
									<a href="<c:url value="/teacher/menu.do?id=${teacherEntity.menuEntity.id}"/>"><c:out value="${topicEntity.menuEntity.name}"/></a>
								</div>
								<div id="cd" class="content">
								<div id="left">
									<div class="teahcerInfo">
										<div class="teacher">
										<div class="teacherPhoto"><img src="<%=request.getContextPath()%>/images/1.jpg"/></div>
											<div class="teacherUl">
												<ul>
												<li class="teacherName">姓名：许录平</li>
												<li class="teacherSex">性别：男 </li>
												<li class="teacherBirth">出生日期：1961.11</li>
												 <li class="teacherPos">职称 /学位 ：教授 /博士</li>
												<li class="teacherSub">学科专业：信号与信息处理</li>
												<li class="teacherWork">在教学中承担的工作 ：课程总负责 </li>
											</ul>
											</div>
										</div>
										<div class="teacherInt">教师简介:<br>许录平 教授，博士，博士生导师。西安电子科技大学学科带头人，电子工程学院探测制导与控制系主任，中国通信学会通信理论与信号处理委员会委员，中国电子学会高级会员，陕西省信息及网络安全保密专家顾问小组成员。 1987年在西安电子科技大学电路、信号与系统专业获硕士学位，同年留校任教。1997年3月获工学博士学位。 从 1987年留校至今，一直从事计算机应用及信号与信息处理方面的教学及科研工作，负责“系统工程”和“导航、制导与控制”学科点的规划与建设工作。 教学方面，获得省级教学成 果二等奖一项，校级教学成果一、二等奖各一项。负责的“数字图象处理”课程获得了 2005年学校精品课程 。 负责的“微机原理与系统设计”课程获得了 2003年学校首批精品课程 ， 2004年省级 精品课程。 作为 负责人，制定了“探测制导与控制技术”本科专业的教学计划、课程设置和长远规划。 主编教材2本 。 主持了国家自然科学基金、国防预研、国防基金、工程应用等几十项科研项目，其中在雷达探测与目标跟踪、指挥控制与操控显示等方面处于国际先进和国内领先地位，与国内相关厂、所和公司建立了良好的协作关系，并形成了较高的声誉。发表教学研究论文十余篇，学术论文四十余篇，其中进入三大检索二十余篇。目前的研究方向有：自适应信号检测与录取、目标探测跟踪与智能控制、计算机网络应用与安全、基于网络的信息系统设计、智能信息处理与图象分析、指挥控制与操控显示等</div>
									</div>
									
									<div class="teahcerInfo">
										<div class="teacher">
											<div class="teacherPhoto"><img src="<%=request.getContextPath()%>/images/2.jpg"/></div>
											<div class="teacherUl">
												<ul>
												<li class="teacherName">姓名：李 洁 </li>
												<li class="teacherSex">性别： 女 </li>
												<li class="teacherBirth">出生日期：1972.12</li>
												 <li class="teacherPos">职称 /学位 ： 副教授/博士 </li>
												<li class="teacherSub">学科专业：信号与信息处理</li>
												<li class="teacherWork">在教学中承担的工作 ：理论与实践教学  </li>
											</ul>
											</div>
										</div>
										<div class="teacherInt">教师简介:<br>李洁 副教授，博士，承担《线性代数》、《数字图像处理》和《 Matlab程序设计语言》等课程的主讲。参加国家自然科学基金重点项目一项、国家自然科学基金项目一项、陕西省留学归国基金一项、北京大学国家重点实验室基金一项、陕西省自然科学基金项目一项、“九五”国防预研项目一项，2002年完成的“九五”国防预研项目荣获西安电子科技大学科技成果一等奖。1999年在电子工程学院组织的青年教师讲课竞赛中荣获二等奖，2005年荣获一等奖，在学校组织的第四届青年教师讲课竞赛中荣获三等奖，第五届青年教师讲课竞赛中获优胜奖。已在国内外核心期刊和国际会议上发表论文34篇，其中SCI 检索5篇，EI检索16篇，ISTP检索14篇。年终考核为优。 </div>
									</div>
									
									<div class="teahcerInfo">
										<div class="teacher">
											<div class="teacherPhoto"><img src="<%=request.getContextPath()%>/images/3.jpg"/></div>
											<div class="teacherUl">
												<ul>
												<li class="teacherName">姓名：孙景荣</li>
												<li class="teacherSex">性别：女 </li>
												<li class="teacherBirth">出生日期：1975.10</li>
												 <li class="teacherPos">职称 /学位 ：讲师 /硕士</li>
												<li class="teacherSub">学科专业：信号与信息处理</li>
												<li class="teacherWork">在教学中承担的工作 ：理论教学及 CAI课件研制</li>
											</ul>
											</div>
										</div>
										<div class="teacherInt">教师简介:<br>孙景荣  讲师，硕士。承担“数字图象处理”和“ C语言程序设计”的教学工作，参加了国家自然科学基金和横向协作项目3项，发表论文3篇。年终考核为合格。 </div>
									</div>
								</div>
								<div id="right">
									<div class="teahcerInfo">
										<div class="teacher">
											<div class="teacherPhoto"><img src="<%=request.getContextPath()%>/images/4.jpg"/></div>
											<div class="teacherUl">
												<ul>
												<li class="teacherName">姓名：梁继民 </li>
												<li class="teacherSex">性别：男 </li>
												<li class="teacherBirth">出生日期：1971.07</li>
												 <li class="teacherPos">职称 /学位 ：教授 /博士</li>
												<li class="teacherSub">学科专业：电路与系统 </li>
												<li class="teacherWork">在教学中承担的工作 ：双语课主讲 </li>
											</ul>
											</div>
										</div>
										<div class="teacherInt">教师简介:<br>教授，博士。目前承担本科“数字图象处理（双语）”课主讲和研究生“数字视频处理与分析（双语）”课的主讲工作，曾主讲“数字信号处理”、“自动控制技术”、“控制系统 CAD”、“计算机网络实验”等课程。先后获得省级教学成果二等奖（2001）、校教学成果一等奖（2001）、校新实验开发一等奖（2003）各一次，2002年获校“十佳青年教师”称号。目前主持国家自然科学基金、军事装备预研基金、陕西省科技攻关、教育部留学回国科研基金项目各一项，主持完成陕西省自然科学基金项目两项，参加完成国家自然科学基金、国防预研基金和横向研究课题多项，获校科研成果二等奖两项。发表科研论文30余篇，其中SCI检索1篇，EI检索9篇，ISTP检索5篇。年终考核为合格。</div>
									</div>
									
									<div class="teahcerInfo">
										<div class="teacher">
											<div class="teacherPhoto"><img src="<%=request.getContextPath()%>/images/5.jpg"/></div>
											<div class="teacherUl">
												<ul>
												<li class="teacherName">姓名：杨兵</li>
												<li class="teacherSex">性别：男 </li>
												<li class="teacherBirth">出生日期： 1969.02</li>
												 <li class="teacherPos">职称 /学位 ：副教授 /博士</li>
												<li class="teacherSub">学科专业：信号与信息处理</li>
												<li class="teacherWork">在教学中承担的工作 ：理论与实践教学 </li>
											</ul>
											</div>
										</div>
										<div class="teacherInt">教师简介:<br>杨兵 副教授，博士。目前承担本科“数字图象处理”和“线性代数”等课的主讲工作，完成或参加国家自然科学基金、国防预研、军事装备预研基金等项目，发表科研论文 10余篇。年终考核为合格。</div>
									</div>
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


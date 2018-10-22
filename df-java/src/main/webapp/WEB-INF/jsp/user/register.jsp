<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
 <%@ include file="../header.jsp" %>
 <script src="${pageContext.request.contextPath}/static/js/register.js"></script>
 <script>
 $(function(){
	 if ("${error_login}"!=''){
		$('#user_name').next().html("${error_login}");
		$('#user_name').next().show();
		}
 });
 </script>
</head>
<body>
	<div class="register_con">
		<div class="l_con fl">
			<a class="reg_logo"><img src="${pageContext.request.contextPath}/static/images/logo02.png"></a>
			<div class="reg_slogan">足不出户  ·  新鲜每一天</div>
			<div class="reg_banner"></div>
		</div>

		<div class="r_con fr">
			<div class="reg_title clearfix">
				<h1>用户注册</h1>
				<a href="${pageContext.request.contextPath}/user/login">登录</a>
			</div>
			<div class="reg_form clearfix">
				<form action="register_handle" method="POST">
				<ul>
					<li>
						<label>用户名:</label>
						<input type="text" name="uname" id="user_name">
						<span class="error_tip">提示信息</span>
					</li>					
					<li>
						<label>密码:</label>
						<input type="password" name="upwd" id="pwd">
						<span class="error_tip">提示信息</span>
					</li>
					<li>
						<label>确认密码:</label>
						<input type="password" name="cpwd" id="cpwd">
						<span class="error_tip">提示信息</span>
					</li>
					<li>
						<label>邮箱:</label>
						<input type="text" name="uemail" id="email">
						<span class="error_tip">提示信息</span>
					</li>
					<li class="agreement">
						<input type="checkbox" name="allow" id="allow" checked="checked">
						<label>同意”天天生鲜用户使用协议“</label>
						<span class="error_tip2">提示信息</span>
					</li>
					<li class="reg_sub">
						<input type="submit" value="注 册" name="">
					</li>
				</ul>				
				</form>
			</div>

		</div>

	</div>
	 <%@ include file="../footer.jsp" %>
</body>
</html>
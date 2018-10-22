<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
 <%@ include file="../header.jsp" %>
</head>
<body>
 <%@ include file="../bhead.jsp" %>


	<div class="main_con clearfix">
		<div class="left_menu_con clearfix">
			<h3>用户中心</h3>
			<ul>
				<li><a href="user_center_info">· 个人信息</a></li>
				<li><a href="user_center_order">· 全部订单</a></li>
				<li><a href="user_center_site" class="active">· 收货地址</a></li>
			</ul>
		</div>
		<div class="right_content clearfix">
				<h3 class="common_title2">收货地址</h3>
				<div class="site_con">
					<dl>
						<dt>当前地址：</dt>
						<dd>北京市 海淀区 东北旺西路8号中关村软件园 （李思 收） 182****7528</dd>
					</dl>					
				</div>
				<h3 class="common_title2">编辑地址</h3>
				<div class="site_con">
					<form aciton="user_center_site" method="POST">
						<div class="form_group">
							<label>收件人：</label>
							<input type="text" name="ushou">
						</div>
						<div class="form_group form_group2">
							<label>详细地址：</label>
							<textarea class="site_area" name="uaddress"></textarea>
						</div>
						<div class="form_group">
							<label>邮编：</label>
							<input type="text" name="uyoubian">
						</div>
						<div class="form_group">
							<label>手机：</label>
							<input type="text" name="uphone">
						</div>

						<input type="submit" name="" value="提交" class="info_submit">
					</form>
				</div>
		</div>
	</div>
 <%@ include file="../footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<script>
$(function(){
	$(".input_btn").click(function(){
		console.log("/goods/search1_1_"+$('.input_text').val());
		window.location.href="/goods/search1_1_"+$('.input_text').val();
	});	
});

</script>
	<div class="header_con">
		<div class="header">
			<div class="welcome fl">欢迎来到天天生鲜!</div>
			<div class="fr">
			
<c:if test="${not empty sessionScope.id}">
				<div class="login_btn fl">
				欢迎您：<em>${username}</em>
				<span>|</span>
					<a href="quitlogin">退出登录</a>
				</div>
</c:if>
<c:if test="${empty sessionScope.id}">
				<div class="login_btn fl">
					<a href="/user/login">登录</a>
					<span>|</span>
					<a href="/user/register">注册</a>
				</div>
</c:if>
				<div class="user_link fl">
					<span>|</span>
					<a href="/user/info">用户中心</a>
					<span>|</span>
					<a href="/cart">我的购物车</a>
					<span>|</span>
					<a href="/user/order">我的订单</a>
				</div>
			</div>
		</div>		
	</div>

<div class="search_bar clearfix">
		<a href="/goods/index" class="logo fl"><img src="${pageContext.request.contextPath}/static//images/logo.png"></a>
		<c:if test="${page_name== 1}">
		<div class="sub_page_name fl">|&nbsp;&nbsp;&nbsp;&nbsp;用户中心</div>
		<div class="search_con fr">
			<input type="text" class="input_text fl" name="" placeholder="搜索商品" value="">
			<input type="button" class="input_btn fr" name="" value="搜索">
		</div>		
		</c:if>
		<div class="search_con fl">
			<input type="text" class="input_text fl" name="" placeholder="搜索商品" value="">
			<input type="button" class="input_btn fr" name="" value="搜索">
		</div>
		<c:if test="${not empty sessionScope.id}">
		<div class="guest_cart fr">
			<a href="/cart" class="cart_name fl">我的购物车</a>
			<div class="goods_count fl" id="show_count">0</div>
		</div>
		</c:if>
	</div>
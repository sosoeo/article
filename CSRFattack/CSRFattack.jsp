<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<h1>CSRF攻击介绍</h1>


<h3>安全问题起因</h3>
用户登录到A网站后未退出之前，打开了一个链接，该链接会自动带着用户的sessionId和cookie，以及Session里可能的token去访问
网站A。而对于网站A来说，这个带着全部有效用户信息的访问完全合法。CSRF攻击的条件：
1. 登录受信站点A
2. 不登出A的情况下，访问网站B
3. 点击或触发网站B或者仅仅是一个带有链接的图片上的访问A的链接

<h3>关键点</h3>
- 危险链接所在位置（网站，图片）都不是A网站本身，而位于A网站之外。（引出Referer字段验证方案）
- 黑客无法偷走cookie，也不能查看cookie的内容，对于链接发出后获取的服务器响应，该链接也无法带走和查看。
- 故增删改需要防范CSRF攻击，而读取不需要。（只防护post请求）

<h3>防御策略</h3>
- 1. 验证Referer字段，过滤不是从本站页面发出的请求（有些请求没有该字段，该字段也可以伪造）
- 2. 参考：www.ibm.com/developerWorks/  CSRF攻击的应对之道

2017.12.27


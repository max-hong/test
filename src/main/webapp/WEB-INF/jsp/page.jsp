<%@page contentType="text/html; charset=UTF-8" language="java" %>
<!-- 引入jstl -->
<%@include file="common/tag.jsp" %>
<%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Please check your billing address !</title>
	<link rel="stylesheet" href="/resources/css/textPay.css">
</head>
<body>
	<div class="head">
		<div class="head-box">
			<div class="fl">
				<img src="/resources/images/visa.png" alt="" class="mt10 img1">
				<img src="/resources/images/master.png" alt="" class="mt10">
				<img src="/resources/images/jcb.png" alt="" class="mt10">
				<img src="/resources/images/AE.png" alt="" class="mt10">
			</div>
		</div>
	</div>
	<div class="content clearfix">
		<div class="content-left fl">
			<div class="mt30">
				<table class="ml30 left-logo">
					<tbody>
						<tr>
							<td width="50%">
								<img src="/resources/images/003.png" alt="" height="30px">
							</td>
							<td width="50%">
								<img src="/resources/images/004.png" alt="" height="30px">
							</td>
						</tr>
						<tr>
							<td width="50%">
								<img src="/resources/images/005.png" alt="" height="30px">
							</td>
							<td width="50%">
								<img src="/resources/images/001.png" alt="" height="30px">
							</td>
						</tr>
						<tr>
							<td width="50%">
								<img src="/resources/images/006.png" alt="" height="30px">
							</td>
							<td width="50%">
								<img src="/resources/images/002.png" alt="" height="30px">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="content-right fr">
			<form id="payForm" action="<%=path %>/topay" method="post" onsubmit="return verify()">
				<div class="content-title">
					<div class="title1"><!-- Basic Information -->Basic Information</div>
				</div>
				<table class="mt10 mb10" width="100%">
					<tbody>
						<%-- <tr>
							<td class="tdlab"><span class="red12">*</span> 支付结果 <!-- Billing Address --></td>
							<td colspan="2"><input type="text" name="respCode" value="${result.respCode }" required maxlength="150"></td>
							<td colspan="2"><input type="text" name="respMsg" value="${result.respMsg }" required maxlength="150"></td>
						</tr> --%>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Payment Amount <!-- Billing Address --></td>
							<td colspan="2"><input type="text" name="amount" value="" class="required" required maxlength="150"></td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Currency<!-- Billing City --></td>
							<td colspan="2"><input type="text" name="currency" value="" class="required" required  maxlength="50"></td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Order NO.<!-- Phone --></td>
							<td colspan="2"><input type="text" name="orderNo" value="" required class="required" maxlength="50"></td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Website<!-- Email --></td>
							<td colspan="2"><input type="text" name="website" value="" required class="required" maxlength="50"></td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Email<!-- Email --></td>
							<td colspan="2"><input type="email" name="grEmail" value="" required class="required" maxlength="50"></td>
						</tr>
					</tbody>
				</table>
				<div class="btn">
					<input id="Payment" type="submit" name="" value="Payment">
				</div>
			</form>
		</div>
	</div>
	<div style="border-top:solid 1px #c9c9c9;height:80px">
		<p style="margin-top:20px;text-align:center">Copyright © 2018-2020 All Rights Reserved</p>
	</div>
</body>
 	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/resources/script/testPay.js" type="text/javascript"></script>
</html>
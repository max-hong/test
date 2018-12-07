<%@page contentType="text/html; charset=UTF-8" language="java"%>
<!-- 引入jstl -->
<%@include file="../common/tag.jsp"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>3-D Secure Example</title>
</head>
Payvision Ref PVES PV2 PPTI v1.4 Page 63
<script type="text/javascript">
	function OnLoadEvent() {
		// Make the form post as soon as it has been loaded.
		document.theForm.submit();
	}
</script>
<body onload="OnLoadEvent();">
	<p>If your browser does not start loading the page, press the
		button below. You will be sent back to this site after you authorize
		the transaction.</p>
	<form name="TestForm" method="post"
		action="http://www.ACSUrlObtained.com">
		<button type=submit>Click Here</button>
		<input type="hidden" name="PaReq" value="PaymentAuthenticationRequest" />
		<input type="hidden" name="TermUrl" value="Your URL" />
		<input type ="hidden" name="MD" value="Your data" />
	</form>
</body>
</html>

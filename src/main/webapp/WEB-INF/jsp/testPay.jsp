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
			<div class="content-title">
				<div class="title1"><!-- Payment information -->Payment Information</div>
			</div>
			<table width="100%" class="mt5">
				<tbody>
					<tr>
						<td>Payment Amount :<!-- Payment amount -->
							<span class="order">${paymentInfo.amount} ${paymentInfo.currency} </span>
						</td>
					</tr>
					<tr>
						<td>Order NO. :<!-- Order No. -->
							<span class="order">${paymentInfo.orderNo}</span>
						</td>
					</tr>
					<tr>
						<td>Website<!-- Website: -->
							<span class="order">${paymentInfo.website}</span>
						</td>
					</tr>
				</tbody>
			</table>
			<p class="left-p">Please confirm your order information. Once the payment is proceeded, we will send an email to you , your email is ${paymentInfo.grEmail}.</p>
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
			<form id="payForm" action="<%=path %>/payment" method="post" onsubmit="return verify()">
				<div class="content-title">
					<div class="title1"><!-- Basic Information -->Basic Information</div>
				</div>
				<table class="mt10 mb10" width="100%">
					<tbody>
						<tr>
							<td class="tdlab">
								<span class="red12">*</span> Card Number<!-- Card Number: -->
							</td>
							<td colspan="2">
								<input id="cardNumber" class="autotab number required" type="text" value="${paymentInfo.cardNumber}" required pattern="[0-9]{15,16}" title="【15-16位数字】" maxlength="16">
							</td>
						</tr>
						<tr>
							<td class="tdlab" width="130px" nowrap="nowrap"><span class="red12">*</span> Expiration Date<!-- Card Expiry Date --></td>
							<td nowrap="nowrap">
								<select id="expMonth" name="expMonth" class="language-sel">
									<option value="">Month</option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
								<select id="expYear" name="expYear" class="language-sel">
									<option value="">Year</option>
									<option value="2018">2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
									<option value="2021">2021</option>
									<option value="2022">2022</option>
									<option value="2023">2023</option>
									<option value="2024">2024</option>
									<option value="2025">2025</option>
									<option value="2026">2026</option>
									<option value="2027">2027</option>
									<option value="2028">2028</option>
									<option value="2029">2029</option>
									<option value="2030">2030</option>
									<option value="2031">2031</option>
									<option value="2032">2032</option>
									<option value="2033">2033</option>
									<option value="2034">2034</option>
									<option value="2035">2035</option>
									<option value="2036">2036</option>
									<option value="2037">2037</option>
									<option value="2038">2038</option>
									<option value="2039">2039</option>
									<option value="2040">2040</option>
									<option value="2041">2041</option>
									<option value="2042">2042</option>
									<option value="2043">2043</option>
									<option value="2044">2044</option>
									<option value="2045">2045</option>
								</select>
								<span class="cvv"><span class="red12">*</span> C V V<!-- CVV --> <input id="cvv" type="password" required pattern="[0-9]{3,4}" title="【3-4位数字】" name="cvv" maxlength="4" class="required number"></span>
							</td>
							<td align="left" width="100%">
								<img src="/resources/images/cvv.png" style="height:28px;cursor:pointer;">
							</td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> First Name<!-- First Name --></td>
							<td colspan="2"><input type="text" name="firstName" value="${paymentInfo.firstName }" class="required" required  title="" size="24" maxlength="50"></td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Last Name<!-- Last Name --></td>
							<td colspan="2"><input type="text" name="lastName" value="${paymentInfo.lastName }" class="required" required  size="24" maxlength="50"></td>
						</tr>
						<tr>
							<td colspan="3" style="padding:0px">
								<div class="content-title">
									<div class="title1">Please check your billing address !<!-- Please check your billing address ! --></div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Billing Address<!-- Billing Address --></td>
							<td colspan="2"><input type="text" name="cardAddress" value="${paymentInfo.cardAddress }" class="required" required maxlength="150"></td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Billing City<!-- Billing City --></td>
							<td colspan="2"><input type="text" name="cardCity" value="${paymentInfo.cardCity }" class="required" required  maxlength="50"></td>
						</tr>
						<tr>
							<td class="tdlab">Billing State<!-- Billing State --></td>
							<td colspan="2"><input type="text" name="cardState" value="${paymentInfo.cardState }" maxlength="50"></td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Billing Country<!-- Billing Country --></td>
							<td colspan="2">
								<select id="cardCountry" name="cardCountry" class="language-sel" style="width: 250px;color: #000;font-style: normal;">
									<option value="${paymentInfo.cardCountry }">-- ${(not empty paymentInfo.cardCountry)?paymentInfo.cardCountry:'Country'} --</option>
									<option value="AF">AFGHANISTAN</option>
									<option value="AX">ALAND ISLANDS</option>
									<option value="AL">ALBANIA</option>
									<option value="DZ">ALGERIA</option>
									<option value="AS">AMERICAN SAMOA</option>
									<option value="AD">ANDORRA</option>
									<option value="AO">ANGOLA</option>
									<option value="AI">ANGUILLA</option>
									<option value="AQ">ANTARCTICA</option>
									<option value="AG">ANTIGUA AND BARBUDA</option>
									<option value="AR">ARGENTINA</option>
									<option value="AM">ARMENIA</option>
									<option value="AW">ARUBA</option>
									<option value="AU">AUSTRALIA</option>
									<option value="AT">AUSTRIA</option>
									<option value="AZ">AZERBAIJAN</option>
									<option value="BS">BAHAMAS</option>
									<option value="BH">BAHRAIN</option>
									<option value="BD">BANGLADESH</option>
									<option value="BB">BARBADOS</option>
									<option value="BY">BELARUS</option>
									<option value="BE">BELGIUM</option>
									<option value="BZ">BELIZE</option>
									<option value="BJ">BENIN</option>
									<option value="BM">BERMUDA</option>
									<option value="BT">BHUTAN</option>
									<option value="BO">BOLIVIA</option>
									<option value="BA">BOSNIA AND HERZEGOVINA</option>
									<option value="BW">BOTSWANA</option>
									<option value="BV">BOUVET ISLAND</option>
									<option value="BR">BRAZIL</option>
									<option value="BN">BRUNEI DARUSSALAM</option>
									<option value="BG">BULGARIA</option>
									<option value="BF">BURKINA FASO</option>
									<option value="BI">BURUNDI</option>
									<option value="IO">BRITISH INDIAN OCEAN TERRITORY</option>
									<option value="KH">CAMBODIA</option>
									<option value="CM">CAMEROON</option>
									<option value="CA">CANADA</option>
									<option value="CV">CAPE VERDE</option>
									<option value="KY">CAYMAN ISLANDS</option>
									<option value="CF">CENTRAL AFRICAN REPUBLIC</option>
									<option value="TD">CHAD</option>
									<option value="CL">CHILE</option>
									<option value="CN">CHINA</option>
									<option value="CX">CHRISTMAS ISLAND</option>
									<option value="CC">COCOS (KEELING) ISLANDS</option>
									<option value="CO">COLOMBIA</option>
									<option value="KM">COMOROS</option>
									<option value="CG">CONGO</option>
									<option value="CD">CONGO, THE DEMOCRATIC REPUBLIC OF THE</option>
									<option value="CK">COOK ISLANDS</option>
									<option value="CR">COSTA RICA</option>
									<option value="CI">COTE D'IVOIRE</option>
									<option value="HR">CROATIA</option>
									<option value="CU">CUBA</option>
									<option value="CY">CYPRUS</option>
									<option value="CZ">CZECH REPUBLIC</option>
									<option value="DK">DENMARK</option>
									<option value="DJ">DJIBOUTI</option>
									<option value="DM">DOMINICA</option>
									<option value="DO">DOMINICAN REPUBLIC</option>
									<option value="EC">ECUADOR</option>
									<option value="EG">EGYPT</option>
									<option value="SV">EL SALVADOR</option>
									<option value="GQ">EQUATORIAL GUINEA</option>
									<option value="ER">ERITREA</option>
									<option value="EE">ESTONIA</option>
									<option value="ET">ETHIOPIA</option>
									<option value="FK">FALKLAND ISLANDS (MALVINAS)</option>
									<option value="FO">FAROE ISLANDS</option>
									<option value="FJ">FIJI</option>
									<option value="FI">FINLAND</option>
									<option value="FR">FRANCE</option>
									<option value="GF">FRENCH GUIANA</option>
									<option value="PF">FRENCH POLYNESIA</option>
									<option value="TF">FRENCH SOUTHERN TERRITORIES</option>
									<option value="GA">GABON</option>
									<option value="GM">GAMBIA</option>
									<option value="GE">GEORGIA</option>
									<option value="DE">GERMANY</option>
									<option value="GH">GHANA</option>
									<option value="GI">GIBRALTAR</option>
									<option value="GR">GREECE</option>
									<option value="GL">GREENLAND</option>
									<option value="GD">GRENADA</option>
									<option value="GP">GUADELOUPE</option>
									<option value="GU">GUAM</option>
									<option value="GT">GUATEMALA</option>
									<option value="GG">GUERNSEY</option>
									<option value="GN">GUINEA</option>
									<option value="GW">GUINEA-BISSAU</option>
									<option value="GY">GUYANA</option>
									<option value="HT">HAITI</option>
									<option value="HM">HEARD ISLAND AND MCDONALD ISLANDS</option>
									<option value="VA">HOLY SEE (VATICAN CITY STATE)</option>
									<option value="HN">HONDURAS</option>
									<option value="HK">HONG KONG</option>
									<option value="HU">HUNGARY</option>
									<option value="IS">ICELAND</option>
									<option value="IN">INDIA</option>
									<option value="ID">INDONESIA</option>
									<option value="IR">IRAN, ISLAMIC REPUBLIC OF</option>
									<option value="IQ">IRAQ</option>
									<option value="IE">IRELAND</option>
									<option value="IM">ISLE OF MAN</option>
									<option value="IL">ISRAEL</option>
									<option value="IT">ITALY</option>
									<option value="JM">JAMAICA</option>
									<option value="JP">JAPAN</option>
									<option value="JE">JERSEY</option>
									<option value="JO">JORDAN</option>
									<option value="KZ">KAZAKHSTAN</option>
									<option value="KE">KENYA</option>
									<option value="KI">KIRIBATI</option>
									<option value="KP">KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF</option>
									<option value="KR">KOREA, REPUBLIC OF</option>
									<option value="KW">KUWAIT</option>
									<option value="KG">KYRGYZSTAN</option>
									<option value="LA">LAO PEOPLE'S DEMOCRATIC REPUBLIC</option>
									<option value="LV">LATVIA</option>
									<option value="LB">LEBANON</option>
									<option value="LS">LESOTHO</option>
									<option value="LR">LIBERIA</option>
									<option value="LY">LIBYAN ARAB JAMAHIRIYA</option>
									<option value="LI">LIECHTENSTEIN</option>
									<option value="LT">LITHUANIA</option>
									<option value="LU">LUXEMBOURG</option>
									<option value="MO">MACAO</option>
									<option value="MK">MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF</option>
									<option value="MG">MADAGASCAR</option>
									<option value="MW">MALAWI</option>
									<option value="MY">MALAYSIA</option>
									<option value="MV">MALDIVES</option>
									<option value="ML">MALI</option>
									<option value="MT">MALTA</option>
									<option value="MH">MARSHALL ISLANDS</option>
									<option value="MQ">MARTINIQUE</option>
									<option value="MR">MAURITANIA</option>
									<option value="MU">MAURITIUS</option>
									<option value="YT">MAYOTTE</option>
									<option value="MX">MEXICO</option>
									<option value="FM">MICRONESIA, FEDERATED STATES OF</option>
									<option value="MD">MOLDOVA, REPUBLIC OF</option>
									<option value="MC">MONACO</option>
									<option value="MN">MONGOLIA</option>
									<option value="ME">MONTENEGRO</option>
									<option value="MS">MONTSERRAT</option>
									<option value="MA">MOROCCO</option>
									<option value="MZ">MOZAMBIQUE</option>
									<option value="MM">MYANMAR</option>
									<option value="NA">NAMIBIA</option>
									<option value="NR">NAURU</option>
									<option value="NP">NEPAL</option>
									<option value="NL">NETHERLANDS</option>
									<option value="AN">NETHERLANDS ANTILLES</option>
									<option value="NC">NEW CALEDONIA</option>
									<option value="NZ">NEW ZEALAND</option>
									<option value="NI">NICARAGUA</option>
									<option value="NE">NIGER</option>
									<option value="NG">NIGERIA</option>
									<option value="NU">NIUE</option>
									<option value="NF">NORFOLK ISLAND</option>
									<option value="MP">NORTHERN MARIANA ISLANDS</option>
									<option value="NO">NORWAY</option>
									<option value="OM">OMAN</option>
									<option value="PK">PAKISTAN</option>
									<option value="PW">PALAU</option>
									<option value="PS">PALESTINIAN TERRITORY, OCCUPIED</option>
									<option value="PA">PANAMA</option>
									<option value="PG">PAPUA NEW GUINEA</option>
									<option value="PY">PARAGUAY</option>
									<option value="PE">PERU</option>
									<option value="PH">PHILIPPINES</option>
									<option value="PN">PITCAIRN</option>
									<option value="PL">POLAND</option>
									<option value="PT">PORTUGAL</option>
									<option value="PR">PUERTO RICO</option>
									<option value="QA">QATAR</option>
									<option value="RE">REUNION</option>
									<option value="RO">ROMANIA</option>
									<option value="RU">RUSSIAN FEDERATION</option>
									<option value="RW">RWANDA</option>
									<option value="SH">SAINT HELENA</option>
									<option value="KN">SAINT KITTS AND NEVIS</option>
									<option value="LC">SAINT LUCIA</option>
									<option value="PM">SAINT PIERRE AND MIQUELON</option>
									<option value="VC">SAINT VINCENT AND THE GRENADINES</option>
									<option value="WS">SAMOA</option>
									<option value="SM">SAN MARINO</option>
									<option value="ST">SAO TOME AND PRINCIPE</option>
									<option value="SA">SAUDI ARABIA</option>
									<option value="SN">SENEGAL</option>
									<option value="RS">SERBIA</option>
									<option value="SC">SEYCHELLES</option>
									<option value="SL">SIERRA LEONE</option>
									<option value="SG">SINGAPORE</option>
									<option value="SK">SLOVAKIA</option>
									<option value="SI">SLOVENIA</option>
									<option value="SB">SOLOMON ISLANDS</option>
									<option value="SO">SOMALIA</option>
									<option value="ZA">SOUTH AFRICA</option>
									<option value="GS">SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS</option>
									<option value="ES">SPAIN</option>
									<option value="LK">SRI LANKA</option>
									<option value="SD">SUDAN</option>
									<option value="SR">SURINAME</option>
									<option value="SJ">SVALBARD AND JAN MAYEN</option>
									<option value="SZ">SWAZILAND</option>
									<option value="SE">SWEDEN</option>
									<option value="CH">SWITZERLAND</option>
									<option value="SY">SYRIAN ARAB REPUBLIC</option>
									<option value="TW">TAIWAN</option>
									<option value="TJ">TAJIKISTAN</option>
									<option value="TZ">TANZANIA, UNITED REPUBLIC OF</option>
									<option value="TH">THAILAND</option>
									<option value="TL">TIMOR-LESTE</option>
									<option value="TG">TOGO</option>
									<option value="TK">TOKELAU</option>
									<option value="TO">TONGA</option>
									<option value="TT">TRINIDAD AND TOBAGO</option>
									<option value="TN">TUNISIA</option>
									<option value="TR">TURKEY</option>
									<option value="TM">TURKMENISTAN</option>
									<option value="TC">TURKS AND CAICOS ISLANDS</option>
									<option value="TV">TUVALU</option>
									<option value="UG">UGANDA</option>
									<option value="UA">UKRAIN</option>
									<option value="AE">UNITED ARAB EMIRATES</option>
									<option value="GB">UNITED KINGDOM</option>
									<option value="US">UNITED STATES</option>
									<option value="UM">UNITED STATES MINOR OUTLYING ISLANDS</option>
									<option value="UY">URUGUAY</option>
									<option value="UZ">UZBEKISTAN</option>
									<option value="VU">VANUATU</option>
									<option value="VE">VENEZUELA</option>
									<option value="VN">VIET NAM</option>
									<option value="VG">VIRGIN ISLANDS, BRITISH</option>
									<option value="VI">VIRGIN ISLANDS, U.S.</option>
									<option value="WF">WALLIS AND FUTUNA</option>
									<option value="EH">WESTERN SAHARA</option>
									<option value="YE">YEMEN</option>
									<option value="ZM">ZAMBIA</option>
									<option value="ZW">ZIMBABWE</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Zip Code<!-- Zip Code --></td>
							<td colspan="2"><input type="text" name="cardZipCode" value="${paymentInfo.cardZipCode }" required class="required" maxlength="30"></td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Phone<!-- Phone --></td>
							<td colspan="2"><input type="text" name="cardFullPhone" value="${paymentInfo.cardFullPhone }" required class="required" maxlength="50"></td>
						</tr>
						<tr>
							<td class="tdlab"><span class="red12">*</span> Email<!-- Email --></td>
							<td colspan="2"><input type="email" name="grEmail" value="${paymentInfo.grEmail }" required class="required" maxlength="50"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="hidden" name="returnURL" value="${paymentInfo.returnURL }"></td>
							<td colspan="2"><input type="hidden" name="amount" value="${paymentInfo.amount }"></td>
							<td colspan="2"><input type="hidden" name="currency" value="${paymentInfo.currency }"></td>
							<td colspan="2"><input type="hidden" name="orderNo" value="${paymentInfo.orderNo }"></td>
							<td colspan="2"><input type="hidden" name="website" value="${paymentInfo.website }"></td>
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
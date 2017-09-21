<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script> 
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/additional-methods.js"></script>
<style>
	.input_warning{
		display: none;
	}
	.btn3c {
	    border-radius: 5px!important;
	    border: none;
	}
	.btn3{
		border:none!important;
	}
	.form1-valid {
		border-color:#2e3032!important;
	}
	.form1-invalid {
		border-color:#d50000!important;
	}
</style>
<!-- member registration form -->
<div id="fade_1" class="bg_mask_pop1">
	<div class="bg_mask_pop_title">
		<span class="popup_logo"><img src="images/popup_logo.png"></span>
		<span class="popup_close fade_1_close"><img src="images/popup_close.png"></span>
	</div>
	<form  id="form1" name="form1" >
		<div class="bg_mask_pop1_in">
			<p class="pop_text_title">회원가입</p>
			<div class="pop_text">IBET25에 오신것을 환영합니다.<br>회원가입을 하시면 보다 폭넓은 서비스 이용이 가능합니다.</div>
			<table  width="100%" cellpadding="0" cellspacing="0" class="popup_table01">
				<tr>
					<td>
						<table  cellpadding="0" cellspacing="0" class="popup_table01_1">
							<tr>
								<td width="370"><input class="input_style02 input_required" id="userid" name="userid"  placeholder="ID" placeholder="아이디" data-warn="userid-warn"></td>
								<td><img src="images/input_mark3.jpg" class="img-validator" id="userid-img-valid" ></td>
							</tr>
							<tr>
								<td colspan="2"><div class="input_warning" id="userid-warn">조건에 맞는 아이디를 입력해주세요.</div></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table  cellpadding="0" cellspacing="0" class="popup_table01_1">
							<tr>
								<td width="370"><input class="input_style02 input_required" name="nick" data-warn="nickname-warn" placeholder="Nickname" placeholder="새긴 ​​금"></td>
								<td><img src="images/input_mark3.jpg" class="img-validator" id="nick-img-valid" ></td>
							</tr>
							<tr>
								<td colspan="2"><div class="input_warning" id="nick-warn">만족 조건 충족 여부</div></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table  cellpadding="0" cellspacing="0" class="popup_table01_1">
							<tr>
								<td width="370"><input class="input_style02 input_required" type="password" name="passwd" data-warn="passwd-warn" placeholder="Password" placeholder="암호"></td>
								<td><img src="images/input_mark3.jpg" class="img-validator" id="passwd-img-valid"></td>
							</tr>
							<tr>
								<td colspan="2"><div class="input_warning" id="passwd-warn"> 만족 조건 충족 여부</div></td>
							</tr>
						</table>
					</td>
				</tr>
				<!--
				<tr>
					<td>
						<table  cellpadding="0" cellspacing="0" class="popup_table01_1">
							<tr>
								<td width="370"><input class="input_style02 input_required"  placeholder="아이디"></td>
								<td><a href="#"><img src="images/input_mark3.jpg"></a></td>
							</tr>
							<tr>
								<td colspan="2"><div class="input_warning"> 만족 조건 충족 여부</div></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table  cellpadding="0" cellspacing="0" class="popup_table01_1">
							<tr>
								<td width="370"><input class="input_style02 input_required"  placeholder="아이디"></td>
								<td><a href="#"><img src="images/input_mark3.jpg"></a></td>
							</tr>
							<tr>
								<td colspan="2"><div class="input_warning"> 만족 조건 충족 여부</div></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table  cellpadding="0" cellspacing="0" class="popup_table01_1">
							<tr>
								<td width="370"><input class="input_style02 input_required"  placeholder="아이디"></td>
								<td><a href="#"><img src="images/input_mark3.jpg"></a></td>
							</tr>
							<tr>
								<td colspan="2"><div class="input_warning">만족 조건 충족 여부</div></td>
							</tr>
						</table>
					</td>
				</tr>
				-->

				<tr>
					<td>
						<table  width="100%" cellpadding="0" cellspacing="0" class="popup_table01_1">
							<tr>
								<td width="100" align="left" style="padding:0 5px 0 0">
									<select class="input_style02" name="bank_name">
										 	<option value="국민은행" selected>국민은행</option>
										    <option value="기업은행">기업은행</option>
										    <option value="경남은행">경남은행</option>
										    <option value="광주은행">광주은행</option>
										    <option value="동부증권">동부증권</option>
										    <option value="대구은행">대구은행</option>
										    <option value="부산은행">부산은행</option>
										    <option value="산업은행">산업은행</option>
										    <option value="삼성증권">삼성증권</option>
										    <option value="삼성증권">신영증권</option>
										    <option value="신한은행">신한은행</option>
										    <option value="우리은행">우리은행</option>
										    <option value="외환은행">외환은행</option>
										    <option value="저축은행">저축은행</option>
										    <option value="전북은행">전북은행</option>
										    <option value="제주은행">제주은행</option>
										    <option value="하나은행">하나은행</option>
										    <option value="CITI은행">CITI은행</option>
										    <option value="HSBC은행">HSBC은행</option>
										    <option value="SC제일">SC제일</option>
										    <option value="새마을금고">새마을금고</option>
										    <option value="우체국">우체국</option>
										    <option value="농협중앙회">농협중앙회</option>
										    <option value="단위농협">단위농협</option>
										    <option value="신협">신협</option>
										    <option value="수협">수협</option>
										    <option value="동양증권">동양증권</option>
										    <option value="유진투자증권">유진투자증권</option>
										    <option value="한국투자은행">한국투자은행</option>
										    <option value="HMC투자증권">HMC투자증권</option>
										    <option value="IBK투자증권">IBK투자증권</option>
									</select>
								</td>
								<td width="120" align="left" style="padding:0 5px 0 0"><input class="input_style02" name="bank_owner"  placeholder="Account Holder" placeholder="예금주" ></td>
								
								<td align="left" style="padding:0 5px 0 0"><input class="input_style02 input_required" name="bank_num" data-warn="bank-warn" placeholder="Enter your account number (without -)" placeholder="계좌번호입력(-없이 입력)" placeholder="Enter your account number (without -)"></td>
							</tr>
							<tr>
								<td colspan="3">
									<div class="input_warning" id="bank_owner-warn">입력하신 번호로 인증번호가 발송되었습니다.</div>
									<div class="input_warning" id="bank_num-warn">입력하신 번호로 인증번호가 발송되었습니다.</div>	
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table  width="100%" cellpadding="0" cellspacing="0" class="popup_table01_1">
							<tr>
								<td width="100" align="left" style="padding:0 5px 0 0">
									<select class="input_style02" name="cell_prefix">
										<option value="+82">+82(한국)</option>
									</select>
								</td>
								<td width="230" align="left" style="padding:0 5px 0 0"><input class="input_style02 input_required" name="cell" data-warn="cell-warn" placeholder="Mobile Phone Number" placeholder="휴대폰번호" ></td>
								<td><a href="#"><span class="btn5">인증</span></a></td>
							</tr>
							<tr>
								<td colspan="4">
									<div class="input_warning" id="cell-warn">입력하신 번호로 인증번호가 발송되었습니다.</div>	
								</td>
								
							</tr>
						</table>
						
					</td>
				</tr>
				<tr>
					<td>
						<table  width="100%" cellpadding="0" cellspacing="0" class="popup_table01_1">
							<tr>
								<td width="335" align="left" style="padding:0 5px 0 0"><input class="input_style02 input_required" name="cert" data-warn="cert-warn" placeholder="Certification Number" placeholder="인증번호" ></td>
								<td><a href="#"><span class="btn5">확인</span></a></td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="input_warning" id="cert-warn">입력하신 번호로 인증번호가 발송되었습니다.</div>	
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<input class="input_style02 input_required" id="referrer" name="referrer" placeholder="Referrer ID" placeholder="추천인아이디" value="" data-warn="referrer-warn">
						<div class="input_warning" id="referrer-warn">입력하신 번호로 인증번호가 발송되었습니다.</div>
					</td>
				</tr>
				<tr>
					<td>
						<input class="input_style02 input_required" name="recommend" data-warn='recommend-warn' placeholder="Recommendation code" placeholder="추천인코드" >
						<div class="input_warning" id="recommend-warn">입력하신 번호로 인증번호가 발송되었습니다.</div>
					</td>
					
				</tr>
			</table>
			<div class="text_center">모든 항목은 필수 입력 사항 입니다.</div>
			<!-- <div class="btn_wrap"><a href="#"><span class="btn3c">회원가입</span></a></div> -->
			<div class="btn_wrap">
				<input type="submit" id="registerBtn" class="btn3c" value="회원가입">
			</div>

			<div class="text_center">이미 회원이라면? 로그인 후 이용해 주시기 바랍니다.</div>
			<div class="btn_wrap">
				<a href="#" id="loginBtn"><span class="btn3">로그인</span></a>
				<!-- <button type="button" class="btn3" id="loginBtn">로그인</button> -->
			</div>
		</div>
	</form>
</div>

<!-- member success info -->
<div id="fade_2" class="bg_mask_pop2">
	<div class="bg_mask_pop_title">
		<span class="popup_logo"><img src="images/popup_logo.png"></span>
		<span class="popup_close fade_2_close"><img src="images/popup_close.png"></span>
	</div>
	<div class="bg_mask_pop2_in">
		<div class="pop_icon_center">
			<img src="images/check_icon.png">
		</div>
		<div class="pop_text">
			회원 가입 완료!<br>
			IBET25에 오신것을 환영합니다. <br>
			IBET25에서 다양한 베팅의 세계를 마음껏 경험하세요!<br>
		</div>
		<div class="btn_wrap">
			<a href="#"><span class="btn3c">충전하기</span></a> <a href="#"><span class="btn3">확인</span></a>
		</div>
	</div>
</div>

<script>
	
	$(document).ready(function () {

	    $('#fade_1').popup({
	      	transition: 'all 0.3s',
	      	scrolllock: true,
	      	onclose:function(){
	      		resetForm1();
	    	}
	    });

	    $('#fade_2').popup({
			transition: 'all 0.3s',
			scrolllock: true
		});

	    $('#fade_3').popup({
			transition: 'all 0.3s',
			scrolllock: true
		});

		$("#form1 input").on("change",function(e){
			e.preventDefault();
			$("#form1").submit();
			
		});

		$("#loginBtn").on("click",function(e){
	    	e.preventDefault();
	    	$('#fade_1').popup("hide");
	    	$('#fade_3').popup("show");
	    });
	});

	$.validator.addMethod(
	        "regex",
	        function(value, element) {
	        	// var pattern = "^[!@#$%&*)(+=._-]*$";
	        	var pattern ="/^[\w&.\-]+$/";

	            var re = new RegExp(pattern);
	            console.log(this.optional(element));
	            console.log(!re.test(value));
	            return !re.test(value);
	        },
	        "Invalid Input"
	);

	$("#form1").validate({
		debug: true,
	   	submitHandler: function(form) {
    		console.log("submit this");
  		},
  		errorClass: 'form1-invalid',
    	validClass: 'form1-valid',
    	highlight: function(element, errorClass, validClass) {
    		console.log(element);
	      	$(element).addClass(errorClass).removeClass(validClass);
	    },
	    unhighlight: function(element, errorClass, validClass) {
	    	console.log(element);
	      	$(element).removeClass(errorClass).addClass(validClass);
	    },
  		rules: {
		    userid :{
				required:true,
				remote: {
					url: "${baseUrl}process/userid_checker.jsp",
			        type: "post",
			       	data: {
			          	userid: function() {
			            	return $( "#userid" ).val();
			          	}
			        },
		      	},
		      	minlength:4,
		      	maxlength:15,
		      	regex:true,
			},
			bank_name :{
				required:true,
			},
			bank_num :{
				required:true,
				digits: true,
			},
			bank_owner :{
				required:true,
			},
			cell :{
				required:true,
				digits: true,
			},
			cert :{
				required:true,
			},
			passwd :{
				required:true,
			},
			recommend :{
				required:true,
			},
			referrer :{
				required:true,
				remote: {
					url: "${baseUrl}process/referrence_checker.jsp",
			        type: "post",
			       	data: {
			          	userid: function() {
			            	return $( "#referrer" ).val();
			          	}
			        },
		      	}
			},
			nick :{
				required:true,
			},

		},
		messages: {
		    userid :{
				required:"User Id is required",
				remote:"User Id already exists",
			},
			bank_name :{
				required:"Bank name is required",
			},
			bank_num :{
				required:"Bank number is required",
				digits: "Please enter only digits on Bank Number",
			},
			bank_owner :{
				required:"Bank owner is required",
			},
			cell :{
				required:"Mobile Number is required",
			},
			cert :{
				required:"Certificate is required",
			},
			passwd :{
				required:"Password is required",
			},
			recommend :{
				required:"Recommand is required",
			},
			referrer :{
				required:"Referrer is required",
				remote: "User Id doesn't Exists"
			},
			nick :{
				required:"Nick name is required",
			},

		},
		errorPlacement: function(error, element) {
			console.log(error);
			console.log(element);
			$('#form1 input').css("border-color","#2e3032");
			var error_label = element.attr("name");
		    if (element.attr("name") == error_label ){
		    	$("#"+error_label+"-warn").html(error).show();
		    	$('#'+error_label).css("border-color","#d50000");
		    }
		  
		},
		submitHandler: function(form) {
			var data = $("#form1").serializeJSON();
			console.log(data);
		    submitForm(data);
		  
	  	}

	});

	
	
	$("#userid").rules("add", { regex: "/^[a-zA-Z0-9!@#\$%\^\&*\)\(+=._-]{6,}$/g" });

	function resetForm1(){
		$('#form1 input').css("border-color","#2e3032");
		$("#form1 .img-validator").attr("src","images/input_mark3.jpg");
		$("#form1")[0].reset();
		// $('#form1 .input_warning').hide();
		$("#form1").validate().resetForm();
	}

	function submitForm(data){
		$.ajax({
			url : '${baseUrl}process/register_process.jsp',
			data : data,
			method: 'POST',
		}).done(function(data){ 
			console.log(data);
			if(data){
				$('#fade_1').popup('hide');
				$("#fade_2").popup('show');
				resetForm1();
			}else{
				alert("something went wrong");
			}
		});
	}

	function regValid(){
		var valid = false;
		var useridTxt = $.trim($("#userid-input").val());
		var passwordTxt = $.trim($("#passwd-input").val());
		$("#login_modal_form .login-warn").hide();
		$('#login_modal_form input').css("border-color","#2e3032");

		if(useridTxt == "" || useridTxt == null){
			$("#login_modal_form .login-warn").html("User Id is required").show();
			$("#userid-input").css("border-color","#d50000").focus();
		}
		else if(passwordTxt == "" || passwordTxt == null){
			$("#login_modal_form .login-warn").html("Password is required").show();
			$("#passwd-input").css("border-color","#d50000").focus();
		}
		else if((useridTxt == "" || useridTxt == null) && ((passwordTxt == "" || passwordTxt == null))) {
			$("#login_modal_form .login-warn").html("User Id and Password is required").show();
			$("#userid-input").css("border-color","#d50000").focus();
		}else{
			valid = true;
		}

		return valid;
	}
</script>




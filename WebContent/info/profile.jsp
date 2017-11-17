<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "dao.GameDao"%>
<%@ page import = "java.text.DecimalFormat"%>
<%@ page import = "java.util.*"%>
<%@ page import = "dao.UserDao"%>
<%@ page import = "bean.UserBean"%>

<%
	UserBean user_data	= (UserBean)session.getAttribute("currentSessionUser");
	UserDao user_db	= new UserDao();
	UserBean currentUser = user_db.getUserByUserId(user_data.getUserid());
%>

<ul class="smk_accordion">
	<li>
		<div class="acc_head"><h3>내정보</h3></div>
		<div class="acc_content">
			<div class="acc_content_in_2">
				<div class="blue_wrap">
					<div class="my_box">
						<table cellspacing="0" cellpadding="0" class="my_table" width="70%">
							<tr>
								<td class="my_info">
									<span class="my_left">아이디</span><span class="my_right"><%=user_data.getUserid()%></span>
								</td>
								<td class="my_center"></td>
								<td class="my_info">
									<span class="my_left">예금주</span><span class="my_right"><%=currentUser.getBank_owner()%></span>
								</td>
							</tr>
							<tr>
								<td colspan="3" style="height:10px;"></td>	
							</tr>
							<tr>
								<td class="my_info">
									<span class="my_left">별명 </span><span class="my_right"><%=currentUser.getNick()%></span>
								</td>
								<td class="my_center"></td>
								<td class="my_info">
									<span class="my_left">은행명 </span><span class="my_right"><%=currentUser.getBank_name()%> </span>
								</td>
							</tr>
							<tr>
								<td colspan="3" style="height:10px;"></td>	
							</tr>
							<tr>
								<td class="my_info">
									<span class="my_left">휴대폰 번호</span><span class="my_right"><%=currentUser.getCell()%></span>
								</td>
								<td class="my_center"></td>
								<td class="my_info">
									<span class="my_left">계좌번호</span><span class="my_right"><%=currentUser.getBank_num()%></span>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</li>
	<li>
		<!-- profile -->
		<div class="acc_head"><h3>프로필 변경</h3></div>
		<div class="acc_content">
			<div class="acc_content_in_2" id="acc_content_in_2_profile">
				<div class="blue_wrap">
					<form name="updateProfileForm" id="updateProfileForm">
						<table width="60%" cellpadding="0" cellspacing="0" class="popup_table01">
							<tr>
								<td>
									<table  width="100%" cellpadding="0" cellspacing="0" class="popup_table01_1">
										<tr>
											<td width="20%" align="left" style="padding:0 5px 0 0">
												<select class="input_style02" id="up_bank_name" name="bank_name">
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
													    <option value="카카오뱅크">카카오뱅크</option>
												</select>
											</td>
											<td width="40%" align="left" style="padding:0 5px 0 0"><input class="input_style02" id="up_bank_owner" name="bank_owner" placeholder="예금주" ></td>
											
											<td width="40%" align="left" style="padding:0 5px 0 0"><input class="input_style02 input_required" id="up_bank_num" name="bank_num" data-warn="bank-warn" placeholder="계좌번호입력(-없이 입력)"></td>
										</tr>
										<tr>
											<td colspan="3">
												<div class="input_warning" id="bank_owner-update-warn">입력하신 번호로 인증번호가 발송되었습니다.</div>
												<div class="input_warning" id="bank_num-update-warn">입력하신 번호로 인증번호가 발송되었습니다.</div>	
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<table  width="100%" cellpadding="0" cellspacing="0" class="popup_table01_1">
										<tr>
											<td width="20%" align="left" style="padding:0 5px 0 0">
												<select class="input_style02" id="up_cell_prefix" name="cell_prefix" id="new_cell_prefix">
													<option value="+63">+63(필리핀 제도)</option>
													<option value="+82">+82(한국)</option>
												</select>
											</td>
											<td width="40%" align="left" style="padding:0 5px 0 0"><input class="input_style02 input_required" id="up_cell" name="cell" data-warn="cell-warn" placeholder="휴대폰 번호" ></td>
											<td width="40%"><span class="btn5" style="width: 40%;" id="up_cll_btn">인증</span></td>
										</tr>
										<tr>
											<td  colspan="4">
												<div class="input_warning" id="cell-update-warn">입력하신 번호로 인증번호가 발송되었습니다.</div>	
											</td>
											
										</tr>
									</table>
									
								</td>
							</tr>
						</table>
						<div class="cash_in">
							<!-- <a href="#"><span class="btn3c">전환신청</span></a>	 -->
							<input type="submit" id="updateProfileBtn" value="전환신청" class="btn3c">
						</div>
					</form>
				</div>
			</div>			
		</div>
	</li>
	<li>
		<div class="acc_head"><h3>비밀번호 변경</h3></div>
		<div class="acc_content">
			<div class="acc_content_in_2" id="acc_content_in_2_pass">
				<div class="blue_wrap">
					<form id="updatePasswordForm" name="updatePasswordForm">
						<table cellspacing="0" cellpadding="0" class="my_table" width="35%">
							<tr>
								<td class="my_pass">
									<input class="input_style03" id="current_password" name="current_password" placeholder="현재 비밀번호" >
								</td>
								<td class="my_text input_warning" id="current_password-update-warn" >비밀번호가 일치하지 않습니다. </td>
							</tr>
							<tr>
								<td colspan="3" style="height:10px;"></td>	
							</tr>
							<tr>
								<td class="my_pass">
									<input class="input_style03  cp" id="new_passowrd" name="new_passowrd" placeholder="새 비밀번호">
								</td>
								<td class="my_text input_warning" id="new_passowrd-update-warn" >비밀번호는 최소 6자 이상으로 설정해주세요</td>
							</tr>
							<tr>
								<td colspan="3" style="height:10px;"></td>	
							</tr>
							<tr>
								<td class="my_pass">
									<input class="input_style03  cp" id="confirm_new_passowrd" name="confirm_new_passowrd" placeholder="새 비밀번호 확인">
								</td>
								<td class="my_text input_warning" id="confirm_new_passowrd-update-warn" >비밀번호가 일치하지 않습니다</td>
							</tr>
						</table>
						<div class="cash_in">
							<!-- <a href="#"><span class="btn3c">전환신청</span></a>	 -->
							<input type="submit" id="updatePssBtn" value ="전환신청" class="btn3c">
						</div>
					</form>
				</div>
			</div>			
		</div>
	</li>
</ul>


<!-- update profile success modal -->
<div id="updateProfileModal" class="bg_mask_pop2">
	<div class="bg_mask_pop_title">
		<span class="popup_logo"><img src="/images/popup_logo.png"></span>
		<span class="popup_close fade_2_close"><img src="/images/popup_close.png"></span>
	</div>
	<div class="bg_mask_pop2_in">
		<div class="pop_icon_center">
			<img src="/images/check_icon.png">
		</div>
		<div class="pop_text">
			Update Profile Success
		</div>
		<div class="btn_wrap">
			<a href="/cash/cash.jsp" class="close-updateProfileModal"><span class="btn3c ">충전하기</span></a> 
			<a href="/" class="close-updateProfileModal"><span class="btn3">확인</span></a>
		</div>
	</div>
</div>

<!-- update modal success modal -->
<div id="updatePasswordModal" class="bg_mask_pop2">
	<div class="bg_mask_pop_title">
		<span class="popup_logo"><img src="/images/popup_logo.png"></span>
		<span class="popup_close fade_2_close"><img src="/images/popup_close.png"></span>
	</div>
	<div class="bg_mask_pop2_in">
		<div class="pop_icon_center">
			<img src="/images/check_icon.png">
		</div>
		<div class="pop_text">
			Update Password Success
		</div>
		<div class="btn_wrap">
			<a href="/cash/cash.jsp" class="close-updatePasswordModal"><span class="btn3c ">충전하기</span></a> 
			<a href="/" class="close-updatePasswordModal"><span class="btn3">확인</span></a>
		</div>
	</div>
</div>

<script>
	$(document).ready(function(){
		
		$('#updateProfileModal').popup({
	      	transition: 'all 0.3s',
	      	scrolllock: true,
	      	escape: false,
	      	blur: false,
	      	onclose:function(){
	      		location.reload();

	    	}
	    });


	    $('#updatePasswordModal').popup({
	    	transition: 'all 0.3s',
	      	scrolllock: true,
	      	escape: false,
	      	blur: false,
	      	onclose:function(){
	      		location.reload();

	    	}
	    });


	    $(".close-updateProfileModal").on("click",function(e){
	    	e.preventDefault();
	    	$('#updateProfileModal').popup("hide");
	    });


	    $(".close-updatePasswordModal").on("click",function(e){
	    	e.preventDefault();
	    	$('#updatePasswordModal').popup("hide");
	    });


		$.validator.addMethod(
	        "sameCell",
	        function(value, element) {
	        	// // console.log("value: "+value);
	        	// // console.log("element: "+element);
	        	var prefix = $("#new_cell_prefix").val();
	        	var number = "<%=currentUser.getCell()%>";
	        	// console.log("number: "+element);
	        	// console.log("new num: " + prefix+value);
	        	if(number == prefix+value){
	        		return false
	        	}else{
	        		return true;
	        	}
	        },	        
	        "You must enter a new mobile phone number"
		);


		$("#updateProfileForm input").on("blur",function(e){
			e.preventDefault();
			var validator = $( "#updateProfileForm" ).validate(); 
			var id = $(this).attr("id");
			var valid = validator.element("#"+id);
			$(this).qtip("hide");
			// console.log(valid);
			if(!valid && !valid){
				$(this).focusin();
			}			
		});


		$("#updateProfileBtn").on("click",function(e){
			e.preventDefault();
			if($("#updateProfileForm").valid()){
				var data = $("#updateProfileForm").serializeJSON();
			    submitProfileChanges(data);
			}
		});

		$("#up_cll_btn").click(function(){
			var validator = $( "#updateProfileForm" ).validate();
			var validReferrer = validator.element( "#up_cell");
			console.log(validReferrer);
		});

		$("#updateProfileForm").validate({
			debug: true,
	  		errorClass: 'form1-invalid',
	    	validClass: 'form1-valid',
	    	highlight: function(element, errorClass, validClass) {
	    		// // console.log(element);
		      	$(element).addClass(errorClass).removeClass(validClass);
		    },
		    unhighlight: function(element, errorClass, validClass) {
		    	// // console.log(element);
		      	$(element).removeClass(errorClass).addClass(validClass);
		    },
	  		rules: {
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
					minlength:10,
					sameCell:true,
				}
			},
			
			messages: {
				bank_name :{
					required:"은행명을 입력해 주세요.",
				},
				bank_num :{
					required:"계좌번호를 입력해 주세요.",
					digits: "계좌번호를 숫자로 입력해 주세요.",
				},
				bank_owner :{
					required:"예금주를 입력해 주세요.",
				},
				cell :{
					required:"전화번호를 입력해 주세요.",
					minlength:"전화번호를 확인 후 다시 입력해 주세요.",
				}


			},
			errorPlacement: function(error, element) {

				var name = element.attr("name");

				if(error.text() != ""){
			    	element.qtip({ 
					    overwrite: true,
					    content: {
					        text: error,
					        tooltipanchor: $(this),
					        button: 'Close',
					    },
					    show: {
				            when: false,
				            ready: true, 
				            event:false,
				        },
				        hide:{
				        	fixed:true,
				        	event:false,
				        },
				        position: {
					        container: $("#acc_content_in_2_profile"),
					        at: (name == "cell" ? "bottom right" : "top right"),
					        my: (name == "cell" ? "top left" : "bottom left"), 
					        adjust : {
					        	method : 'shift none',
					        }
					    }
					});
			    
				}else{
					element.qtip("hide");
				}
			  
			}
		  	
		});

		$("#updatePasswordForm input").on("blur",function(e){
			e.preventDefault();
			var validator = $( "#updatePasswordForm" ).validate(); 
			var id = $(this).attr("id");
			var valid = validator.element("#"+id);
			$(this).qtip("hide");
			// console.log(valid);
			if(!valid && !valid){
				$(this).focusin();
			}			
		});


		$("#updatePssBtn").on("click",function(e){
			e.preventDefault();
			if($("#updatePasswordForm").valid()){
				var data = $("#updatePasswordForm").serializeJSON();
			    submitPasswrdChanges(data);
			}
		});

		$("#updatePasswordForm").validate({
			debug: true,
	  		errorClass: 'form1-invalid',
	    	validClass: 'form1-valid',
	    	highlight: function(element, errorClass, validClass) {
	    		// // console.log(element);
		      	$(element).addClass(errorClass).removeClass(validClass);
		    },
		    unhighlight: function(element, errorClass, validClass) {
		    	// // console.log(element);
		      	$(element).removeClass(errorClass).addClass(validClass);
		    },
	  		rules: {
				current_password :{
					required:true,
					maxlength:20,
					// minlength:6,
					remote: {
						url: "/info/jsp/passwordChecker.jsp",
				        type: "post",
				       	data: {
				          	passwd: function() {
				            	return $( "#current_password" ).val();
				          	}
				        },
			      	},
				},
				new_passowrd :{
					required:true,
					maxlength:20,
					minlength:6,
				},
				confirm_new_passowrd :{
					required:true,
					maxlength:20,
					minlength:6,
					equalTo: "#new_passowrd",
				}
			},
			messages: {
				current_password :{
					required:"현재 사용중인 비빌번호를 입력해 주세요.",
					remote : "비밓번호를 확인 후 다시 입력해 주세요.",
				},
				new_passowrd :{
					required:"새 비밀번호를 입력해 주세요.",
				},
				confirm_new_passowrd :{
					required:"비빌번호가 일치하지 않습니다.",
					equalTo: "비빌번호가 일치하지 않습니다.",
				}

			},
			errorPlacement: function(error, element) {

			 	if(error.text() != ""){
			    	element.qtip({ 
					    overwrite: true,
					    content: {
					        text: error,
					        tooltipanchor: $(this),
					        button: 'Close',
					    },
					    show: {
				            when: false,
				            ready: true, 
				            event:false,
				        },
				        hide:{
				        	fixed:true,
				        	event:false,
				        },
				        position: {
					        container: $("#acc_content_in_2_pass"),
					        at: 'right center ',
					        my: 'left center', 
					        adjust : {
					        	method : 'shift none',
					        }
					    }
					});
			    
				}else{
					element.qtip("hide");
				}
			  
			},
			// submitHandler: function(form) {
			// 	var data = $("#updatePasswordForm").serializeJSON();
			// 	// console.log(data);
			//     submitPasswrdChanges(data);
			  
		 //  	}
		});



		$(".cp").on("keypress",function(){
			if($(this).val() == ""){
				$(this).removeClass("password");	
			}else{
				$(this).addClass("password");	
			}
		});

		$(".cp").on("focus",function(){
			if($(this).val() == ""){
				$(this).removeClass("password");	
			}else{
				$(this).addClass("password");	
			}
		});


	});

	function submitProfileChanges(data){
		$.ajax({
			url : '/jsp/updateProfile.jsp',
			data : data,
			method: 'POST',
		}).done(function(data){ 
			// console.log(data);
			if(data){
				resetupdateProfileForm();
				$('#updateProfileModal').popup('show');
				$("#updateProfileBtn input").qtip("hide");
			}else{
				alert("something went wrong");
			}
		});
	}

	function resetupdateProfileForm(){
		$("#updateProfileForm")[0].reset();
		$("#updateProfileForm").validate().resetForm();
	}

	

	function submitPasswrdChanges(data){
		$.ajax({
			url : '/info/jsp/updateUserPassword.jsp',
			data : data,
			method: 'POST',
		}).done(function(data){ 
			// console.log(data);
			if(data){
				resetupdatePasswordForm();
				$('#updatePasswordModal').popup('show');
				$("#updatePasswordForm input").qtip("hide");
			}else{
				alert("관리자에게 문의해 주세요.");
			}
		});
	}


	function resetupdatePasswordForm(){
		$("#updatePasswordForm")[0].reset();
		$("#updatePasswordForm").validate().resetForm();
	}
</script>
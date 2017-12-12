<%@ include file="/inc/session.jsp"%>
<%@ include file="/inc/session_checker.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="bean.UserBean, dao.UserDao, java.text.DecimalFormat"%>

<%

	UserDao user_db			= new UserDao();
	UserBean user_data		= (UserBean)session.getAttribute("currentSessionUser");
	UserBean currentUser 	= user_db.getUserByUserId(user_data.getUserid());
%>

<ul class="smk_accordion">
		<li>
			<div class="acc_head"><h3>환전신청 </h3></div>
			<div class="acc_content" id="acc_content_in_withdrawtb">
				<div class="acc_content_in_2">
				<form name="formwithdraw" id="formwithdraw" method="post">
					<div class="blue_wrap">
						<div class="cash_box">
							<div class="cash_in">
								<div class="cash_10"><p style="float:left">보유금액</p><p style="float:right"><span class="font_002 money_dsp" id="money"><%=dfrmt.format(currentUser.getMoney())%></span>원 </p></div>
								<div class="cash_9">
									<input class="input_style03" type="text" style="text-align: right;padding-right: 5%;" placeholder="환전금액" id="withdraw" name="withdraw">
								</div>	
								<div class="cash_5">
									<span id="err-msg" style="color:orange;"></span>
								</div>
							</div>
							<div class="cash_in">
								<span class="ebtn btn1" id="button1">1만원</span>
								<span class="ebtn btn1" id="button2">5만원</span>
								<span class="ebtn btn1" id="button3">10만원</span>
								<span class="ebtn btn1" id="button6">50만원</span>
								<span class="ebtn btn1" id="button4">100만원</span>
								<span class="ebtn btn1" id="button5">정정</span>
							</div>
							<div class="cash_in exbtn">
								<span><button type="submit" id="exchangeSbmtBtn" class="btn3c">환전신청</button></span>
							</div>
						</div>
					</div>
					</form>
				</div>
			</div>
		</li>
		<li>
		<div class="acc_head dt_div"><h3>충전신청 리스트</h3></div>
		<div class="acc_content">
			<div class="acc_content_in_2">
				<table id="dataTable2" cellspacing="0" cellpadding="0" data-scroll-x="true" style="width: 100%!important;">
            	</table>
			</div>
		</div>
	</li>
		<li>
			<div class="acc_head"><h3>환전신청 관련 유의사항</h3></div>
			<div class="acc_content">
				<div class="acc_content_in_2">
					<ul class="cash_warning">
						<li>· 수표 입금 불가</li>
						<li>· 입금자명과 신청 금액이 입금 내용과 동일 해야 함 (상이 할 경우 환전 처리 불가)</li>
						<li>· 의도적인 부정 환전 신청이 중복 될 경우 즉시 회원 자격이 상실 됩니다.</li>
						<li>· 환전은 입금 후 5분 이내에 완료가 됩니다.</li>
						<li>· 단, 해당 은행의 평일 점검, 서버 점검, 전산 장애가 있을 경우 환전이 지연 되오니 양해바랍니다.</li>
					</ul>
					<div class="cash_bank">
						<span class="font_006">은행 점검 시간</span>	
						<table cellspacing="0" cellpadding="0" class="back_table">
							<tr>
								<td class="bank_name b_left">국민은행</td>
								<td class="bank_time">00 : 00 ~ 00 : 00</td>
								<td class="bank_name">우리은행</td>
								<td class="bank_time">00 : 00 ~ 00 : 00</td>
							</tr>
							<tr>
								<td class="bank_name b_left">국민은행</td>
								<td class="bank_time">00 : 00 ~ 00 : 00</td>
								<td class="bank_name">우리은행</td>
								<td class="bank_time">00 : 00 ~ 00 : 00</td>
							</tr>
							<tr>
								<td class="bank_name b_left">국민은행</td>
								<td class="bank_time">00 : 00 ~ 00 : 00</td>
								<td class="bank_name">우리은행</td>
								<td class="bank_time">00 : 00 ~ 00 : 00</td>
							</tr>
							<tr>
								<td class="bank_name b_left">국민은행</td>
								<td class="bank_time">00 : 00 ~ 00 : 00</td>
								<td class="bank_name">우리은행</td>
								<td class="bank_time">00 : 00 ~ 00 : 00</td>
							</tr>
						</table>	
					</div>
				</div>
			</div>
		</li>
	</ul>
<!-- success -->
<div id="ExchangeSuccesModal" class="bg_mask_pop2">
	<div class="bg_mask_pop_title">
		<span class="popup_logo"><img src="/images/popup_logo.png"></span>
		<span class="popup_close fade_2_close cs_close_exchange"><img src="/images/popup_close.png"></span>
	</div>
	<div class="bg_mask_pop2_in">
		<div class="pop_icon_center">
			<img src="/images/check_icon.png">
		</div>
		<div class="pop_text">
			환전 신청이 접수 되었습니다.<br>			
		</div>
		<div class="btn_wrap">
			<span class="btn3c cs_close_exchange">확인</span>
		</div>
	</div>
</div>

<!-- confirm3 -->
<div id="conf_modal3" class="bg_mask_pop2 conf_modal">
	<div class="bg_mask_pop_title">
		<span class="popup_logo"><img src="/images/popup_logo.png"></span>
		<span class="popup_close conf_modal_close"><img src="/images/popup_close.png"></span>
	</div>
	<div class="bg_mask_pop2_in">
		<div class="pop_icon_center">
			<img src="/images/exclamation_icon.png">
		</div>
		<div class="pop_text">
			Are you sure?
		</div>
		<div class="btn_wrap">
			<span class="btn3 conf_modal_close">No</span>
			<span class="btn3 conf_modal_yes ">Yes</span>
		</div>
	</div>
</div>
<script>
	$dataTable_exchange = $('#dataTable2').DataTable({
		ajax : '/cash/jsp/getWithdrawList.jsp',
		bProcessing: true,
		sAjaxDataProp:"",
		searching: false,
		bInfo : false,
		lengthChange: false,
		autowWidth:true,
		aaSorting: [[1,'desc']],
	    columns : [
	        	{ 
	                data   : 'wdid',
	                title  : '번호',

	            },
	            { 
	                data   : 'regdate',
	                title  : '신청일시',
	            },
	            { 
	                data   : 'money',
	                title  : '금액',
	                render : function(data,type,row,meta){
	                	var html = '<span class="font_002">'+data+'</span> 원';
	                	return html;
	                }
	            },
	            { 
	                data   : 'wdstate',
	                title  : '상태',
	               	render : function(data,type,row,meta){
	                	var html = '<span class="font_009">신청<span>'; // pending
	                	if(data == "DONE"){
	                		html = '<span>완료</span>'; // complete
	                	}else if(data=="WAIT"){
	                		html = '<span class="font_010">대기</span>';
	                	}
	                	return html;
	                }
	               
	            },
	        ],
		pagingType: "full_numbers",
	    language: {
		    paginate: {
		      	previous: "<",
		      	next: ">",
		      	first: "<<",
		      	last: ">>",
		    },
		    emptyTable: "결과가 없습니다.",
		},
	    rowCallback : function(row , data , index) {
	        
	    },
	    drawCallback: function( settings ) {
	        
	    }
	});


	$(".dt_div").on("click",function(){
		
		setTimeout(function() {
		  	$dataTable_exchange.columns.adjust().draw();
		}, 100);
	});
	
	$("#formwithdraw").validate({
  		errorClass: 'form1-invalid',
    	validClass: 'form1-valid',
    	errorContainer: ".error_cash_in",
  		rules: {
			withdraw :{
				required:true,
				money_number:true,
				money_min: true,
			},
		},
		messages: {
			withdraw :{
				required:"입력이 필요합니다.",
				money_number: "입력은 숫자 여야합니다.",
				money_min:"교환 가능한 최소 금액은 10,000입니다.",
			},
		},
		errorPlacement: function(error, element) {

			var error_label = element.attr("name");
			var id = element.attr("id");
	
			
		    if(error.text() != ""){
		    	element.qtip({ 
				    overwrite: true,
				    content: {
				        text: error,
				        tooltipanchor: $(this)
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
				        container: $("#acc_content_in_withdrawtb"),
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
		
	});

	submitWithdraw();

	function submitWithdraw(){
		
		$("#conf_modal3 .conf_modal_yes").on("click",function(){
			
			var data = $("#formwithdraw").serializeJSON();
			console.log(data);
			if(data != null){
				var num = data.withdraw;
				data.withdraw = numberParser(num);
			}

			$.ajax({
				url:'jsp/withdrawprocess.jsp',
				data:data,
				type:'POST'
			}).done(function(data){
				if(data){
					$("#ExchangeSuccesModal").popup("show");
				}
			});
			
			$("#conf_modal3").popup("hide");

		});
	}

	$("#formwithdraw input").on("blur",function(e){
		e.preventDefault();
		var validator = $( "#formwithdraw" ).validate(); 
		var id = $(this).attr("id");
		var valid = validator.element("#"+id);
		$(this).qtip("hide");

		if(!valid && !valid){
			$(this).focusin();
		}			
	});

	$("#exchangeSbmtBtn").on("click",function(e){
		e.preventDefault();
		if($("#formwithdraw").valid()){
			$("#withdraw").qtip("hide");
		    $("#conf_modal3").popup("show");
		}
	});


	$('#ExchangeSuccesModal').popup({
	  	transition: 'all 0.3s',
	  	scrolllock: true,
	  	onclose:function(){
	  		resetformwithdraw();
		}
	});

	$(".cs_close_exchange").on("click",function(e){
		e.preventDefault();
		$dataTable_exchange.ajax.reload();
		$dataTable_exchange.columns.adjust().draw();
		$("#ExchangeSuccesModal").popup("hide");

	});

	function addWithDraw(point){
		var amount = parseInt($("#withdraw").val()) || 0;
		if(isNaN(parseInt($("#withdraw").val()))){
			amount = 0;

		}else{
			amount = parseInt(numberParser($("#withdraw").val()));
		}

		var sum = amount + point;
		$("#withdraw").val(numberWithCommas(sum));

		var validator = $( "#formwithdraw" ).validate(); 
		var valid = validator.element("#withdraw");
		if(valid){
			$("#withdraw").qtip("hide");
		}


	}


	function resetformwithdraw(){
		$("#formwithdraw")[0].reset();
		$('#withdraw').css('border-color', '#373332');
		$( "#err-msg" ).hide();
	}

	$('#button1').click(function(){
		// var num = +$("#withdraw").val() + 10000;
		// $("#withdraw").val(num);
		addWithDraw(10000);

	});

	$('#button2').click(function(){
		// var num = +$("#withdraw").val() + 50000;
		// $("#withdraw").val(num);
		addWithDraw(50000);

	});

	$('#button3').click(function(){
		// var num = +$("#withdraw").val() + 100000;
		// $("#withdraw").val(num);
		addWithDraw(100000);

	});

	$('#button4').click(function(){
		// var num = +$("#withdraw").val() + 1000000;
		// $("#withdraw").val(num);
		addWithDraw(1000000);

	});
	$('#button6').click(function(){
		addWithDraw(500000);
	}); 
	$('#button5').click(function(){
		$("#withdraw").val("0");
	});



</script> 
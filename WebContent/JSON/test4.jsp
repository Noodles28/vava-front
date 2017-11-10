<%@page contentType="text/html;charset=euc-kr"%>


<%@page import="org.json.simple.JSONObject"%>


<html>
 <head>
  <title> jquery Ajax test </title>
  <script type="text/javascript" src="/js/jquery-2.2.2.js"></script>
  <script type="text/javascript">

    $(document).ready(function(){
      $("#button").click(function(){
          callAjax();
      });
    });

    function callAjax(){
        //var dataString = $("form").serialize(); //�Ķ���� ����ȭ times=10&id=abc&comment=def
        //$("#postedParam").text("afterParameter:"+dataString); //

        $.ajax({
	        type: "POST",
	        //url : "http://localhost:8080/AjaxPrograming/temp/test.jsp",
	        url : "test4-1.jsp",
	        //data: dataString, //������ ���� ������ data����(form��ü �÷���)
	        data:{"Command":"GetSports"},
	        //data: JSON.stringify({"Command":"GetSports"}),
	        //data: request:JSON.stringify({"Command" : "GetSports"}),
	        dataType: 'json',
	        success: whenSuccess, //������ callback�Լ� ����
	        error: whenError //���н� callback�Լ� ����
     	});
    }
		
    // ������ ȣ��� �Լ�
    function whenSuccess(resdata){
        //$("#ajaxReturn").html(resdata);
        //alert(resdata.get("Command"));
        //alert("ok");
        console.log(resdata);
    }

    

    // ���н� ȣ��� �Լ�
    function whenError(){
        alert("Error");
    }

  </script>

 </head>

 <body>

 <div style="width:500px;margin:auto;margin-top:200px;">

	 <form id="form">

	 	 <div>

	     	<label>name</label><input name="number" value="10">

	     </div>

	     <div style="margin-top:20px;">

	     	<label>value</label><input name="id">

	     </div>


	     <div style="margin-top:20px;">

	     	<input id="button" type="button" value="��ư">

	     </div>

	 </form>

	 <div id="postedParam">beforeParameter</div>

	 <div id="ajaxReturn">ajaxReturnOutput</div>

 </div>

 </body>

</html>

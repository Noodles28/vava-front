﻿



var mainAngular = angular.module('Vava', [ 'ngAnimate', 'vAccordion' ]);
//var mainAngular = angular.module('Vava', [ 'angularSpinner', 'ngAnimate', 'vAccordion' ]);


//var mainAngular = angular.module('Vava', [ 'vAccordion' ]);
mainAngular.factory('WebSocketService', function($window) {
	
	var service = {};
	service.ws = new Object();
		
	service.connect = function() {
	
		var wsUrl = "ws://10.30.42.116:7071";
		
		var websocket = new WebSocket(wsUrl);		

		websocket.onopen = function() {
			service.callback("CONNECTED");
		};

		websocket.onerror = function() {
			websocket = null;			
			service.callback("Failed to open a connection" );
		};

		websocket.onclose = function() {
			websocket = null;			
			service.ws.close();
			console.log("Disconnected");
			service.callback("DISCONNECTED");			
			
			setTimeout(function(){service.connect()}, 5000);
			
		};

		websocket.onmessage = function(message) {
			service.callback(message.data);
		};

		service.ws = websocket;
	};
	
	service.disconnect = function() {
		console.log("dis-connected")
		service.ws.close();
	};

	service.subscribe = function(callback) {
		service.callback = callback;
	};
	
	service.loadGetMatchInit = function(){
		
	}
	
	service.sendMessage = function(msg){
		service.ws.send(msg);
	};
	
	return service;
});



mainAngular.filter('sf',function(){

	return function(arr, s){
		if(!s){
			return arr;
		}
		var r = [];		
		s = angular.lowercase(s);
		angular.forEach(arr, function(i){
			if(angular.lowercase(i.HTName).indexOf(s) !== -1){
				r.push(i);
			}else if(angular.lowercase(i.ATName).indexOf(s) !== -1){
				r.push(i);
			}
		});
		return r;
	};
});
      
mainAngular.controller("mc", function($scope, $templateCache, $compile, $http, WebSocketService) {
		
	WebSocketService.subscribe(function( message) {
		
		try {
			
			var obj = JSON.parse(message);			
			
			switch(obj.Command) {
		     	 		   
				case "GetCompetitions": loadGetCompetitions(obj);
					break;			
				
				case "MatchStat": sub_loadGetMatchStat(obj);
					break;	
							
				case "GetMatches": loadGetMatch(obj); 
					break;	
				
				case "MatchUpdate":
				
					if(obj.Type == "Match"){
						sub_loadGetMatch(obj);
						
					} else if (obj.Type == "MatchStat") {
						sub_loadGetMatchStat(obj);
						
					} else if (obj.Type == "Market") 
						sub_loadGetMatchMarket(obj);
			
					break;
					
					
				case "GetMatchMarkets": loadGetMatchMarket(obj);
					break;								
		 	} 
		 	
		} catch (exception) {
			
		}
		
	$scope.$apply();
	//$scope.loadLiveMarketMatchResult();
	//$scope.loadPreMarketMatchResult();
	});
		
	WebSocketService.connect();
	console.log("connected")
	
  $scope.centerTab = "center_live.html";  //default tab on loading
  $scope.leftTab = "left_live.html";
  $scope.rightTab = "right_bet.html";
    
  $scope.tabSId = "0";	
  $scope.tabCId = "0";							//Sports ID on click sports tab
  $scope.tabMId = "0";							//Match ID on click match tab
  $scope.tabMkId = "0" ;						//Market ID on click market tab
  $scope.tabDate = "0" ;						//Market ID on click market tab
  $scope.innerTab = [];

  $scope.bet=[];
  $scope.betAlert1 = false;
  $scope.betExcept = false;
  $scope.liveTop = [];	

  loadLiveMatchInit();
  loadPreMatchInit();
  
  var mode = "LiveMatch";   
    			
 $scope.goLiveMatch = function (left,center) {	//sports tab    	
  	console.log("liveMatch left : " + left+ ", center : " + center ); 

  	loadLiveMatchInit();
  	preMatchCnt();
  	
  	islive = true;
		$scope.preMarket = [];	
		$scope.tabMId = "0";
		$scope.tabSId ="0";  	 	
    $scope.centerTab = center;
    $scope.leftTab = left;
    mode = "LiveMatch";
  }

 $scope.goPreMatch = function (left,center) {	//sports tab    	
  	$scope.preMarket =[];
  	$scope.tabCId = $scope.preMatchCnt[0].CId;
  	getMatchInfobyCompetition($scope.tabCId);
  	//$scope.preMatch = []; 
  	
  	loadPreMatch();
  	liveMatchCnt();
  	
  	islive = false;
  	$scope.liveMarket = [];	
  	$scope.liveStat = [];	
		$scope.tabMId = "0";
    $scope.centerTab = center;
    $scope.leftTab = left;
    mode = "PreMatch";
    $scope.toggleMId = "0";
    
    
  }
  
 $scope.goMatchMarket = function (tab,sid,mid) {  //match tab
 		console.log("goMatchMarket, tab :" +tab+", mid : "+mid);
 		$scope.getMarketbyMatchId(mid);
 		$scope.getStatusbyMatchId(mid,sid);
    $scope.centerTab = tab;
    
    //if($scope.centerTab =='center_market.html'){
    	mode = "LiveMarket";
    //}else{
    //	mode = "PreMatch";
    //}
    $scope.topLive = "top_live"+sid+".html";
    
    //$scope.innerTab = tab; //template4.html
    $scope.markets = [];
    $scope.tabMId = mid; 
    $scope.tabMkId = "0";  
    //mode = "MatchMarket";
  };
 
  $scope.goPreMatchMarket = function (tab,sid,mid,idx) {  //match tab
 		console.log("goPreMatchMarket, tab :" +tab+", mid : "+mid+", idx : "+idx);
 		//$scope.getMarketbyMatchId(mid);
 		//$scope.getStatusbyMatchId(mid,sid);
 		
    $scope.centerTab = tab;
     $scope.innerTab = [];
    $scope.innerTab[idx] = "inner_pre.html";
    $scope.toggleMId = mid;
    
    if($scope.tabMId !== mid){
    	$scope.getMarketbyMatchId($scope.toggleMId);
    	$scope.tabMId = mid; 
    	
    } else{
    	$scope.tabMId = "0"; 
    }
    
    //$scope.innerTab = "inner_pre-angular.html";
    
    //if($scope.centerTab =='center_market.html'){
    //	mode = "LiveMarket";
    //}else{
    	mode = "PreMatch";
    //}
    //$scope.topLive = "top_live"+sid+".html";
    
    //$scope.innerTab = tab; //template4.html
    $scope.markets = [];
    
    $scope.tabMkId = "0";  
    //mode = "MatchMarket";
  };
     
  $scope.addBet  = function (selid,mkid,selnm,selteam,hteam,ateam,price,bPrice) { 	
  	console.log("addBet selid : " + selid + ", mkid : " + mkid+", selnm : " + selnm+", hteam : " + hteam+", ateam : " + ateam+", price : " + price);    
  	
  	$scope.betExcept = true;
  	
  	for(var i = $scope.bet.length - 1; i >= 0; i--){
  									
				if($scope.bet[i].Mkid == mkid){
					$scope.betAlert1 = true;
					return;
					//$scope.bet.splice(i,1);
					//already reserved.
					
				};
		};
		
  	$scope.bet.push({
			Selid : selid,
			Mkid : mkid,
   		Selnm : selnm,
   		SelTeam : selteam,
   		HTeam : hteam,
   		ATeam : ateam,
   		Price : price,
   		BPrice : bPrice,
	});	
	
	var element =  document.getElementById("betPrice");
	if(element) element.focus();
          
 };
 
 $scope.setBet  = function (selid,mkid,selnm,selteam,hteam,ateam,price,bPrice) { 	
  	console.log("setBet selid : " + selid + ", mkid : " + mkid+", selnm : " + selnm+", hteam : " + hteam+", ateam : " + ateam+", price : " + price);    
  	
  	$scope.betExcept = true;
  	
  	for(var i = $scope.bet.length - 1; i >= 0; i--){
  									
				if($scope.bet[i].Mkid == mkid){
					$scope.betAlert1 = true;
					return;
					//$scope.bet.splice(i,1);
					//already reserved.
					
				};
		};
		
  	$scope.bet.push({
			Selid : selid,
			Mkid : mkid,
   		Selnm : selnm,
   		SelTeam : selteam,
   		HTeam : hteam,
   		ATeam : ateam,
   		Price : price,
   		BPrice : bPrice,
	});	
	
	var element =  document.getElementById("betPrice");
	if(element) element.focus();
          
 };
 
  $scope.delBet  = function (selid) { 	
  	console.log("detBet selid : " + selid);    
  	
  	for(var i = $scope.bet.length - 1; i >= 0; i--){
							
				if($scope.bet[i].Selid == selid){
					$scope.bet.splice(i,1);
				};

		};
		
	if($scope.bet.length < 1) $scope.betExcept = false;
	
	else {	
		var element =  document.getElementById("betPrice");
		if(element) element.focus();
	 }

  };
 
  $scope.delAllBet  = function () { 	
  	console.log("detAllBet");    
  	
  	for(var i = $scope.bet.length - 1; i >= 0; i--){
							
					$scope.bet.splice(i,1);

		};
		
	$scope.betExcept = false;
	$scope.betAlert1 = false;
 };
 	
 		
 $scope.conAlert  = function (alert) { 	
  	console.log("conAlert alert : " + alert);    
  	
  if(alert == "1") $scope.betAlert1 = false;
 
 	var element =  document.getElementById("betPrice");
	if(element) element.focus();

 };
 	
  $scope.selectSport = function (tab,sid) {	//sports tab    	
  	//console.log("selectSport tab : " + tab + ", SId : " + sid);     	
    $scope.centerTab = tab;
    $scope.tabSId = sid;
  }
  
   $scope.getMaketbyCid  = function (left,center,cid) { 	
  	//console.log("getMaketbyCid left : " + left + ", center : " + center+", cid : " + cid);    
  	$scope.centerTab = center;
    $scope.leftTab = left;
    $scope.tabDate = "0";
    $scope.CID = cid;
    //$scope.getMatchInfobyCompetition(cid);
    $scope.preMarket =[];
    getMatchInfobyCompetition(cid);
 }
  	
   $scope.preMatchDate = function (left, center,cid,date) {
  	//console.log("preMatchDate center : " + center + ", cid : " + cid+ ", date : " + date);  
  	 $scope.innerTab = [];  
  	$scope.leftTab = left;
  	$scope.centerTab = center;
  	$scope.tabDate = date;
   // $scope.dt = date;
   // $scope.getMatchInfobyDate(date);
   //$scope.getMatchInfobyDateCompetition(cid,date);
 }    
  

  

  $scope.selectMarket = function (tab,mkid) {		//market tab
    $scope.centerTab = tab;
    $scope.tabMkId = mkid;
    //console.log("$scope.tabMkId : " + $scope.tabMkId)
  }
	  
	$scope.leftmenu =[];
	
	$scope.leftmenu.push({
		title : "실시간",
   	left : "left_live.html",
   	center : "center_live.html"
	});		
	
	$scope.leftmenu.push({
		title : "스포츠",
   	left : "left_pre.html",
   	center : "center_pre.html"
	});	
	
	$scope.preMatch = [];	
	$scope.liveMatch = [];
	//$scope.MatchesStat = [];
	//$scope.Mtype = [];
	$scope.PreMarket = [];
	$scope.CID = [];
	//$scope.preMtype = [];
	
	$scope.betPrice = 1;
	$scope.betAmt = 100;
	$scope.selectedSId = 0;
	
	$scope.sel = [];
	
	$scope.liveStat = [];
	$scope.liveMarket = [];		
	//$scope.leftMarket = [];	
	$scope.preMarketCnt = [];		
	$scope.validMKTypeId =[];
	

			
	var $filter = angular.injector(['ng', 'Vava']).get('$filter');
	
	$http({
	    url: '/JSON/period_name.json',
	    method: "GET",
	     headers: {
        'Content-Type': 'utf-8'
      	}
    }).success(function(data, status, headers, config) {
    	
	    $scope.periodName = data.Objects;
    //	$scope.RegionObj_init = data.Objects;  
    	    
    //	console.log("$scope.periodName");
    //	console.log($scope.periodName);
    
		}).error(function(data, status, headers, config) {
	    $scope.status = status;
	});


	$http({
	    url: '/JSON/live_status.json',
	    method: "GET",
	     headers: {
        'Content-Type': 'utf-8'
      	}
    }).success(function(data, status, headers, config) {
    	
	    $scope.liveS = data.Objects;
    
		}).error(function(data, status, headers, config) {
	    $scope.status = status;
	});
	
	

  $http({
			method: 'GET', 
			url: 'jsp/getValidMarketType.jsp', 
			headers: {'Content-Type': 'application/json; charset=utf-8'} 
	}).success(function(data, status, headers, config) {
					
		if(data) {
			$scope.validMKTypeId = data;		
		};
		
		data = null;
		
	}).error(function(data, status, headers, config) {
		console.log(status);
		data = null;
	});

	 	
		 
		$http({
				method: 'GET', 
				url: 'jsp/getFavMatch.jsp', 
				params: {'uid':'testuser'},
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
			
			$scope.favMatch = [];
			
			if(data) {			
								
					angular.forEach(data, function(obj,idx) {
							
						$scope.favMatch.push({
							Id: obj.Id,
							SId:obj.SportId,
							SName:obj.SName,
							CName:obj.CName,
							HTName:obj.ATeamName,
							ATName:obj.ATeamName,				
							Date:obj.Date,
						});
						
					});	
				
					//console.log($scope.favMatch);				
			};
				
				//console.log("[getMarketbyMarketId] (2): "+ $scope.markets.length);
					
				data = null;
			
		}).error(function(data, status, headers, config) {
			console.log(status);
			data = null;
		});

   
  function liveMatchCnt() {	
  	
  	$scope.liveMatchCnt = [];  	
  	
  	console.log("$scope.liveStat.length : " + $scope.liveStat.length);
  	
  	for(var i = $scope.liveStat.length - 1; i >= 0; i--){
  		
  		$scope.liveMatchCnt.push({
		    	MId : $scope.liveStat[i].MId,
			});
  	};
  };
  
  
  function preMatchCnt() {	
  	
  	$scope.preMatchCnt = [];
  	
  	for(var i = $scope.preMatch.length - 1; i >= 0; i--){
  		
  		$scope.preMatchCnt.push({
  				CId : $scope.preMatch[i].CId,
		    	MId : $scope.preMatch[i].MId,
			});
  	};
  	
  	$scope.preMatch = [];	
  };
  
/*
  function loadLiveMatch(mid,mkmr) {		//market tab
		
		//console.log("loadLiveMatch(mid)");
		
		 $http({
				method: 'GET', 
				url: 'jsp/loadLiveMatch.jsp', 
				params: { 'mid' : mid },
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		 }).success(function(data, status, headers, config) {
				
			if(data) {
			
			//console.log("data[0].IsLive : "+ data[0].IsLive);
			
				if(data[0].IsLive){
					
				
					var HTeamScore = "-";
				  var ATeamScore = "-";			   
				   			
					if(data[0].Stat !== undefined && data[0].Stat !== null && data[0].Stat.length > 0){
											
						var mMatchStat = data[0].Stat; 	
						
						var score = mMatchStat[0].Score.split(':');
						var HTeamScore = score[0];
			 			var ATeamScore = score[1];	
			 			
					};		
							
					var w1Price ="-";
					var w2Price ="-";
					var xPrice ="-";
					//var marketId = "";					
					var w1SelId ="";
					var xSelId ="";
					var w2SelId ="";
													

					var mMatchResult = mkmr;
					
														
					if(mMatchResult.Selections !== undefined && mMatchResult.Selections !== null && mMatchResult.Selections.length > 0){				
														
						for(var i = mMatchResult.Selections.length - 1; i >= 0; i--){
												
							if(mMatchResult.Selections[i].Name == 'W1') {
								w1SelId = mMatchResult.Selections[i].Id ;
								w1Price = mMatchResult.Selections[i].Price ;
							
							}	else if(mMatchResult.Selections[i].Name == 'X') {
								xSelId = mMatchResult.Selections[i].Id ;
								xPrice = mMatchResult.Selections[i].Price ;
							
							}	else if(mMatchResult.Selections[i].Name == 'W2') {
								w2SelId = mMatchResult.Selections[i].Id ;
								w2Price = mMatchResult.Selections[i].Price ;
							}

						}
			
				    	 
				   	$scope.liveStat.push({
				  		SId : data[0].SportId,
				  		SName : data[0].SName,	    		
				  		RId : data[0].RegionId,
				  		RName : data[0].RName,
				  		CId : data[0].CompetitionId,
				  		CName : data[0].CName,
				    	MId : data[0].Id,
				    	HTName : data[0].HTeamName,
				    	ATName : data[0].ATeamName,
				    	Period :  mMatchStat[0].Period,
				    	//EType : mMatchStat[0].EventType,
				    	HTeamScore : HTeamScore,
				    	ATeamScore : ATeamScore,
				    	IsSuspended : data[0].IsSuspended,
				    	CurrentMinute : (data[0].CurrentMinute == undefined) ? "" : data[0].CurrentMinute, //data[0].CurrentMinute,
		    			RemainingTime : (data[0].RemainingTime == undefined) ? "" : data[0].RemainingTime, //data[0].CurrentMinute, data[0].RemainingTime,
				    	Info : mMatchStat[0].Info,
						});
				  	
				  	//console.log("pushed $scope.liveStat : " + data[0].Id);
				  			  		
						$scope.liveMarket.push({
				  		SId : data[0].SportId,
				  		SName : data[0].SName,	    		
				  		RId : data[0].RegionId,
				  		RName : data[0].RName,
				  		CId : data[0].CompetitionId,
				  		CName : data[0].CName,
				    	MId : data[0].Id,
				    	HTName : data[0].HTeamName,
				    	ATName : data[0].ATeamName,
				    	Period :  mMatchStat[0].Period,
				    	HTeamScore : HTeamScore,
				    	ATeamScore : ATeamScore,
				    	Market : data[0].Market,
				    	MarketId : mMatchResult.Id, 
				    	IsSuspended : mMatchResult.IsSuspended, 
				    	CurrentMinute : (data[0].CurrentMinute == undefined) ? "" : data[0].CurrentMinute, //data[0].CurrentMinute,
		    			RemainingTime : (data[0].RemainingTime == undefined) ? "" : data[0].RemainingTime, //data[0].RemainingTime,
		    			w1SelId : w1SelId,
		    			xSelId : xSelId,
		    			w2SelId : w2SelId,		    	    	
				    	BW1Price : w1Price, 
					    BXPrice : xPrice,
					    BW2Price : w2Price,			      	
				    	W1Price : w1Price,
				    	XPrice : xPrice,
				    	W2Price : w2Price,
						});
						
						//console.log("pushed $scope.liveMarket : " + data[0].Id);
						
						for(var i = $scope.preMatchCnt.length - 1; i >= 0; i--){
		  						
		  						if($scope.preMatchCnt[i].MId == data[0].Id){
		  							$scope.preMatchCnt.splice(i,1);
		  						};
		  			};
		  					
						//console.log("delete $scope.preMatchCnt : " + data[0].Id);
					
				  };
		 		} else {
		 		
		 		for(var i = $scope.preMatchCnt.length - 1; i >= 0; i--){
	  						
					if($scope.preMatchCnt[i].MId == data[0].Id){
						$scope.preMatchCnt.splice(i,1);
					};

	  		};
	  		
		 		$scope.preMatchCnt.push({
	  				CId : data[0].CompetitionId,
			    	MId : data[0].Id,
				});

				};
	 		
		  };
		  
		  data=null;
	
		}).error(function(data, status, headers, config) {
			console.log(status);
			data=null;
		});
  };
 */
 /* 
 	function loadLiveMarketMatchResult() {
	   
	   $scope.MarketMatchesResult =[];
	      
	   $http({
				method: 'GET', 
				url: '/angular_json/getLiveMarketMatchResult.jsp', 
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
			
			if(data) {
									
			 // console.log("[loadLiveMarketMatchResult] data.length : " + data.length)
				
				//angular.forEach(data, function(obj,idx) {
					
				//		$scope.MarketMatchesResult.push(obj);

				//});
				
				loadLiveMatchInit(data);
				

			};
			
			data=null;
				
		}).error(function(data, status, headers, config) {
			console.log(status);
			data=null;
		});	
		
 }
 */

 	function loadLiveMatchInit() {		//market tab

		 $http({
				method: 'GET', 
				url: 'jsp/loadLiveMatchInit.jsp', 
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		 }).success(function(data, status, headers, config) {
												
			$scope.liveStat = [];
			$scope.liveMarket = [];		
			$scope.leftMarketCnt = [];		
			
			//console.log("loadLiveMatchInit");
			//console.log(data);
			
			angular.forEach(data, function(obj,idx) {
				
				if(obj.Market !== null &&  obj.Market !== undefined && obj.Market.length > 0){
					
					for (var j = 0; j < obj.Market.length ; j++) {						
						$scope.leftMarketCnt.push(obj.Market[j]);							
					}
				}
				
		    angular.forEach(obj.Match, function(obj2,idx2) {       
				
				var mStat = obj.Stat.filter(function (el) { return el.MatchId == obj2.Id; })	
				var mResult = obj.Result.filter(function (el) { return el.MatchId == obj2.Id; })	
				var mSelect = obj.Selection.filter(function (el) { return el.MatchId == obj2.Id; })	
				
				var HTeamScore = "-";
			  var ATeamScore = "-";	
			   			
				if(mStat !== undefined && mStat !== null && mStat.length > 0){
				
					HTeamScore = mStat[0].Score.split(':')[0];
		 			ATeamScore = mStat[0].Score.split(':')[1]; //score[1];	
				
				} else {
				 // no stat data
				 	return;
				 
				};		
											
				if(mResult !== undefined && mResult !== null && mResult.length > 0){
					
					var w1Price ="-";
					var w2Price ="-";
					var xPrice ="-";
					
					var w1SelId ="";
					var xSelId ="";
					var w2SelId ="";
					
					
					mSelect
					
					for(var i = mSelect.length - 1; i >= 0; i--){
						
						//var select = mResult[0].Selections[i];
						
						if(mSelect[i].Name == 'W1') {
							w1SelId = mSelect[i].Id ;
							w1Price = mSelect[i].Price ;
						
						} else if(mSelect[i].Name == 'X') {
							xSelId = mSelect[i].Id ;
							xPrice = mSelect[i].Price ;
						
						} else if(mSelect[i].Name == 'W2') {
							w2SelId = mSelect[i].Id ;
							w2Price = mSelect[i].Price ;
						}
					}
 
			   	$scope.liveStat.push({
			  		SId : obj2.SportId,
			  		SName : obj2.SName,	    		
			  		RId : obj2.RegionId,
			  		RName : obj2.RName,
			  		CId : obj2.CompetitionId,
			  		CName : obj2.CName,
			    	MId : obj2.Id,
			    	HTName : obj2.HTeamName,
			    	ATName : obj2.ATeamName,
			    	Period :  mStat[0].Period,
			    	//EType : mMatchStat[0].EventType,
			    	HTeamScore : HTeamScore,
			    	ATeamScore : ATeamScore,
			    	IsSuspended : obj2.IsSuspended,
			    	CurrentMinute : (mStat[0].CurrentMinute == undefined) ? "" : mStat[0].CurrentMinute, //mStat[0].CurrentMinute,
			    	RemainingTime : (mStat[0].RemainingTime == undefined) ? "" : mStat[0].RemainingTime, //mStat[0].RemainingTime,
			    	Info : mStat.Info,
			    	
					});
			  			  		
					$scope.liveMarket.push({
			  		SId : obj2.SportId,
			  		SName : obj2.SName,	    		
			  		RId : obj2.RegionId,
			  		RName : obj2.RName,
			  		CId : obj2.CompetitionId,
			  		CName : obj2.CName,
			    	MId : obj2.Id,
			    	HTName : obj2.HTeamName,
			    	ATName : obj2.ATeamName,
			    	Period :  mStat[0].Period,
			    	HTeamScore : HTeamScore,
			    	ATeamScore : ATeamScore,
			    	//Market : obj.Market,
			    	MarketId : mResult[0].Id, 
			    	IsSuspended : mResult[0].IsSuspended, 
			    	CurrentMinute : (mStat[0].CurrentMinute == undefined) ? "" : mStat[0].CurrentMinute, //mStat[0].CurrentMinute,
			    	RemainingTime : (mStat[0].RemainingTime == undefined) ? "" : mStat[0].RemainingTime, //mStat[0].RemainingTime,  
			    	w1SelId : w1SelId,
			    	xSelId : xSelId,
			    	w2SelId : w2SelId,
			    	BW1Price : w1Price, 
				    BXPrice : xPrice,
				    BW2Price : w2Price,			      	
			    	W1Price : w1Price,
			    	XPrice : xPrice,
			    	W2Price : w2Price,
					});
					
					/*
					if(obj.Market !== null &&  obj.Market !== undefined && obj.Market.length > 0){
					
					for (var j = 0; j < obj.Market.length ; j++) {						
						$scope.leftMarketCnt.push(obj.Market[j]);							
					}
					*/
				}
				
				/*
					for(var m = obj.Market.length - 1; m >= 0; m--){
						
					//console.log(obj.Market)
					
						$scope.leftMarket.push({
			    		Id : obj.Market[m].Id,
			    		IsSuspended : obj.Market[m].IsSuspended,	    		
			    		IsVisible : obj.Market[m].IsVisible,
			    		MatchId : obj.Market[m].MatchId,
						});
					};
					*/

			  });
		 		
		 		}); 
		 		
	 		//}); 

			data=null;
				
		}).error(function(data, status, headers, config) {
				console.log(status);
				data=null;
		});
  };

  
 function loadPreMatchInit() {		//market tab
		
		 $http({
				method: 'GET', 
				url: 'jsp/loadPreMatchInit.jsp', 
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
				
			$scope.preMatchCnt = [];
			
			angular.forEach(data, function(obj,idx) {

			if(obj.Id !== undefined && obj.Id !== null && obj.Id.length > 0){
										
				$scope.preMatchCnt.push({
					CId : obj.CompetitionId,
				 	MId : obj.Id,			 	
				});	  		
			}
		});
		
		data=null;
		
	}).error(function(data, status, headers, config) {
		console.log(status);
		data=null;
	});
 };
 
 function loadPreMatch() {		//market tab
		
		 $http({
				method: 'GET', 
				url: 'jsp/loadPreMatch.jsp', 
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
				
		if(data) {
		
		console.log("loadPreMatch");	
		console.log(data);
		
		$scope.preMatch = [];
		//$scope.preMatchCnt = [];
			
    angular.forEach(data, function(obj,idx) {        

			$scope.preMatch.push({
				SId : obj.SportId,
				SName : obj.SName,
				RId : obj.RegionId,
				RName : obj.RName,
				CId : obj.CompetitionId,
				CName : obj.CName,
			 	MId : obj.Id,
			});
	  	
	  }); 
		};
		
		data = null;
		
	}).error(function(data, status, headers, config) {
		console.log(status);
		data = null;
	});
 };

 function subLoadPreMatch(mid) {		//market tab
		
		 $http({
				method: 'GET', 
				url: 'jsp/subLoadPreMatch.jsp', 
				params: { 'mid' : mid },
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
				
		if(data) {
		
		//$scope.preMatch = [];
		//$scope.preMatchCnt = [];
			
    //angular.forEach(data, function(obj,idx) {  
    
    console.log("loadPreMatch : " + mid);
   	console.log(data);
   	       
		if(data.SportId !== undefined && data.SportId !== null && data.SportId.length > 0){
			
			$scope.preMatch.push({
				SId : data.SportId,
				SName : data.SName,
				RId : data.RegionId,
				RName : data.RName,
				CId : data.CompetitionId,
				CName : data.CName,
			 	MId : data.Id,
			});
	  	
	  };
	   
		};
		
		data = null;
		
	}).error(function(data, status, headers, config) {
		console.log(status);
		data = null;
	});
 };
 
	// for new matches
	$scope.getMarketbyMatchId = function(mid) {
	
	   $http({
				method: 'GET', 
				url: 'jsp/getMarketbyMatchId.jsp', 
				params: { 'mid' : mid },
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		 }).success(function(data, status, headers, config) {		
		 			
			if(data) {
								
				//console.log("[getMarketbyMatchId] data.length : " + data.length);
				
				$scope.markets = [];
				var selections_tmp = [];
				var selections = [];
				
				angular.forEach(data, function(obj,idx) {
					
					if(obj.Sequence != undefined){
						//console.log("$scope.markets.push(obj)");
						//console.log(obj);
						$scope.markets.push(obj);
						
					}
										
					if(obj.Selections != undefined){

						for (var i = 0; i < obj.Selections.length; i++) {								
								selections_tmp.push(obj.Selections[i]);
						};
					};	
										
				});
				
				
				
				for (var k = 0; k < $scope.markets.length; k++) {
			
					var selections = [];
					
					//console.log("$scope.markets : " + k);			
					for (var i = 0; i < selections_tmp.length; i++) {								
								//console.log("selections_tmp : " + (k+1)*(i+1));
								
						if($scope.markets[k].Id == selections_tmp[i].MarketId){ 				
							selections.push(selections_tmp[i]);
						};
					};
			
				$scope.markets[k].Selections = selections;

			 
			};
			
			//console.log("$scope.markets.length : " + $scope.markets.length);
			//console.log($scope.markets);
			
			selections_tmp = null;
			selections = null;
				
			};
			
			data = null;
			
		}).error(function(data, status, headers, config) {
			console.log(status);
			data = null;
		});
 };

	$scope.getStatusbyMatchId = function(mid,sid) {
	
	   $http({
				method: 'GET', 
				url: 'jsp/getStatusbyMatchId.jsp', 
				params: { 'mid' : mid , 'sid' : sid},
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		 }).success(function(data, status, headers, config) {		
		 			
		 			console.log("getStatusbyMatchId");
		 			
			if(data) {
								
				if(data.EventId !== undefined && data.EventId !== null && data.EventId.length > 0){
					
					$scope.liveTop = [];
					
					switch(sid) {
		     	 		   
						case "1":					 
				   		$scope.liveTop.push({	
				   			MId : data.EventId,							   			
				   			CornerScore: data.CornerScore,
					      CurrentMinute: data.CurrentMinute,
					      DangerousAttackScore: data.DangerousAttackScore,
					      EventType: data.EventType,
					      EventTypeId : data.EventTypeId,
					      FreeKickScore: data.FreeKickScore,
					      Id: data.Id,
					      Info: data.Info,
					      //IsTimeout: IsTimeout
					      //MatchLength: 90,
					      PenaltyScore: data.PenaltyScore,
					      Period: data.Period,
					      RedcardScore: data.RedcardScore,
					      Score: data.Score,
					      Set1CornerScore: data.Set1CornerScore,
					      Set1RedCardScore: data.Set1RedCardScore,
					      Set1Score: data.Set1Score,
					      Set1YellowCardScore: data.Set1YellowCardScore,
					      Set2CornerScore: data.Set2CornerScore,
					      Set2RedCardScore: data.Set2RedCardScore,
					      Set2Score: data.Set2Score,
					      Set2YellowCardScore: data.Set2YellowCardScore,
					      Set3Score: data.Set3Score,
					      Set4Score: data.Set4Score,
					      Set5Score: data.Set5Score,
					      ShotOffTargetScore: data.ShotOffTargetScore,
					      ShotOnTargetScore: data.ShotOnTargetScore,
					      //SportKind: 1,
					      YellowcardScore: data.YellowcardScore,   
					      Side: data.Side, 	
				  		});								  		
						break;
					
					case "2": 	
			   		$scope.liveTop.push({
			      	MId : data.EventId,			      	
				      EventType: data.EventType,
				      EventTypeId : data.EventTypeId,
				      ExtraTimeScore: data.ExtraTimeScore,
				      Info: data.Info,
				      Period: data.Period,
				      PeriodScore: data.PeriodScore,
				      RemainingTime: data.RemainingTime,
				      Score: data.Score,
				      Server: data.Server,
				      Set1Score: data.Set1Score,
				      Set2Score: data.Set2Score,
				      Set3Score: data.Set3Score,
				      Side: data.Side,
		  		});								  		
	  			break;
	  			
	  			case "3": 	
			   		$scope.liveTop.push({			   			
			      	MId : data.EventId,			      	
				      EventType: data.EventType,
				      EventTypeId : data.EventTypeId,
				      ExtraTimeScore: data.ExtraTimeScore,
				      Info: data.Info,
				      Period: data.Period,
				      //PeriodLength: 10,
				      QuarterScore: data.QuarterScore,
				      RemainingTime: data.RemainingTime,
				      Score: data.Score,
				      Server: data.Server,
				      Set1Score: data.Set1Score,
				      Set2Score: data.Set2Score,
				      Set3Score: data.Set3Score,
				      Set4Score: data.Set4Score,
				      Set5Score: data.Set5Score,
				      Side: data.Side,
			  		});								  		
			  		
			  		//console.log($scope.liveTop);
		  			break;
		  				  			
					case "4": 						
						$scope.liveTop.push({
			      	MId : data.EventId,				      	
			      	AcesScore: data.AcesScore,
				      DoubleFaultScore:data.DoubleFaultScore,
				      //EventTimeUtc: "2017-09-05T05:00:58.1542701",
				      EventType: data.EventType,
				      EventTypeId : data.EventTypeId,
				      //EventTypeId: 206,
				      GameScore: data.GameScore,
				      //Id: 129439219,
				      Info: data.Info, //"1:0, (6:4), (3:1) 30:15*;",
				      Period: data.Period,
				      Score: data.Score,
				      Server: data.Server,
				      Set1Score: data.Set1Score,
				      Set2Score: data.Set2Score,
				      Set3Score: data.Set3Score,
				      Set4Score: data.Set4Score,
				      Set5Score: data.Set5Score,
				      SetCount: data.SetCount, //3,
				      SetScore: data.SetScore, //"3:1",
				      Side: data.Side,      	
						});		
					break;
					
					case "5": 	
			   		$scope.liveTop.push({
			      	MId : data.EventId,			      	
			      	EventType: data.EventType,
			      	EventTypeId : data.EventTypeId,
				      Info: data.Info,
				      //IsTimeout: true,
				      Period: data.Period,
				      PeriodScore: data.PeriodScore,
				      Score: data.Score,
				      Server: data.Server,
				      Set1Score: data.Set1Score,
				      Set2Score: data.Set2Score,
				      Set3Score: data.Set3Score,
				      Set4Score: data.Set4Score,
				      Set5Score: data.Set5Score,
				      Side: data.Side,
				      SportKind: data.SportKind,   	
			  		});								  		
		  			break;
					
					case "11": 	
			   		$scope.liveTop.push({
			      	MId : data.EventId,			      	
			      	EventType: data.EventType,
			      	EventTypeId : data.EventTypeId,
				      Info: data.Info,
				       //IsTimeout: true,
				      Period: data.Period,
				      Score: data.Score,
				      Set1Score: data.Set1Score,
				      Set2Score: data.Set2Score,
				      Set3Score: data.Set3Score,
				      Set4Score: data.Set4Score,
				      Set5Score: data.Set5Score,
				      Set6Score: data.Set6Score,
				      Set7Score: data.Set7Score,
				      Set8Score: data.Set8Score,
				      Set9Score: data.Set9Score,
				      Set10Score: data.Set10Score,
				      Side: data.Side,	  	
			  		});								  		
		  			break;
		  		
		  		
		  		
		  		
		  		
					  					
		  			      
      
				
					}; //end switch

								      		
			};
		};
			
			data = null;
			
		}).error(function(data, status, headers, config) {
			console.log(status);
			data = null;
		});
 };
 	
  function setMarketbyMatchId() {
		
		var s = "";
		
		for (var k = 0; k < $scope.markets.length; k++) {
			
			$scope.selections = [];
			
			for (var i = 0; i < $scope.selections_tmp.length; i++) {
				
				//console.log("$scope.selections_tmp[i].MarketId : " + $scope.selections_tmp[i].MarketId);
				
				if($scope.markets[k].Id == $scope.selections_tmp[i].MarketId){ 
					//console.log("matched");					
					$scope.selections.push($scope.selections_tmp[i]);
				};
			};
			
			$scope.markets[k].Selections = $scope.selections;
			
			

		s += "<li> " +
			"<p class='active'> "+ $scope.markets[k].Name+" <span class='sports_in_bookmark'><img src='images/icon_bookmark_on.png'></span></p> " +
			"<div class='sports_in' style='display: block;'> " +
			"	<table class='sports_table_in' cellspacing='0' cellpadding='0'> " +
			"		<tbody><tr> " +
			"			<td class='sports_table_in_1'> " +
			"				<div class='sports_v_l'>AC밀란 </div> <div class='sports_v_r'>1.26</div> " +
			"			</td> " + 
			"			<td class='sports_table_in_2'> " + 
			"				<div class='sports_l_l'>유벤투스 </div> <div class='sports_l_r'> 1.26</div>" +
			"			</td>" +
			"		</tr>" +
			"		<tr>" +
			"			<td class='sports_table_in_1'>" +
			"				<div class='sports_v_l'>AC밀란 </div> <div class='sports_v_r'>1.26</div>" +
			"			</td>" +
			"			<td class='sports_table_in_2'>" +
			"				<div class='sports_l_l'>유벤투스 </div> <div class='sports_l_r'> 1.26</div>" +
			"			</td>" +
			"		</tr>" +
			"		<tr>" +
			"			<td class='sports_table_in_1'>" +
			"				<div class='sports_v_l'>AC밀란 </div> <div class='sports_v_r'>1.26</div>" +
			"			</td>" +
			"			<td class='sports_table_in_2'>" +
			"				<div class='sports_l_l'>유벤투스 </div> <div class='sports_l_r'> 1.26</div>" +
			"			</td>" +
			"		</tr>" +
			"	</tbody></table>" +
			"</div>" +
			"</li>" ;

		
		};
		
		
		
		$scope.selections = null
		$scope.selections_tmp = null;
		
		//console.log("$scope.markets.length : " + $scope.markets.length);
		//console.log($scope.markets.length);
	};
	
 	function getMarketbyMarketId(mkid){
	  	
	   $http({
				method: 'GET', 
				url: 'jsp/getMarketbyMarketId.jsp', 
				params: { 'mkid' : mkid },
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
			
			//console.log("[getMarketbyMarketId] : " + mkid + ";" + data);
				
			if(data) {
				
				console.log("[getMarketbyMarketId] (1): "+ $scope.markets.length);
				console.log($scope.markets);
				
				//console.log(data);
				
				//angular.forEach(data, function(obj,idx) {
						
						if(data.Selections != undefined){	
														
							//for (var i = 0; i < data.Selections.length; i++) {								
							//		$scope.selections_tmp.push(data.Selections[i]);
							//};
							console.log(data);
							$scope.markets.push(data);
							
						};
				//});
				
				console.log("[getMarketbyMarketId] (2): "+ $scope.markets.length);
				//$scope.markets.push(data);
				//console.log("[getMarketbyMarketId] (2) pushed: "+ $scope.markets.length);
				
				//$scope.markets = $filter('omit')($scope.markets,'IsSuspended||!IsVisible');  // delete ID				
				//console.log("[getMarketbyMarketId] (3) omit: "+ $scope.markets.length);
								
				/*
				//$scope.markets = [];
				$scope.selections_tmp = [];
				
				//console.log("[getMarketbyMarketId] data.length : " + data.length);
				console.log(data);
				
				//angular.forEach(data, function(obj,idx) {
						
						if(data.Selections != undefined){	
														
							for (var i = 0; i < data.Selections.length; i++) {								
									$scope.selections_tmp.push(data.Selections[i]);
							};
						}
						
						console.log($scope.selections_tmp);
						
						if(data.Date != undefined){			
							console.log($scope.markets);												
							data.Selections = $scope.selections_tmp;								
							$scope.markets.push(data);
							console.log($scope.markets);
						
						};
										
				//});
				$scope.selections_tmp =[];
				
			//$scope.setMarketbyMarketId();
				
			
			*/
			};
			
			data = null;
			
		}).error(function(data, status, headers, config) {
			console.log(status);
			data = null;
		});
 }
 

 //function getNewMatchbyMatchId(mid) {
  function subLoadLiveMatch(mid) {
  
  	console.log("getNewMatchbyMatchId step1");
  		      
	   $http({
				method: 'GET', 
				//url: 'getMatchResultbyMatchId.jsp', 
				url:'jsp/subLoadLiveMatch.jsp',
				params: { 'mid' : mid },
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
				
				console.log(data);
				console.log(data[0].Match);
				console.log(data[0].Match.SportId);
				console.log(data[0].Market);
				console.log(data[0].Stat);
				console.log(data[0].Result);
				
				console.log(data[0].Match[0]);
				console.log(data[0].Match[0].SportId);
				console.log(data[0].Market[0]);
				console.log(data[0].Stat[0]);
				console.log(data[0].Result[0]);
				
				
				if(data[0].Market !== undefined && data[0].Market !== null && data[0].Market.length > 0){
					
					for (var j = 0; j < data[0].Market.length ; j++) {						
						$scope.leftMarketCnt.push(data[0].Market[j]);							
					}
				}
								
				if(data[0].Result !== undefined && data[0].Result !== null && data[0].Result.length > 0){
					
					var w1Price ="-";
					var w2Price ="-";
					var xPrice ="-";
					
					var w1SelId ="";
					var xSelId ="";
					var w2SelId ="";
				
				/*				
					for(var i = data[0].Result[0].Selections.length - 1; i >= 0; i--){
						
						//var select = mResult[0].Selections[i];
						
						if(data[0].Result[0].Selections[i].Name == 'W1') {
							w1SelId = data[0].Result[0].Selections[i].Id ;
							w1Price = data[0].Result[0].Selections[i].Price ;
						
						} else if(data[0].Result[0].Selections[i].Name == 'X') {
							xSelId = data[0].Result[0].Selections[i].Id ;
							xPrice = data[0].Result[0].Selections[i].Price ;
						
						} else if(data[0].Result[0].Selections[i].Name == 'W2') {
							w2SelId = data[0].Result[0].Selections[i].Id ;
							w2Price = data[0].Result[0].Selections[i].Price ;
						}
					}
			    */
			    
			    for(var i = data[0].Selections[0].Selections.length - 1; i >= 0; i--){
						
						//var select = mResult[0].Selections[i];
						
						if(data[0].Selections[0].Selections[i].Name == 'W1') {
							w1SelId = data[0].Selections[0].Selections[i].Id ;
							w1Price = data[0].Selections[0].Selections[i].Price ;
						
						} else if(data[0].Selections[0].Selections[i].Name == 'X') {
							xSelId = data[0].Selections[0].Selections[i].Id ;
							xPrice = data[0].Selections[0].Selections[i].Price ;
						
						} else if(data[0].Selections[0].Selections[i].Name == 'W2') {
							w2SelId = data[0].Selections[0].Selections[i].Id ;
							w2Price = data[0].Selections[0].Selections[i].Price ;
						}
					}
					  
			   	$scope.liveStat.push({
			  		SId : data[0].Match[0].SportId,
			  		SName : data[0].Match[0].SName,	    		
			  		RId : data[0].Match[0].RegionId,
			  		RName : data[0].Match[0].RName,
			  		CId : data[0].Match[0].CompetitionId,
			  		CName : data[0].Match[0].CName,
			    	MId : data[0].Match[0].Id,
			    	HTName : data[0].Match[0].HTeamName,
			    	ATName : data[0].Match[0].ATeamName,
			    	Period :  "0",
			    	//EType : mMatchStat[0].EventType,
			    	HTeamScore : "0",
			    	ATeamScore : "0",
			    	IsSuspended : data[0].Match[0].IsSuspended,
			    	CurrentMinute : "",
			    	RemainingTime : "",
			    	Info : "",
			    	
					});
			  			  		
					$scope.liveMarket.push({
			  		SId : data[0].Match[0].SportId,
			  		SName : data[0].Match[0].SName,	    		
			  		RId : data[0].Match[0].RegionId,
			  		RName : data[0].Match[0].RName,
			  		CId : data[0].Match[0].CompetitionId,
			  		CName : data[0].Match[0].CName,
			    	MId : data[0].Match[0].Id,
			    	HTName : data[0].Match[0].HTeamName,
			    	ATName : data[0].Match[0].ATeamName,
			    	Period :  "0", //(data[0].Stat[0].Period == undefined) ? "0" : data[0].Stat[0].Period, //mStat[0].CurrentMinute, data[0].Stat[0].Period, data[0].Stat[0].Period,
			    	HTeamScore : "0",
			    	ATeamScore : "0",
			    	//Market : obj.Market,
			    	MarketId : data[0].Result[0].Id, 
			    	IsSuspended : data[0].Result[0].IsSuspended, 
			    	CurrentMinute : "", //(data[0].Stat[0].CurrentMinute == undefined) ? "" : data[0].Stat[0].CurrentMinute, //mStat[0].CurrentMinute,
			    	RemainingTime : "", //(data[0].Stat[0].RemainingTime == undefined) ? "" : data[0].Stat[0].RemainingTime, //mStat[0].RemainingTime,  
			    	w1SelId : w1SelId,
			    	xSelId : xSelId,
			    	w2SelId : w2SelId,
			    	BW1Price : w1Price, 
				    BXPrice : xPrice,
				    BW2Price : w2Price,			      	
			    	W1Price : w1Price,
			    	XPrice : xPrice,
			    	W2Price : w2Price,
					});
					
				}
				
				data = null;
				
		}).error(function(data, status, headers, config) {
				console.log(status);
				data = null;
		});
 };
 
 /*
 	function getNewMatchbyMatchIdforCnt(mid) {
 // $scope.getNewMatchbyMatchIdforCnt = function(mid) {  
  		      
	   $http({
				method: 'GET', 
				url: 'jsp/loadLiveMatch.jsp', 
				params: { 'mid' : mid },
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		 }).success(function(data, status, headers, config) {
			
				if(data) {	
					
					if(data[0].Stat !== undefined && data[0].Stat !== null && data[0].Stat.length > 0){

						$scope.liveMatchCnt.push({
				    	MId : data[0].Id,
						});
												
						for(var i = $scope.preMatch.length - 1; i >= 0; i--){
  						
  						if($scope.preMatch[i].MId == data[0].Id){
  							$scope.preMatch.splice(i,1);
  						};

  					};					
					};	
				};
				
				data = null;
								
		}).error(function(data, status, headers, config) {
				console.log(status);
				data = null;
		});
 };
*/
/*
 	function getMatchInfobyCompetition(cid) {
	      
	   $http({
				method: 'GET', 
				url: '/angular_json/getMatchInfobyCompetition.jsp', 
				params: { 'cid' : cid },
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
			
				//$scope.preMarket =[];
			
				if(data) {
					
				//console.log("[getMatchInfobyCompetition] data.length : " + data.length);				
				//console.log(data);

				angular.forEach(data, function(obj,idx) {
										
					var w1Price ="-";
					var w2Price ="-";
					var xPrice ="-";
					//var marketId = "";
					var w1SelId ="";
					var xSelId ="";
					var w2SelId ="";
					
					console.log(obj);
					
					if(obj.Result[0] !== null && obj.Result[0] !== undefined ){
												
						var mResult = obj.Result[0].Selections;
												
						for (var i = 0; i < mResult.length; i++) {
						
							if(mResult[i].Name == 'W1') w1Price = mResult[i].Price ;
							else if(mResult[i].Name == 'X') xPrice = mResult[i].Price ;
							else if(mResult[i].Name == 'W2') w2Price = mResult[i].Price ;
						}
			  		
				  		$scope.preMarket.push({
				    		SId : obj.SportId,
				    		SName : obj.SName,	    		
				    		RId : obj.RegionId,
				    		RName : obj.RName,
				    		CId : obj.CompetitionId,
				    		CName : obj.CName,
				      	MId : obj.Id,
				      	Date : obj.Date,
				      	HTName : obj.HTeamName,
				      	ATName : obj.ATeamName,				      	
				      	Market : obj.Market, //marketId,
				      	MarketId : obj.Result[0].Id, //marketId,
				      	IsSuspended : obj.IsSuspended, // IsSuspended,	
				      	//IsSuspendedR: obj.Result[0].IsSuspended, // IsSuspended,	    	
				      	BW1Price : w1Price, 
						    BXPrice : xPrice,
						    BW2Price : w2Price,			      	
				      	W1Price : w1Price,
				      	XPrice : xPrice,
				      	W2Price : w2Price,
				  		});			  		

			  	}else{
			  		
			  		$scope.preMarket.push({
			    		SId : obj.SportId,
			    		SName : obj.SName,	    		
			    		RId : obj.RegionId,
			    		RName : obj.RName,
			    		CId : obj.CompetitionId,
			    		CName : obj.CName,
			      	MId : obj.Id,
			      	Date : obj.Date,
			      	HTName : obj.HTeamName,
			      	ATName : obj.ATeamName,				      	
			      	Market : obj.Market, //marketId,
			      	MarketId : null, //marketId,
			      	IsSuspended : true, // IsSuspended,	
			      	//IsSuspendedR: obj.Result[0].IsSuspended, // IsSuspended,	    	
			      	BW1Price : "0", 
					    BXPrice : "0",
					    BW2Price : "0",			      	
			      	W1Price : "0",
			      	XPrice : "0",
			      	W2Price : "0",
				  		});	
			  	}
			  				  	
			  }); 
			  
			  //$scope.setMatchInfobyCompetition();
			  //setMatchInfobyCompetition();
		  	//console.log($scope.PreMarket);	
						//$scope.dmatch.push(data);
					
				};
				
				data = null;
			}).error(function(data, status, headers, config) {
				console.log(status);
				data = null;	
			});
 }
 */

/*
 function setMatchInfobyCompetition(cid) {
 	
	  $scope.preMarket =[];	  	
	  
	  for(var i = $scope.preMarket_tmp.length - 1; i >= 0; i--){ 		  		
			$scope.preMarket.push($scope.preMarket_tmp[i]);		
		};
		
		$scope.preMarket_tmp =[];
	
	};
*/

 	function getMatchInfobyCompetition(cid) {
	      	      
	   $http({
				method: 'GET', 
				url: 'jsp/getMatchInfobyCompetition.jsp', 
				params: { 'cid' : cid },
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
					
			$scope.preMarketCnt = [];
			$scope.preMarket = [];
			$scope.tabCId = cid;
			
			console.log("[getMatchInfobyCompetition] data.length : " + data.length)
			//console.log(data[0].Market)				
			//angular.forEach(data, function(obj,idx) {
			//console.log(data[0].Market.length);
			//console.log(data[0].Match.length);
			//console.log(data[0].Result.length);
			
			console.log(data);
			console.log("data[0].Market : " + data[0].Market.length);
			console.log("data[0].Match : " + data[0].Match.length);
			console.log("data[0].Result : " + data[0].Result.length);
			
			data[0].Market.length
				if(data[0].Market !== null &&  data[0].Market !== undefined && data[0].Market.length > 0){
					
					for (var j = 0; j < data[0].Market.length ; j++) {						
						$scope.preMarketCnt.push(data[0].Market[j]);							
					}
				}
				
					
				//console.log($scope.preMarketCnt)
									
				if(data[0].Match !== null &&  data[0].Match !== undefined && data[0].Match.length > 0){
					
					for (var j = 0; j < data[0].Match.length ; j++) {
											
						var w1Price ="-";
						var w2Price ="-";
						var xPrice ="-";

						var w1SelId ="";
						var xSelId ="";
						var w2SelId ="";
											
						var mMatchResult = data[0].Result.filter(function (el) { return el.MatchId == data[0].Match[j].Id; });
						//var mMatchMarket = obj.Market.filter(function (el) { return el.MatchId == obj.Match[j].Id; });
						
						console.log("mMatchResult");
						console.log(mMatchResult);
												
						if(mMatchResult !== null && mMatchResult !== undefined && mMatchResult.length > 0 ){
													
							//var mResult = mMatchResult[0].Selections;
							var mResult = data[0].Selection.filter(function (el) { return el.MarketId == mMatchResult[0].Id });
							
							for (var i = 0; i < mResult.length; i++) {								
								if(mResult[i].Name == 'W1') {
									w1SelId = mResult[i].Id ;
									w1Price = mResult[i].Price ;
								
								} else if(mResult[i].Name == 'X'){
									xSelId = mResult[i].Id ;
									xPrice = mResult[i].Price ;
								
								} else if(mResult[i].Name == 'W2'){
									w2SelId = mResult[i].Id ;
									w2Price = mResult[i].Price ;
								}
							}
				  									  			  		
				  		$scope.preMarket.push({
				    		SId : data[0].Match[j].SportId,
				    		SName : data[0].Match[j].SName,	    		
				    		RId : data[0].Match[j].RegionId,
				    		RName : data[0].Match[j].RName,
				    		CId : data[0].Match[j].CompetitionId,
				    		CName : data[0].Match[j].CName,
				      	MId : data[0].Match[j].Id,
				      	Date : data[0].Match[j].Date,
				      	HTName : data[0].Match[j].HTeamName,
				      	ATName : data[0].Match[j].ATeamName,				      	
				      	//Market : mMatchMarket, //obj.Market.filter(function (el) { return el.MatchId == obj.Match[j].Id; }), //; obj.Match.Market, //marketId,
				      	MarketId : mMatchResult[0].Id, //marketId,
				      	IsSuspended : mMatchResult[0].IsSuspended, // IsSuspended,	
				      	//IsSuspendedR: obj.Result[0].IsSuspended, // IsSuspended,	    	
				      	W1SelId : w1SelId,
		    				XSelId : xSelId,
		    				W2SelId : w2SelId,	
				      	BW1Price : w1Price, 
						    BXPrice : xPrice,
						    BW2Price : w2Price,			      	
				      	W1Price : w1Price,
				      	XPrice : xPrice,
				      	W2Price : w2Price,
				  		});			  		

				  	}else{
				  		
				  		$scope.preMarket.push({
				    		SId : data[0].Match[j].SportId,
				    		SName : data[0].Match[j].SName,	    		
				    		RId : data[0].Match[j].RegionId,
				    		RName : data[0].Match[j].RName,
				    		CId : data[0].Match[j].CompetitionId,
				    		CName : data[0].Match[j].CName,
				      	MId : data[0].Match[j].Id,
				      	Date : data[0].Match[j].Date,
				      	HTName : data[0].Match[j].HTeamName,
				      	ATName : data[0].Match[j].ATeamName,				      	
				      	//Market : mMatchMarket, //obj.Market, //marketId,
				      	MarketId : null, //marketId,
				      	IsSuspended : true, // IsSuspended,	
				      	//IsSuspendedR: obj.Result[0].IsSuspended, // IsSuspended,	   
				      	W1SelId : "0",
		    				XSelId : "0",
		    				W2SelId : "0",	 	
				      	BW1Price : "0", 
						    BXPrice : "0",
						    BW2Price : "0",			      	
				      	W1Price : "0",
				      	XPrice : "0",
				      	W2Price : "0",
					  		});	
				  	}
			  				  	
			    };
			     
		  	};
			//});
				
			data = null;
				
			}).error(function(data, status, headers, config) {
				console.log(status);
				data = null;	
			});
 }
  	
	function finishLiveMatch(mid) {
		
		$scope.liveStat = $filter('omit')($scope.liveStat,'MId ==' + mid);  // delete ID			
		
		$scope.liveMarket = $filter('omit')($scope.liveMarket,'MId ==' + mid);  // delete ID	
		
		$scope.markets = $filter('omit')($scope.markets,'MatchId ==' + mid);  // delete ID	
		
		$scope.leftMarketCnt = $filter('omit')($scope.leftMarketCnt,'MatchId ==' + mid);  // delete ID	

		console.log("REMOVED MATCH :" + mid)
		console.log("TOTAL LIVE MATCHES :" + $scope.liveStat.length)
		
		
		/*
		for(var i = $scope.liveStat.length - 1; i >= 0; i--){
			if($scope.liveStat[i].MId == mid){
				$scope.liveStat.splice(i,1);	
			}
		};

		for(var i = $scope.liveMarket.length - 1; i >= 0; i--){
			if($scope.liveMarket[i].MId == mid){
				$scope.liveMarket.splice(i,1);	
			}
		};
		*/
		
	}


	function sub_loadGetMatchMarket(response) {		//market tab

		angular.forEach(response.Objects, function(obj,idx) {
		
			//var AmarketSub = response.Objects[a];
			
			var valid_market = $scope.validMKTypeId.indexOf(obj.MarketTypeId);
			
				
			if (valid_market < 0){		
				//console.log("Unused marketTypeId : " + obj.MarketTypeId);
					return;  //un-used MarketTypeId
			
			}; 
			
			
			if(mode == "LiveMatch" || mode == "LiveMarket"){
				
				var nMK = true;
											
											
				for (var a=0; a<$scope.leftMarketCnt.length; a++) {
				
					if($scope.leftMarketCnt[a].Id == obj.Id){
						
						nMK = false;
						
						$scope.leftMarketCnt[a].IsSuspended = obj.IsSuspended;
						$scope.leftMarketCnt[a].IsVisible = obj.IsVisible;
						
						break;
						
					};
				
				}
								
				if(nMK){
					
					for (var b = 0; b < $scope.liveStat.length; b++) {
								
						if($scope.liveStat[b].MId == obj.MatchId){
							
							$scope.leftMarketCnt.push({
				    		Id : obj.Id,
				    		IsSuspended : obj.IsSuspended,	    		
				    		IsVisible : obj.IsVisible,
				    		MatchId : obj.MatchId,
							});
							
								break;
							console.log("$scope.leftMarketCnt.push");
						};
					};		
					
				};
			};	
					
				
			if(mode == "LiveMatch"){
			
				
				for (var c = 0; c < $scope.liveMarket.length; c++) {
					
				//angular.forEach($scope.liveMarket, function(obj2,idx2) {
					
				//$scope.liveMarket.map(function(x) {
			 		
			 		var lm = $scope.liveMarket[c];
			 		
				 	if(lm.MarketId == obj.Id){			 		
				 		
				 		var w1Price ="-";
				  	var w2Price ="-";
						var xPrice ="-";
						var w1SelId ="";
						var xSelId ="";
						var w2SelId ="";
										
		    		for (var j = 0; j < obj.Selections.length; j++) {
							
						
			    		if(obj.Selections[j].Name == 'W1') {
			    			w1SelId = obj.Selections[j].Id ;
			    			w1Price = obj.Selections[j].Price ;
			    		
			    		} else if(obj.Selections[j].Name == 'X') {
								xSelId = obj.Selections[j].Id ;
								xPrice = obj.Selections[j].Price ;
							
							} else if(obj.Selections[j].Name == 'W2') {
								w2SelId = obj.Selections[j].Id ;
								w2Price = obj.Selections[j].Price ;
							}
						}
	      									
						if(w1Price != lm.W1Price || xPrice != lm.XPrice || w2Price != lm.W2Price ||  lm.IsSuspended != obj.IsSuspended){
							
							$scope.liveMarket = $filter('omit')($scope.liveMarket,'MarketId ==' + obj.Id);  // delete ID		
							
			        $scope.liveMarket.push({
				    		SId : lm.SId,
				    		SName : lm.SName,	    		
				    		RId : lm.RId,
				    		RName : lm.RName,
				    		CId : lm.CId,
				    		CName : lm.CName,
				      	MId : lm.MId,
				      	HTName : lm.HTName,
				      	ATName : lm.ATName,
				      	Period :  lm.Period,
				      	HTeamScore : lm.HTeamScore,
				      	ATeamScore : lm.ATeamScore,
				      	//Market : market_tmp,
				      	MarketId : obj.Id,
		      			IsSuspended : obj.IsSuspended,
		      			CurrentMinute : lm.CurrentMinute,
								RemainingTime : lm.RemainingTime,	
								W1SelId : w1SelId,
								XSelId : xSelId,
								W2SelId : w2SelId,		    	
		      			BW1Price : lm.W1Price,
				      	BXPrice : lm.XPrice,
				      	BW2Price : lm.W2Price,			      	
				      	W1Price : w1Price,
				      	XPrice : xPrice,
				      	W2Price : w2Price,
			  			});
			  			
			  			//console.log("update liveMarket : " + obj2.MId);
			  			//console.log(obj);

				  	};
				  						 
					};
						
				};
			
			//console.log("$scope.leftMarketCnt.length : " + 	$scope.leftMarketCnt.length);
					
			} else if(mode == "PreMatch"){
				
				
					var index_market = $scope.preMarketCnt.map(function(x) {
					return x.Id;  
					}).indexOf(obj.Id);
						
					if (index_market > -1){		    	
						
						$scope.preMarketCnt = $filter('omit')($scope.preMarketCnt,'Id ==' + obj.Id);  // delete ID			
						
						$scope.preMarketCnt.push({
			    		Id : obj.Id,
			    		IsSuspended : obj.IsSuspended,	    		
			    		IsVisible : obj.IsVisible,
			    		MatchId : obj.MatchId,
						});					
						
					} else {
						
					var index_match = $scope.preMarket.map(function(x) {
						return x.MId;  
					}).indexOf(obj.MatchId);
						
						if (index_match > -1){
							
							$scope.preMarketCnt.push({
				    		Id : obj.Id,
				    		IsSuspended : obj.IsSuspended,	    		
				    		IsVisible : obj.IsVisible,
				    		MatchId : obj.MatchId,
							});
						};
					}
					
				angular.forEach($scope.preMarket, function(obj3,idx3) {
				//for(var p = $scope.preMarket.length - 1;p >= 0; p--){				
					//var preMk = $scope.preMarket[p];					
				 	
				 	/*								
					if(obj3.MId == obj.MatchId){			//live market			
						
						console.log("obj3.MId == obj.MatchId");						
	
						//$scope.preMarket[p].Market = $filter('omit')($scope.preMarket[p].Market,'Id ==' + obj.Id);  // delete ID	
						$scope.preMarketCnt = $filter('omit')($scope.preMarketCnt,'Id ==' + obj.Id);  // delete ID	

						$scope.preMarketCnt.push({
				    		Id : obj.Id,
				    		IsSuspended : obj.IsSuspended,	    		
				    		IsVisible : obj.IsVisible,
				    		MatchId : obj.MatchId,
					 });	
					*/
						//console.log("obj3.MarketId : "+ obj3.MarketId);
						//console.log("obj.Id : "+ obj.Id);
																			
						if(obj3.MarketId == obj.Id){
							
							//console.log("obj3.MarketId == obj.Id");
							
							//var market_tmp = $scope.preMarket[p].Market;							
							//console.log("update liveMarket : " + obj3.MarketId);
							
							var w1Price ="-";
					  	var w2Price ="-";
							var xPrice ="-";
							var w1SelId ="";
							var xSelId ="";
							var w2SelId ="";
						
							//console.log(obj);
							//console.log("obj.Selections.length");
							//console.log(obj.Selections.length);
							
			    		for (var j = 0; j < obj.Selections.length; j++) {
			    			
			    			if(obj.Selections[j].Name == 'W1') {
				    			w1SelId = obj.Selections[j].Id ;
				    			w1Price = obj.Selections[j].Price ;
				    		
				    		} else if(obj.Selections[j].Name == 'X') {
									xSelId = obj.Selections[j].Id ;
									xPrice = obj.Selections[j].Price ;
								
								} else if(obj.Selections[j].Name == 'W2') {
									w2SelId = obj.Selections[j].Id ;
									w2Price = obj.Selections[j].Price ;
								}
											
							}
			      	
							if(w1Price !== obj3.W1Price || xPrice !== obj3.XPrice || w2Price !== obj3.W2Price ||  obj3.IsSuspended !== obj.IsSuspended){
					
				  			$scope.preMarket[idx3].IsSuspended = obj.IsSuspended;
				  			$scope.preMarket[idx3].W1SelId = w1SelId;
    						$scope.preMarket[idx3].XSelId = xSelId;
    						$scope.preMarket[idx3].W2SelId = w2SelId;
				  			$scope.preMarket[idx3].BW1Price =  obj3.W1Price;
					      $scope.preMarket[idx3].BXPrice =  obj3.XPrice;
					      $scope.preMarket[idx3].BW2Price =  obj3.W2Price;			      	
					      $scope.preMarket[idx3].W1Price =  w1Price;
					      $scope.preMarket[idx3].XPrice =  xPrice;
					      $scope.preMarket[idx3].W2Price =  w2Price;
					      
				  			//console.log("$scope.preMarket.push");
	  			  	};
	  			  	
	  			  	
		  			};
						
						//$scope.market_tmp = [];
						
				//}; 
				});

			}; 
			
			if(mode == "LiveMarket" || mode == "PreMatch"){
				
				if($scope.tabMId == obj.MatchId){
			
					 var newCmarket = true;	
					 	
					 //console.log("$scope.tabMId : " +  obj.MatchId);
					 
					for (var d = 0; d < $scope.markets.length; d++) {
						var mk = $scope.markets[d];
					 //angular.forEach($scope.markets, function(obj4,idx4) {	 					 
						//for(var m = $scope.markets.length - 1; m >= 0; m--){	
						
							//var selmk = $scope.markets[m];
							
							//console.log("$scope.markets[m].Id : " +  $scope.markets[m].Id);
							//console.log("obj.Id : " +obj.Id);
											
							if(mk.Id == obj.Id){
								
								//console.log("matched market : " +  obj.Id);
																
								newCmarket = false;			
													
								var sel_tmp = [];
								
								//console.log("mk.Selections.length : " +  mk.Selections.length);
								//console.log("obj.Selections.length : " + obj.Selections.length);
																							
				    		for (var j = 0; j < obj.Selections.length; j++) {
				    			
				    			for (var n = 0; n < mk.Selections.length; n++) {
				    				
				    				if(obj.Selections[j].Id == mk.Selections[n].Id) {
				    									    					
				    					//var sel = obj.Selections[j];
				    					
				    					//console.log("obj.Selections[j].Id : " +  obj.Selections[j].Id);
				    					//console.log("BPrice : " +  mk.Selections[n].Price);
				    					//console.log("Price : " +  obj.Selections[j].Price);
				    					
						    			sel_tmp.push({
													
													//AwayValue : Sel.AwayValue,
													BPrice : mk.Selections[n].BPrice,
													//Handicap : Sel.Handicap,
													//HomeValue : Sel.HomeValue,
													Id : obj.Selections[j].Id,
													//IsSuspended : Sel.IsSuspended,
													//IsVisible : Sel.IsVisible,
													MarketId : mk.Selections[n].MarketId,
													Name : mk.Selections[n].Name,
													Order : obj.Selections[j].Order,
													Price : obj.Selections[j].Price,
													
											});
											
											//console.log("pushed $scope.sel_tmp");
											//console.log($scope.sel_tmp);
											
										};
									};
								};
								

						
						//console.log("$scope.markets.length (1) : "+ $scope.markets.length);			
							//	$scope.markets.splice(m,1); 
						$scope.markets = $filter('omit')($scope.markets,'Id ==' + obj.Id);  // delete ID		
						//console.log("splice $scope.markets.length (2) omit : "+ $scope.markets.length);		
						
						/*
						console.log(selmk.Id);
						
						
						console.log("$scope.markets[m].Id " + selmk.Id);
						console.log("$scope.markets[m].MarketTypeId " + selmk.MarketTypeId);
						console.log("obj.IsSuspended " + obj.IsSuspended);
						console.log(" obj.IsVisible " + obj.IsVisible);
						console.log("$scope.markets[m].MatchId " + selmk.MatchId);
						console.log("$scope.markets[m].Name " + selmk.Name);
						console.log("sel_tmp " + sel_tmp);
						console.log("$scope.markets[m].Sequence " + selmk.Sequence);
						*/				
								
								$scope.markets.push({
									//Date : selMk.Date,
									//Handicap : obj.Handicap,
									Id : mk.Id,
									MarketTypeId : mk.MarketTypeId,
									IsSuspended : obj.IsSuspended,
									IsVisible : obj.IsVisible, 
									MatchId : mk.MatchId,
									Name : mk.Name,
									Selections : sel_tmp,
									//Selections : obj.Selections,
									Sequence : obj.Sequence,
								});
								
								//console.log("push $scope.markets.length (3) push : "+ $scope.markets.length+"\n");	
								//console.log("IsSuspended = "+ obj.IsSuspended + ', IsVisible=' + obj.IsVisible);		
								
								//console.log("$scope.markets.length (B) omit : "+ $scope.markets.length);					
								//$scope.markets = $filter('omit')($scope.markets,'IsSuspended == true || IsVisible == false');  // delete ID
								//$scope.markets = $filter('omit')($scope.markets,"IsSuspended == 'true' || IsVisible == 'false'");
								
								//$scope.markets = $filter('omit')($scope.markets,'IsSuspended||!IsVisible');  // delete ID
								//console.log("splice $scope.markets.length (c) filter : "+ $scope.markets.length + "\n");	
								//$scope.markets = $filter('omit')($scope.markets,IsSuspended || !IsVisible);  // delete ID	
								//console.log("$scope.markets.length (B) omit : "+ $scope.markets.length);
								//console.log("");
										
						   sel_tmp = [];
						  	//console.log("break");

			  			 //break; 
					  	}
					 };
					  	
					  if(newCmarket){ 
						  		console.log("find new market : Id = " + obj.Id+", MarketTypeId  = " + obj.MarketTypeId );	  		
						  		//$scope.getMarketbyMarketId(obj.Id);		
						  		getMarketbyMarketId(obj.Id);		
					  };
						
						//};
				//	});
				};
			};

			for(var r = $scope.bet.length - 1;r >= 0; r--){	
				
					var betMk = $scope.bet[r];
					//console.log("betMk");
					//console.log(betMk);
									
					if(betMk.Mkid == obj.Id){			//live market			
														
						for (var j = 0; j < obj.Selections.length; j++) {
		    					    				
		    				if(obj.Selections[j].Id == betMk.Selid) {

									$scope.bet[r].Price = obj.Selections[j].Price;
							
								};
						};	
					};
			};
			
			//sel_tmp = null;
			//Sel = null;
				
		});
			
	};

	function sub_loadGetMatchStat(response) {		//market tab
 	 	              	
  	angular.forEach(response.Objects, function(obj,idx) {
			
			var isNewMatch = true;
			
			if(mode == "LiveMatch"){ //if(islive){			
		  	
		  	angular.forEach($scope.liveStat, function(obj2,idx2) {
		  			
		  		if (obj2.MId == obj.EventId){			  			
		  						  			
		  			isNewMatch = false;
		  							  				
	  				if(obj.Score !== undefined && obj.Score !== null && obj.Score.length > 0){
	  						 			
							var HTeamScore = obj.Score.split(':')[0];
		   				var ATeamScore = obj.Score.split(':')[1];

	   				} else{
	   					
	   					var HTeamScore = obj2.HTeamScore;
		   				var ATeamScore = obj2.ATeamScore;
	   				}
	   				
				  	//console.log("[obj.CurrentMinute]  : " + obj.CurrentMinute);
				  	//console.log("[obj.RemainingTime]  : " + obj.RemainingTime);
				  		
			  		if(HTeamScore != obj2.HTeamScore || ATeamScore != obj2.ATeamScore || obj.Period != obj2.Period || obj.CurrentMinute != obj2.CurrentMinute || obj.RemainingTime != obj2.RemainingTime){  //updated score or period
	   					
		   				$scope.liveStat.splice(idx2,1);			
			   						
				   		$scope.liveStat.push({
				    		SId : obj2.SId,
				    		SName : obj2.SName,	    		
				    		RId : obj2.RId,
				    		RName : obj2.RName,
				    		CId : obj2.CId,
				    		CName : obj2.CName,
				      	MId : obj2.MId,
				      	HTName : obj2.HTName,
				      	ATName : obj2.ATName,
				      	Period :  obj.Period,				      	
				      	//GScore : GameScore,
				      	//EType : obj.EventType,	
				      	HTeamScore : HTeamScore,
				      	ATeamScore : ATeamScore,
				      	IsSuspended : obj.IsSuspended,		
				      	CurrentMinute : (obj.CurrentMinute == undefined) ? "" : obj.CurrentMinute,
	    					RemainingTime : (obj.RemainingTime == undefined) ? "" : obj.RemainingTime, //RemainingTime : obj.RemainingTime,
				      	Info : obj.Info,	      	
				  		});
			  	
			  	//console.log("[sub_loadGetMatchStat] updated live match : " + obj.EventId);
			  	//console.log(obj);
			  	/* not update? */		
			  			
			  			angular.forEach($scope.liveMarket, function(obj3,idx3) {
			  									  	
		  				//for(var j = $scope.liveMarket.length - 1; j >= 0; j--){
		  					
		  					//var liveMk = $scope.liveMarket[j];
						
								if (obj3.MId == obj.EventId){
					  			
					  			$scope.liveMarket[idx3].HTeamScore = HTeamScore;
					  			$scope.liveMarket[idx3].ATeamScore = ATeamScore;
					  			$scope.liveMarket[idx3].Period = obj.Period;
					  			$scope.liveMarket[idx3].CurrentMinute = (obj.CurrentMinute == undefined) ? "" : obj.CurrentMinute; //obj.CurrentMinute;
					  			$scope.liveMarket[idx3].RemainingTime = (obj.RemainingTime == undefined) ? "" : obj.RemainingTime; //obj.RemainingTime;
					  										  							  		
				  			};
				  		});
			  		};
				  		
				  };
				}); 
			
			} else if(mode == "LiveMarket"){ 	
    					  	
		  	angular.forEach($scope.liveStat, function(obj2,idx2) {
		  			 	
		  		if (obj2.MId == obj.EventId){			  			
		  						  			
		  			isNewMatch = false;
		  				
	  				if(obj.Score !== undefined && obj.Score !== null && obj.Score.length > 0){
	  								  					
			  			var HTeamScore = obj.Score.split(':')[0];
		   				var ATeamScore = obj.Score.split(':')[1];
	   				
	   				} else{
	   					
	   					var HTeamScore = obj2.HTeamScore;
		   				var ATeamScore = obj2.ATeamScore;
	   				}
		   			
		   			//console.log("[sub_loadGetMatchStat(LiveMarket)] HTeamScore : " + HTeamScore+",  ATeamScore:"+ ATeamScore);
		   			
		   			if(HTeamScore != obj2.HTeamScore || ATeamScore != obj2.ATeamScore || obj.Period != obj2.Period || obj.CurrentMinute != obj2.CurrentMinute || obj.RemainingTime != obj2.RemainingTime){  //updated score or period
	   				
		   				$scope.liveStat.splice(k,1);			
			   						
				   		$scope.liveStat.push({
				    		SId : obj2.SId,
				    		SName : obj2.SName,	    		
				    		RId : obj2.RId,
				    		RName : obj2.RName,
				    		CId : obj2.CId,
				    		CName : obj2.CName,
				      	MId : obj2.MId,
				      	HTName : obj2.HTName,
				      	ATName : obj2.ATName,
				      	Period :  obj.Period,				      	
				      	//GScore : GameScore,
				      	//EType : obj.EventType,	
				      	HTeamScore : HTeamScore,
				      	ATeamScore : ATeamScore,
				      	IsSuspended : obj.IsSuspended,		
				      	CurrentMinute : (obj.CurrentMinute == undefined) ? "" : obj.CurrentMinute, //obj.CurrentMinute,
	    					RemainingTime : (obj.RemainingTime == undefined) ? "" : obj.RemainingTime, //obj.RemainingTime,
				      	Info : obj.Info,	      	
				  		});
			  		};
			  						   				
   					if ($scope.tabMId == obj.EventId){
   						
	   					$scope.liveTop.splice(0,1);	
	   				
		   				switch(obj.SportKind) {
     	 		   
							case 1: 
					   		$scope.liveTop.push({							   			
					   			CornerScore: obj.CornerScore,
						      CurrentMinute: obj.CurrentMinute,
						      DangerousAttackScore: obj.DangerousAttackScore,
						      EventType: obj.EventType,
						      EventTypeId : obj.EventTypeId,
						      FreeKickScore: obj.FreeKickScore,
						      Id: obj.Id,
						      Info: obj.Info,
						      //IsTimeout: IsTimeout
						      //MatchLength: 90,
						      PenaltyScore: obj.PenaltyScore,
						      Period: obj.Period,
						      RedcardScore: obj.RedcardScore,
						      Score: obj.Score,
						      Set1CornerScore: obj.Set1CornerScore,
						      Set1RedCardScore: obj.Set1RedCardScore,
						      Set1Score: obj.Set1Score,
						      Set1YellowCardScore: obj.Set1YellowCardScore,
						      Set2CornerScore: obj.Set2CornerScore,
						      Set2RedCardScore: obj.Set2RedCardScore,
						      Set2Score: obj.Set2Score,
						      Set2YellowCardScore: obj.Set2YellowCardScore,
						      Set3Score: obj.Set3Score,
						      Set4Score: obj.Set4Score,
						      Set5Score: obj.Set5Score,
						      ShotOffTargetScore: obj.ShotOffTargetScore,
						      ShotOnTargetScore: obj.ShotOnTargetScore,
						      //SportKind: 1,
						      YellowcardScore: obj.YellowcardScore,
						      Side: obj.Side,    	
					  	});								  		
				  		break;
				  			
				  		case 2: 	
				  								  		
					   		$scope.liveTop.push({
					      	MId : obj.EventId,			      	
						      EventType: obj.EventType,
						      EventTypeId : obj.EventTypeId,
						      ExtraTimeScore: obj.ExtraTimeScore,
						      Info: obj.Info,
						      Period: obj.Period,
						      //PeriodLength: 10,
						      PeriodScore: obj.PeriodScore,
						      RemainingTime: obj.RemainingTime,
						      Score: obj.Score,
						      Server: obj.Server,
						      Set1Score: obj.Set1Score,
						      Set2Score: obj.Set2Score,
						      Set3Score: obj.Set3Score,
						      Side: obj.Side,
				  		});								  		
			  			break;
			  			
			  			case 3: 	
			  			
					   		$scope.liveTop.push({
					      	MId : obj.EventId,			      	
						      EventType: obj.EventType,
						      EventTypeId : obj.EventTypeId,
						      ExtraTimeScore: obj.ExtraTimeScore,
						      Info: obj.Info,
						      Period: obj.Period,
						      //PeriodLength: 10,
						      QuarterScore: obj.QuarterScore,
						      RemainingTime: obj.RemainingTime,
						      Score: obj.Score,
						      Server: obj.Server,
						      Set1Score: obj.Set1Score,
						      Set2Score: obj.Set2Score,
						      Set3Score: obj.Set3Score,
						      Set4Score: obj.Set4Score,
						      Set5Score: obj.Set5Score,
						      Side: obj.Side,
				  		});						
	
			  			break;
			  			
			  			case 4: 	
				   		$scope.liveTop.push({
				      	MId : obj.EventId,			      	
				      	AcesScore: obj.AcesScore,
					      DoubleFaultScore:obj.DoubleFaultScore,
					      EventType: obj.EventType,
					      EventTypeId : obj.EventTypeId,
					      GameScore: obj.GameScore,
					      Info: obj.Info, 
					      Period: obj.Period,
					      Score: obj.Score,
					      Server: obj.Server,
					      Set1Score: obj.Set1Score,
					      Set2Score: obj.Set2Score,
					      Set3Score: obj.Set3Score,
					      Set4Score: obj.Set4Score,
					      Set5Score: obj.Set5Score,
					      SetCount: obj.SetCount, 
					      SetScore: obj.SetScore, 
					      Side: obj.Side,      	
				  		});								  		
			  			break;
				  			
			  			case 5: 	
				   		$scope.liveTop.push({
				      	MId : obj.EventId,			      	
				      	EventType: obj.EventType,
				      	EventTypeId : obj.EventTypeId,
					      Info: obj.Info,
					      //IsTimeout: true,
					      Period: obj.Period,
					      PeriodScore: obj.PeriodScore,
					      Score: obj.Score,
					      Server: obj.Server,
					      Set1Score: obj.Set1Score,
					      Set2Score: obj.Set2Score,
					      Set3Score: obj.Set3Score,
					      Set4Score: obj.Set4Score,
					      Set5Score: obj.Set5Score,
					      Side: obj.Side,  	
				  		});								  		
			  			break;
				  		
				  		case 11: 	
					   		$scope.liveTop.push({
					      	MId : obj.EventId,			      	
					      	EventType: obj.EventType,
					      	EventTypeId : obj.EventTypeId,
						      Info: obj.Info,
						       //IsTimeout: true,
						      Period: obj.Period,
						      Score: obj.Score,
						      Set1Score: obj.Set1Score,
						      Set2Score: obj.Set2Score,
						      Set3Score: obj.Set3Score,
						      Set4Score: obj.Set4Score,
						      Set5Score: obj.Set5Score,
						      Set6Score: obj.Set6Score,
						      Set7Score: obj.Set7Score,
						      Set8Score: obj.Set8Score,
						      Set9Score: obj.Set9Score,
						      Set10Score: obj.Set10Score,
						      Side: obj.Side,	
					  		});								  		
				  			break;
				  			
				  		};

		  			}; 		
				  };
				}); 
			};	
			;		
			
						
		});
		
	};
		
  function sub_loadGetMatch(response) {		
  	
  	console.log("sub_loadGetMatch");
  	
  	var isNewMatch = true;
  	
  	angular.forEach(response.Objects, function(obj,idx) {
						
			if(!obj.IsBooked){
				console.log("IsBooked false");
					return;
			};
		
			//console.log("mode : " + mode);
					
			if(mode == "LiveMatch" || mode == "LiveMarket"){	
				console.log(obj); 
				
		  	angular.forEach($scope.liveStat, function(obj2,idx2) {
		  		
		  			
		  		//console.log("[sub_loadGetMatch] liveSt : " + obj2.MId); 
		  		
		  		if (obj2.MId == obj.Id){		
		  					  			
		  			isNewMatch = false;
		  			
		  			console.log("[sub_loadGetMatch] obj.Id : " + obj.Id); 
		  			
		  			
		  			if(obj2.IsVisible && !obj.IsVisible){		  				

		  				finishLiveMatch(obj.Id);
		  				
		  			} else if(!obj.IsLive){
		  				
		  				finishLiveMatch(obj.Id);
		  			
		  			} else if(obj.LiveStatus == '2'){
		  				
		  				finishLiveMatch(obj.Id);
			
		  			} else if(obj.IsLive) {
		  				
		  				//console.log("[sub_loadGetMatch] IsLive= true : " + obj.Id); 
		  				//console.log("obj.Stat : " + obj.Stat); 
		  				
		  				if(obj.Stat !== undefined && obj.Stat !== null && obj.Stat.length > 0){
									
								//var mMatchStat = obj.Stat; 	
									
								//var score = obj.Stat[0].Score.split(':');
								var HTeamScore = obj.Stat.Score.split(':')[0];
						 		var ATeamScore = obj.Stat.Score.split(':')[1];	
						 		
						 		//console.log("[sub_loadGetMatch] HTeamScore : " +HTeamScore+", ATeamScore : " +ATeamScore); 
						 			
							} else{

			   				HTeamScore = obj2.HTeamScore;
			   				ATeamScore = obj2.ATeamScore;
		   				}	   				
		   				
		   				$scope.liveStat.splice(idx2,1);			
			   						
				   		$scope.liveStat.push({
				    		SId : obj2.SId,
				    		SName : obj2.SName,	    		
				    		RId : obj2.RId,
				    		RName : obj2.RName,
				    		CId : obj2.CId,
				    		CName : obj2.CName,
				      	MId : obj2.MId,
				      	HTName : obj2.HTName,
				      	ATName : obj2.ATName,
				      	Period :  obj.Period,				      	
				      	//GScore : GameScore,
				      	//EType : '',	
				      	HTeamScore : HTeamScore,
				      	ATeamScore : ATeamScore,
				      	IsSuspended : obj.IsSuspended,	
				      	CurrentMinute : (obj.CurrentMinute == undefined) ? "" : obj.CurrentMinute, //obj.CurrentMinute, obj.CurrentMinute,
		    				RemainingTime : (obj.RemainingTime == undefined) ? "" : obj.RemainingTime, //obj.RemainingTime, obj.,	
				      	Info : obj.Info,	      	
				  		});
				  		
				  		//console.log("[sub_loadGetMatch] liveStat.push : " + obj.Id+", obj.IsSuspended : "+obj.IsSuspended); 
				  
				  	};
					};
				});
				
				if(isNewMatch){	
					
					console.log("isNewMatch : true");
					
					isNewMatch = false;
					
					if(obj.IsVisible && obj.IsLive && obj.LiveStatus =='1'){		
						console.log("go to getNewMatchbyMatchId");
						//getNewMatchbyMatchId(obj.Id);	
						subLoadLiveMatch(obj.Id);	
						
					}else if(obj.IsVisible && !obj.IsLive){ //pre match 상태에 따라 삭제도 가능
						
						/*
						if(obj.MatchStatus =='0'){
							// add
						} else if(obj.MatchStatus =='1'){
							// del
						}
						*/
						
						console.log("$scope.preMatchCnt.length(1) : " + $scope.preMatchCnt.length);
						
						$scope.preMatchCnt = $filter('omit')($scope.preMatchCnt,'MId ==' + obj.Id);  // delete ID			
						console.log("$scope.preMatchCnt.length(2) : " + $scope.preMatchCnt.length);
						
						if(obj.MatchStatus =='0'){
							console.log("obj.MatchStatus : 0 ");
							$scope.preMatchCnt.push({
										CId : obj.CompetitionId,
		    						MId : obj.Id,
							});			
							
							console.log("add preMatchCnt");
										
						}
						
						console.log("$scope.preMatchCnt.length(3) : " + $scope.preMatchCnt.length);
					};
				
				};
			
			} else { // other mode 경기가 시작되었으면 배팅금지.
				
			
						
				if(obj.IsVisible && obj.IsLive && obj.LiveStatus =='1'){	
					
					var index_livematch = $scope.liveMatchCnt.map(function(x) {
							return x.MId;  
					}).indexOf(obj.Id);
					
					if (index_livematch < 0){	
						
							console.log("new Live Match CNT");
							
				  		$scope.liveMatchCnt.push({
    						MId : obj.Id,
							});
							
							console.log("Live Match length : " + $scope.liveMatchCnt.length);							
					};
				
				}else if(obj.IsVisible && !obj.IsLive){
					
					var index_prematch = $scope.preMatch.map(function(x) {
							return x.MId;  
						}).indexOf(obj.Id);
					
					if (index_prematch < 0){	
						
						console.log("new Pre Match");
						
						subLoadPreMatch(obj.Id); //reg new prematch				
				  		
					};
				};
							
			};
			
		//}
				//};
			//};
		
		});

	};
	
	
	
 	$scope.getWidth = function(cnt){	
	
	//if(cnt > 3 ) cnt = 3;
var selWidth ="";

	if(cnt == 3 ) 	selWidth = 100/cnt-cnt; // $scope.selWidth = '399px';
	else if(cnt == 2 ) 	selWidth = 100/cnt-cnt-1; // $scope.selWidth = '605px';
	else if(cnt == 5 ) 	selWidth = 100/5-3; //(1200/5*100); ///100; ///cnt+1; // $scope.selWidth = '605px';
	else selWidth = 100/4-3; //$scope.selWidth = '296px';

	//$scope.selWidth = (1195 / cnt) +'px';
	//$scope.selWidth = (600 / cnt) +'px';
	//$scope.selWidth = (100 / cnt) +'%'; //'50%';
		//return "'" + (1200 / cnt) +"px'";
		return selWidth;
	};
	
	$scope.getBetPrice = function(){	
	
	var tBetPrice = 1;
	
	for(var h = $scope.bet.length - 1;h >= 0; h--){	
		tBetPrice = tBetPrice * $scope.bet[h].Price;
	}
		$scope.betPrice = tBetPrice;
	
		return $scope.betPrice;
	};

	$scope.removeComma = function(n) {  // 콤마제거
    if ( typeof n == "undefined" || n == null || n == "" ) {
        return "";
    }
    var txtNumber = '' + n;
    return txtNumber.replace(/(,)/g, "");
 };


$scope.comma = function(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}
 


$scope.inputNumberFormat2 = function(obj) {
    obj.value = $scope.comma($scope.uncomma(obj.value));
}

/*
$scope.$on('vAccordion:onReady', function () {
	
	alert("ready");	
  //var firstPane = $scope.panes[0];
  //$scope.accordion.toggle(firstPane.id);  
  //$scope.getMarketbyMatchId($scope.toggleMId);
 		
});


$scope.$on('my-accordion:onCollapse', function () {
	
	alert("onExpand");	
  //var firstPane = $scope.panes[0];
  //$scope.accordion.toggle(firstPane.id);  
  //$scope.getMarketbyMatchId($scope.toggleMId);
 		
});
*/


$scope.$on('my-accordion:onExpandAnimationEnd', function () {
	 console.log("onExpandAnimationEnd");
	 
  //$scope.getMarketbyMatchId($scope.toggleMId);
  //$scope.toggleMId = "0";
  $scope.tabMId = "0";
 		
});


/*

$scope.expandCallback = function () {
	alert("expanded pane");
  //console.log('expanded pane:', index, id);
};
 
$scope.collapseCallback = function () {
	alert("collapsed pane");
  //console.log('collapsed pane:', index, id));
};
*/


	$scope.openSel = function() {
			//alert("a");
	  var cname = document.getElementById("selsport").className;
	  
	  if(cname == "sports_more select open"){
	  	document.getElementById("selsport").className ="sports_more select";
	  }else {
	  	document.getElementById("selsport").className ="sports_more select open";
	  }
	  
	}

	$scope.openComp = function() {
			//alert("a");
			
	  var cname = document.getElementById("selcomp").className;
	  
	  if(cname == "sports_more select open"){
	  	document.getElementById("selcomp").className ="sports_more select";
	  }else {
	  	document.getElementById("selcomp").className ="sports_more select open";
	  }
	  
	}

	$scope.selSport = function(sid,sname) {

	  $scope.selectedSId = sid;
	  document.getElementById("selsport1").innerHTML = sname;
	}

	$scope.selComp = function(cid,cname) {
		
		console.log("$scope.selComp");
		
		  $scope.innerTab = [];
		$scope.toggleMId = "";
		$scope.tabMId = "0"; 
	  document.getElementById("selcomp1").innerHTML = cname;
	  $scope.tabDate = "0";
	  getMatchInfobyCompetition(cid)

	}
	

	$scope.llive_load = function() {
	    var myVar = setTimeout(showPage_llive, 1000);
	}

	$scope.clive_load = function() {
	    var myVar = setTimeout(showPage_clive, 1000);
	}

	$scope.cmarket_load = function() {
	    var myVar = setTimeout(showPage_cmarket, 1000);
	}

	$scope.inner_load = function() {
	    var myVar = setTimeout(showPage_inner, 2000);
	}

	$scope.us = function(mid) {
		console.log("mid : " + mid);
		
		$('#'+mid).toggleClass("fa-star fa-star-o");
		
		if( $('#'+mid).hasClass("fa-star-o") ) {
		  		//favorite('-1',game_id);
			//console.log("(-) del fav");
			//$scope.sFa(mid,sn,cn,ht,at,-1);
			$scope.sFaD(mid,"-1");
			
		} else { 
			//console.log("(+) add fav");
			//favorite('+1',game_id);					
			//$scope.sFa(mid,sn,cn,ht,at,1);
			$scope.sFaD(mid,"1");
		}
				
		//document.getElementById(mid).toggleClass("fa-star fa-star-o")
	}

	$scope.sFaD = function(mid,f) {
		
		//console.log("$scope.sFaD : mid="+mid+", f:"+f);
		
		 $scope.favMatch = [];	
		 
		$http({
				method: 'GET', 
				url: 'jsp/setFavMatch.jsp', 
				params: {'mid':mid,'f':f},
				headers: {'Content-Type': 'application/json; charset=utf-8'} 
		}).success(function(data, status, headers, config) {
	
			if(data) {			
				
					angular.forEach(data, function(obj,idx) {
							
						$scope.favMatch.push({
							Id: obj.Id,
							SId:obj.SportId,
							SName:obj.SName,
							CName:obj.CName,
							HTName:obj.HTName,
							ATName:obj.ATName,				
							Date:obj.Date,
						});
						
					});	
				
				//if(data.Selections != undefined){	
												
					//for (var i = 0; i < data.Selections.length; i++) {								
					//		$scope.selections_tmp.push(data.Selections[i]);
					//};
					//console.log($scope.favMatch);
					//$scope.markets.push(data);
					
			};
				
				//console.log("[getMarketbyMarketId] (2): "+ $scope.markets.length);
					
			data = null;
			
		}).error(function(data, status, headers, config) {
			console.log(status);
			data = null;
		});
		
}

/*	
	$scope.sFa = function(mid,sn,cn,ht,at,ed) {
    var d = new Date();
    d.setTime(d.getTime() + (ed*24*60*60*1000));   
    var expires = "expires=" + d.toGMTString();
    
    document.cookie = "sp["+mid+"]="+mid+",sn="+sn+",cn="+cn+",ht="+ht+",at="+at+";"+expires+";path=/";    
    console.log("sp["+mid+"]="+mid+",sn="+sn+",cn="+cn+",ht="+ht+",at="+at+";"+expires+";path=/");
    $scope.gCV("sp");
}

  $scope.gCV = function(sn){
  	
   var ck = document.cookie.split("; ");
   console.log("ck : " + ck);   
   
   var cNV = "";
   
   if(ck.length <= 0){
   		return cNV;
   }
   
  
   	
   for(var i = 0; i < ck.length; i++){
   	
	    if(sn == ck[i].split("=")[0].substring(0, 2) ){ 		// if find cookie name	    
	    	
	    	cNV = ck[i].split("=")[1] ; 						// paring cookie value
	     	
	     	$scope.favMatch.push({
					MId : cNV,
				});	
				
		  }
		} 
		
		console.log($scope.favMatch);
		
   }
 */
 
 
});

function showPage_llive() {
  document.getElementById("spin_llive").style.display  = "none";
  //document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}



function showPage_clive() {
  document.getElementById("spin_clive").style.display  = "none";
  //document.getElementById("loader").style.display = "none";
  document.getElementById("clive").style.display = "block";
}

function showPage_cmarket() {
  document.getElementById("spin_cmarket").style.display  = "none";
  //document.getElementById("loader").style.display = "none";
  document.getElementById("cmarket").style.display = "block";
}

function showPage_inner() {
  document.getElementById("spin_inner").style.display  = "none";
  //document.getElementById("loader").style.display = "none";
  document.getElementById("pre_inner").style.display = "block";
}

function onlyNumber(obj) {
    $(obj).keyup(function(){
         $(this).val($(this).val().replace(/[^0-9]/g,""));
    }); 
}
	
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}
 

function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}
 

function inputNumberFormat(obj) {
    obj.value = comma(uncomma(obj.value));
}






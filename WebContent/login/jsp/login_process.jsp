<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import = "bean.UserBean" %>
<%@ page import = "bean.MgAccountAvailable" %>
<%@ page import = "bean.MgBettingProfileBean" %>
<%@ page import = "bean.BetConUserBean" %>
<%@ page import = "bean.MgPlayerAccountBean" %>
<%@ page import = "dao.UserDao" %>
<%@ page import = "dao.BetConDao" %>
<%@ page import = "controller.*" %>
<%@ page import = "com.google.gson.Gson" %>
<%@ page import ="java.util.HashMap" %>
<%@ page import ="java.util.ArrayList" %>

<%@ include file="/inc/session.jsp"%>


<%

	/*	Response Code	
	 * 	9 - fail (default)
	 *  0 - success
	 *  1 - wrong password
	 *  2 - unknown userid
	 * */
	 Gson gson		= new Gson();

	String userid	= "";
	String passwd	= "";
		
	if (request.getParameter("userid") != null && request.getParameter("userid").trim().length() > 0) {
		userid =request.getParameter("userid") ;
	}
	
	if (request.getParameter("passwd") != null && request.getParameter("passwd").trim().length() > 0) {
   		passwd =request.getParameter("passwd") ;
	}
		
	UserBean ub = new UserDao().checkLogin(SITEID, userid,passwd,IP,sess.getId());
	
	int response_code = ub.getLoginStatus();
	
	if ( response_code == 0) {			
		
		SpinCubeController sc_ctrl = new SpinCubeController(SITEID+"_"+userid);  
		sc_ctrl.createPlayer();

    BetConDao bc_db		= new BetConDao();    
   	BetConUserBean bc_user	= new BetConUserBean();
    bc_user.setUsername(userid);
    bc_user.setSession_token(SITEID+"_"+userid);
    bc_user.setSite_id(1);

    bc_db.addNewBcUser(bc_user);	  
    
    
    checkSession 	= true;	
		//sess 		= request.getSession(false);
		sess.setMaxInactiveInterval(7200);	
		sess.putValue("SITEID",ub.getSiteid());
		sess.putValue("SSID",ub.getUserid());
		sess.putValue("UID",ub.getUserid());
		sess.putValue("NICK",ub.getNick());
		sess.putValue("UCLEVEL",ub.getCharge_level());
		sess.putValue("UGRADE",ub.getGrade());
		sess.putValue("UBAL",ub.getMoney());
		sess.putValue("UPOINT",ub.getPoint());
		
		
<<<<<<< HEAD
		/*	Set Game Username	*/
        String game_username			= Integer.toString(ub.getSiteid()).concat("_").concat(ub.getUserid());
        
        /*	Initialize Controllers	*/
    	TotalEgameController teg_ctrl	= new TotalEgameController();
    	SpinCubeController sc_ctrl		= new SpinCubeController(game_username);
    	BetConstructController bc_ctrl	= new BetConstructController();
    	
        /*--------------------------------------------------------------------
        |	Check registration on MG
        |-------------------------------------------------------------------*/
        String teg_json				= teg_ctrl.checkIsAccountAvailable(game_username);
        
        MgAccountAvailable teg_resp	= gson.fromJson(teg_json, MgAccountAvailable.class);
        
        if (0 == teg_resp.getStatus().getErrorCode()) {
        	/*	TEg account does not exist	*/
        	if (true == teg_resp.getResult().getAccountAvailable()) {
        		/*	Create TEg account	*/
        		MgPlayerAccountBean user_profile 				= new MgPlayerAccountBean();
        		MgBettingProfileBean bet_profile				= new MgBettingProfileBean();
        		ArrayList<MgBettingProfileBean> bet_profiles	= new ArrayList<MgBettingProfileBean>();
        		
        		String cell_prefix	= "+".concat(ub.getCell().substring(0, 1));
        		System.out.println(cell_prefix);
        		bet_profile.setCategory("LGBetProfile");
    			bet_profile.setProfileId(1202);
    			
    			bet_profiles.add(bet_profile);
    			
    			user_profile.setPreferredAccountNumber(game_username);
    			user_profile.setFirstName(ub.getUserid().concat("FNAME"));
    			user_profile.setLastName(ub.getUserid().trim().concat("LNAME"));
    			user_profile.setEmail("");
    			user_profile.setMobilePrefix(cell_prefix);
    			user_profile.setMobileNumber(ub.getCell().substring(2));
    			user_profile.setDepositAmount(0);
    			user_profile.setPinCode("newplayer1");
    			user_profile.setIsProgressive(0);
    			user_profile.setBettingProfiles(bet_profiles);
    			
    			String add_resp = teg_ctrl.addPlayerAccount(user_profile);
        	}
        	else {
        		teg_ctrl.getAllMoney(ub.getUserid(), ub.getSiteid());
        	}
        }
        
        /*--------------------------------------------------------------------
        |	Check registration on SpinCube
        |-------------------------------------------------------------------*/
        sc_ctrl.createPlayer();
        
        /*--------------------------------------------------------------------
        |	Check registration on BetContruct
        |-------------------------------------------------------------------*/
        BetConDao bc_db			= new BetConDao();
        BetConUserBean bc_user	= new BetConUserBean();
        
        bc_user	= bc_db.getUserByUsername(ub.getUserid(), ub.getSiteid());
        
        if (null == bc_user.getUsername()) {
        	/*	Create Betcon account	*/
        	bc_user.setUsername(ub.getUserid());
	        bc_user.setSession_token(Integer.toString(ub.getSiteid()).concat("_").concat(ub.getUserid()));
	        bc_user.setSite_id(ub.getSiteid());
			
	        bc_db.addNewBcUser(bc_user);
        }
=======
    
>>>>>>> f0eff0b4d78a46b187362c2569604537c22ba47a
	}
	
	HashMap<String, Object> hsm = new HashMap<String, Object>();
	
	hsm.put("result",response_code);
	hsm.put("uid",userid);
	out.println(gson.toJson(hsm).toString());
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="
	net.vavasoft.bean.UserBean,
	net.vavasoft.dao.UserDao,
	java.sql.SQLException,
	java.util.ArrayList,
	java.util.List,
	net.vavasoft.bean.MgBettingProfileBean,
	net.vavasoft.bean.MgPlayerAccountBean,
	net.vavasoft.controller.TotalEgameController,
	com.google.gson.reflect.TypeToken,
	java.util.StringTokenizer,
	net.vavasoft.bean.JoinCodeBean,
	net.vavasoft.dao.JoinCodeDao,
	net.vavasoft.bean.SmsAuthBean,
	net.vavasoft.dao.SmsDao;" %>
<%
	UserBean post_ub = new UserBean();
	JoinCodeBean jcBean = new JoinCodeBean();
	JoinCodeDao jcDao = new JoinCodeDao();
	SmsAuthBean smsBean = new SmsAuthBean();
	SmsDao smsDao = new SmsDao();

	String xForwardedForHeader = request.getHeader("X-Forwarded-For");	 
	String ip = "";
    if (xForwardedForHeader == null) {
        ip = request.getRemoteAddr();
    }else{
        ip =  new StringTokenizer(xForwardedForHeader, ",").nextToken().trim();
    }
	String cell = request.getParameter("cell_prefix").trim().substring(1) + request.getParameter("cell").trim();

	post_ub.setUserid(request.getParameter("userid").trim());
	post_ub.setBank_name(request.getParameter("bank_name").trim());
	post_ub.setBank_num(request.getParameter("bank_num").trim());
	post_ub.setBank_owner(request.getParameter("bank_owner").trim());
	post_ub.setCell(cell);
	post_ub.setPasswd(request.getParameter("passwd").trim());
	post_ub.setRecommand(request.getParameter("referrer").trim());
	post_ub.setNick(request.getParameter("nick").trim());
	post_ub.setIp(ip);

	jcBean.setUserid(request.getParameter("userid").trim());
	jcBean.setJoincode(request.getParameter("recommend").trim());
	jcBean.setRecommend(request.getParameter("referrer").trim());

	smsBean.setUserid(request.getParameter("userid").trim());
	smsBean.setTel(cell);
	smsBean.setAuthcode(request.getParameter("cert").trim());
	
    TotalEgameController teg_ctrl					= new TotalEgameController();
	MgPlayerAccountBean user_profile 				= new MgPlayerAccountBean();
	MgBettingProfileBean bet_profile				= new MgBettingProfileBean();
	ArrayList<MgBettingProfileBean> bet_profiles	= new ArrayList<MgBettingProfileBean>();


    UserDao ud = new UserDao();
    boolean status = false;
	try {
		//status = ud.setUser(userid, passwd, cell, bank_name, bank_owner, bank_num, cert,ip,nick,referrer);
		status = ud.setUser(post_ub);
		if(status){
			String teg_resp	= "";
			String site_id	= "1";
			String mb_pref	= request.getParameter("cell_prefix").trim().substring(1);
			
			boolean updateJoinCode = jcDao.updateJoinCodeRegister(jcBean);
			boolean updateSms = smsDao.updateUserAuthSms(smsBean);

			System.out.println("join code update result : " + updateJoinCode);
			System.out.println("sms update result : " + updateSms);

			bet_profile.setCategory("LGBetProfile");
			bet_profile.setProfileId(1202);
			
			bet_profiles.add(bet_profile);
			
			user_profile.setPreferredAccountNumber(site_id.concat("_").concat(request.getParameter("userid").trim()));
			user_profile.setFirstName(request.getParameter("userid").trim().concat("FNAME"));
			user_profile.setLastName(request.getParameter("userid").trim().concat("LNAME"));
			user_profile.setEmail("");
			user_profile.setMobilePrefix(mb_pref);
			user_profile.setMobileNumber(request.getParameter("cell").trim());
			user_profile.setDepositAmount(0);
			user_profile.setPinCode("newplayer1");
			user_profile.setIsProgressive(0);
			user_profile.setBettingProfiles(bet_profiles);
			
			teg_resp = teg_ctrl.addPlayerAccount(user_profile);
			
			
			UserBean ub;
			//ub = ud.getUser(userid,passwd);
			ub = ud.getUser(post_ub);
			HttpSession user_session = request.getSession(true);	    
			session.setMaxInactiveInterval(7200);
	        session.setAttribute("currentSessionUser",ub);
	        int updateSession = ud.updateUserAfterLogin(ub.getUserid(), session.getId());
	        System.out.println(ub.getLoginStatus());	
	        System.out.println(updateSession);	
		}
		
		out.println(status);

	} catch (SQLException e) {
		e.printStackTrace();
	}


%>

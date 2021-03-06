package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import javax.sql.*;
import javax.naming.*;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import net.arnx.jsonic.JSON;
import util.DBConnector;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import bc4.Debug;
import bean.ChargeBean;
import bean.UserBean;

public class ChargeDao {
	public static Logger logger = Logger.getLogger(ChargeDao.class);
	public boolean saveChargeApplication(String SITEID,String UID, String ao, String m, String IP) throws SQLException {	
	
		PreparedStatement pstmt = null;
		Connection con = null;
		Statement stmt = null;
		int row = 0;
		boolean result = false;
		String  query = " DECLARE @INS_ID INT "+
						" Declare @c_level varchar(10)"+
						" Declare @c_cnt char(1)" + 
						" Declare @u_grd int " +
						" Declare @bank_name varchar(30) " +
						" Declare @bank_num varchar(30) " +
						" Declare @bank_owner varchar(30) " +													
						" select @c_level=charge_level,@u_grd=grade,@bank_name = bank_name, @bank_num=bank_num, @bank_owner=bank_owner from ( "+
						" select charge_level,grade, "+
						" case  when charge_level='JOIN' then bank_join_name when charge_level='LOW' then bank_low_name when  charge_level='MIDDLE' then bank_middle_name when  charge_level='HIGH' then bank_high_name end bank_name, "+
						" case  when charge_level='JOIN' then bank_join_num when charge_level='LOW' then bank_low_num when  charge_level='MIDDLE' then bank_middle_num when  charge_level='HIGH' then bank_high_num end bank_num, "+
						" case  when charge_level='JOIN' then bank_join_owner when charge_level='LOW' then bank_low_owner when  charge_level='MIDDLE' then bank_middle_owner when  charge_level='HIGH' then bank_high_owner end bank_owner "+
						" from user_mst a, config_mst b WHERE a.siteid="+SITEID+" and a.userid = '"+UID+"' and a.siteid = b.siteid  "+
						" ) aa "+						
						" select @c_cnt = case when count(*)=0 then 'F' when  count(*) >0 then 'C' end from charge_lst  WHERE siteid="+SITEID+" and userid = '"+UID+"' and convert(char(8),regdate,112) = convert(char(8),getdate(),112)"+
						"INSERT INTO charge_lst (userid,siteid,charge_level,bank_name, bank_owner, bank_num, money, user_grade,regdate,chstate,ip,viewtype,money_req,chtype,bonus) "+
						" VALUES ('"+UID+"',"+SITEID+",@c_level,@bank_name,@bank_owner,@bank_num ,'"+m+"',@u_grd,GETDATE(),'WAIT','"+IP+"','Y','"+m+"',@c_cnt,0)"+
						" SET @INS_ID = @@IDENTITY " +
						" IF @INS_ID>0 "+						
						" UPDATE USER_MST SET charge_cnt = charge_cnt+1, charge_money= charge_money+"+m+" WHERE siteid="+SITEID+" and userid = '"+UID+"'";
	
		try{
		
			DBConnector.getInstance();
			con = DBConnector.getConnection();
		    pstmt = con.prepareStatement(query);
			row = pstmt.executeUpdate(); 
			pstmt.close();
			con.close();
			if(row > 0) {
				result = true;
			}
			
	  	}catch(Exception e){
	  		e.printStackTrace();
	  
	  	}finally{
	  		if(stmt!=null) stmt.close();
	  		if(con!=null) con.close();
	  	}
		
		return result;
	}
	
	public List<HashMap> getUserChargeList(String userid){
		Gson gson = new Gson();
		List<HashMap> list = new ArrayList<HashMap>();
		String result = "";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT chid,convert(char(16),regdate,120) regdate,isnull(money_req,0) money_req,isnull(money,0) money ,convert(char(16),chdate,120) chdate,chstate "+
						" FROM charge_lst  "+
						" WHERE userid = ? order by regdate desc ";
		try{	      
			
			DBConnector.getInstance();
			con 				= DBConnector.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,userid);
			rs = pstmt.executeQuery();
					   
			while(rs.next()){
				HashMap<String, Object> hsm = new HashMap<String, Object>();
				hsm.put("chid",rs.getString("chid"));
				hsm.put("regdate",rs.getString("regdate"));
				hsm.put("money",rs.getString("money"));
				hsm.put("chdate",rs.getString("chdate"));
				hsm.put("chstate",rs.getString("chstate"));
				list.add(hsm);
			}
			
			rs.close();
	        pstmt.close();
	        con.close();
	  		    
		} catch(Exception e){
			e.printStackTrace();
		} 
	  	return list;
		
	}
}

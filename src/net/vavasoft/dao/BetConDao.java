package net.vavasoft.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.vavasoft.bean.BetConUserBean;
import net.vavasoft.bean.GameBean;
import net.vavasoft.bean.UserBean;
import net.vavasoft.betconstruct.GetBalanceOutput;

public class BetConDao {
	
	public UserBean getUserByPlayerId(int player_id)
	{
		UserBean user_data		= new UserBean();
		
		Connection con 			= null;
		PreparedStatement pstmt = null;
		ResultSet rs 			= null;
		String  query 			= "SELECT TOP 1000 * FROM betcon_user_lst JOIN user_mst ON betcon_user_lst.username = user_mst.userid WHERE player_id = ?" ;
		
		try {
			Context initContext = new InitialContext();
		 	Context envContext 	= (Context)initContext.lookup("java:/comp/env");
			DataSource ds 		= (DataSource)envContext.lookup("jdbc/vava");
			
		    con 				= ds.getConnection();
		    
		    pstmt   			= con.prepareStatement(query);
            pstmt.setInt(1, player_id);
			
			rs 					= pstmt.executeQuery();
            
            if (rs.next()) {
            	user_data.setUserid(rs.getString("userid"));
            	user_data.setMoney(rs.getInt("money"));
            }
            
            rs.close();
	        pstmt.close();
	        con.close();
		}
		catch(Exception e) {
			
		}
		
		return user_data;
	}
}

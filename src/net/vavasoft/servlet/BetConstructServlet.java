package net.vavasoft.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import net.vavasoft.controller.BetConstructController;

@WebServlet("/betcon-webhook/*")
public class BetConstructServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	public static final String BC_WEBHOOK_AUTH		= "/betcon-webhook/Authentication";
	public static final String BC_WEBHOOK_GETBAL	= "/betcon-webhook/GetBalance";
	public static final String BC_WEBHOOK_WITHDRAW	= "/betcon-webhook/Withdraw";
	public static final String BC_WEBHOOK_DEPOSIT	= "/betcon-webhook/Deposit";
	public static final String BC_WEBHOOK_WITHDEPO	= "/betcon-webhook/WithdrawAndDeposit";
	public static final String BC_WEBHOOK_ROLLBCK	= "/betcon-webhook/Rollback";
	public static final String BC_WEBHOOK_REFTOK	= "/betcon-webhook/RefreshToken";
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Gson gson						= new Gson();
		String method 					= request.getParameter("method");
		String session_id				= request.getSession().getId();
		BufferedReader reader			= request.getReader();
		
		BetConstructController bc_ctrl	= new BetConstructController();
		PrintWriter output				= response.getWriter();
		System.out.println(request.getRequestURI());
		
		
		output.flush();
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Gson gson						= new Gson();
		String method 					= request.getRequestURI();
		String session_id				= request.getSession().getId();
		BufferedReader reader			= request.getReader();
		
		BetConstructController bc_ctrl	= new BetConstructController();
		PrintWriter output				= response.getWriter();
		
		if (method.equals(BC_WEBHOOK_AUTH)) {
			String srv_resp_1	= bc_ctrl.authentication(reader.readLine());
			output.print(srv_resp_1);
		}
		else if (method.equals(BC_WEBHOOK_GETBAL)) {
			String srv_resp_2	= bc_ctrl.getBalance(reader.readLine());
			output.print(srv_resp_2);
		}
		else if (method.equals(BC_WEBHOOK_WITHDRAW)) {
			String srv_resp_3	= bc_ctrl.withdrawAndDeposit(reader.readLine(), 1);
			output.print(srv_resp_3);
		}
		else if (method.equals(BC_WEBHOOK_DEPOSIT)) {
			String srv_resp_4	= bc_ctrl.withdrawAndDeposit(reader.readLine(), 2);
			output.print(srv_resp_4);
		}
		else if (method.equals(BC_WEBHOOK_WITHDEPO)) {
			String srv_resp_5	= bc_ctrl.withdrawAndDeposit(reader.readLine(), 3);
			output.print(srv_resp_5);
		}
		else if (method.equals(BC_WEBHOOK_ROLLBCK)) {
			String srv_resp_6	= bc_ctrl.rollback(reader.readLine());
			output.print(srv_resp_6);
		}
		else if (method.equals(BC_WEBHOOK_REFTOK)) {
			String srv_resp_7	= bc_ctrl.refreshToken(reader.readLine());
			output.print(srv_resp_7);
		}
		else {
			String srv_resp_0	= "Invalid Method";
			output.print(srv_resp_0);
		}
		
		output.flush();
	}
}

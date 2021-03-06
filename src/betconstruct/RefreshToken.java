package betconstruct;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class RefreshToken {

	@SerializedName("OperatorId")
    @Expose
	private int operatorId;
	@SerializedName("Token")
    @Expose
	private String token;
	@SerializedName("PublicKey")
    @Expose
	private String publicKey;
	
	public int getOperatorId() {
		return operatorId;
	}
	
	public void setOperatorId(int operatorId) {
		this.operatorId = operatorId;
	}
	
	public String getToken() {
		return token;
	}
	
	public void setToken(String token) {
		this.token = token;
	}
	
	public String getPublicKey() {
		return publicKey;
	}
	
	
	public void setPublicKey(String publicKey) {
		this.publicKey = publicKey;
	}
	
}

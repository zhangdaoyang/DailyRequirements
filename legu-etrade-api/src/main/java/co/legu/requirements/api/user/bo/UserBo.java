package co.legu.requirements.api.user.bo;

public class UserBo {
	private Long id;
	private String username;
	private String password;
	private String mobile;
	private String email;
	private String roleArr;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRoleArr() {
		return roleArr;
	}
	public void setRoleArr(String roleArr) {
		this.roleArr = roleArr;
	}
	


}

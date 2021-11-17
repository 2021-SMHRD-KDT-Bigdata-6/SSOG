package Model_Member;

public class MemberVO {
	private String mb_id;
	private String mb_pwd;
	private String mb_phone;
	private String mb_addr;
	private String mb_gender;
	private String mb_joindate;
	private String admin_yn;
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_pwd() {
		return mb_pwd;
	}
	public void setMb_pwd(String mb_pwd) {
		this.mb_pwd = mb_pwd;
	}
	public String getMb_phone() {
		return mb_phone;
	}
	public void setMb_phone(String mb_phone) {
		this.mb_phone = mb_phone;
	}
	public String getMb_addr() {
		return mb_addr;
	}
	public void setMb_addr(String mb_addr) {
		this.mb_addr = mb_addr;
	}
	public String getMb_gender() {
		return mb_gender;
	}
	public void setMb_gender(String mb_gender) {
		this.mb_gender = mb_gender;
	}
	public String getMb_joindate() {
		return mb_joindate;
	}
	public void setMb_joindate(String mb_joindate) {
		this.mb_joindate = mb_joindate;
	}
	public String getAdmin_yn() {
		return admin_yn;
	}
	public void setAdmin_yn(String admin_yn) {
		this.admin_yn = admin_yn;
	}
	public MemberVO(String mb_id, String mb_pwd, String mb_phone, String mb_addr, String mb_gender, String mb_joindate,
			String admin_yn) {
		super();
		this.mb_id = mb_id;
		this.mb_pwd = mb_pwd;
		this.mb_phone = mb_phone;
		this.mb_addr = mb_addr;
		this.mb_gender = mb_gender;
		this.mb_joindate = mb_joindate;
		this.admin_yn = admin_yn;
	}
	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}

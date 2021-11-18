package Model_Food;

public class FoodVO {
	private int f_seq;
	private String f_name;
	private String f_category;
	private double f_index;
	private String f_recipe;
	private String f_trend1;
	private String f_trend2;
	private String f_trend3;
	private String f_url;
	private String f_date;
	private String md_id;
	private String f_img1;
	private String f_img2;

	
	
	public FoodVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FoodVO(int f_seq, String f_name, String f_category, double f_index, String f_recipe, String f_trend1,
			String f_trend2, String f_trend3, String f_url, String f_date, String md_id, String f_img1, String f_img2) {
		super();
		this.f_seq = f_seq;
		this.f_name = f_name;
		this.f_category = f_category;
		this.f_index = f_index;
		this.f_recipe = f_recipe;
		this.f_trend1 = f_trend1;
		this.f_trend2 = f_trend2;
		this.f_trend3 = f_trend3;
		this.f_url = f_url;
		this.f_date = f_date;
		this.md_id = md_id;
		this.f_img1 = f_img1;
		this.f_img2 = f_img2;
	}
	public int getF_seq() {
		return f_seq;
	}
	public void setF_seq(int f_seq) {
		this.f_seq = f_seq;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getF_category() {
		return f_category;
	}
	public void setF_category(String f_category) {
		this.f_category = f_category;
	}
	public double getF_index() {
		return f_index;
	}
	public void setF_index(double f_index) {
		this.f_index = f_index;
	}
	public String getF_recipe() {
		return f_recipe;
	}
	public void setF_recipe(String f_recipe) {
		this.f_recipe = f_recipe;
	}
	public String getF_trend1() {
		return f_trend1;
	}
	public void setF_trend1(String f_trend1) {
		this.f_trend1 = f_trend1;
	}
	public String getF_trend2() {
		return f_trend2;
	}
	public void setF_trend2(String f_trend2) {
		this.f_trend2 = f_trend2;
	}
	public String getF_trend3() {
		return f_trend3;
	}
	public void setF_trend3(String f_trend3) {
		this.f_trend3 = f_trend3;
	}
	public String getF_url() {
		return f_url;
	}
	public void setF_url(String f_url) {
		this.f_url = f_url;
	}
	public String getF_date() {
		return f_date;
	}
	public void setF_date(String f_date) {
		this.f_date = f_date;
	}
	public String getMd_id() {
		return md_id;
	}
	public void setMd_id(String md_id) {
		this.md_id = md_id;
	}
	public String getF_img1() {
		return f_img1;
	}
	public void setF_img1(String f_img1) {
		this.f_img1 = f_img1;
	}
	public String getF_img2() {
		return f_img2;
	}
	public void setF_img2(String f_img2) {
		this.f_img2 = f_img2;
	}
	
}

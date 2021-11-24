package Model_Ingredient;

public class IngredientVO {
	private int ingre_seq;
	private String ingre_name;
	private String reg_date;
	private String mb_id;
	private double season_index;
	private double quality_index;
	private double bpp;
	private String property;
	private String quality_pn;
	private String img1;
	private String img2;
	public int getIngre_seq() {
		return ingre_seq;
	}
	public void setIngre_seq(int ingre_seq) {
		this.ingre_seq = ingre_seq;
	}
	public String getIngre_name() {
		return ingre_name;
	}
	public void setIngre_name(String ingre_name) {
		this.ingre_name = ingre_name;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public double getSeason_index() {
		return season_index;
	}
	public void setSeason_index(double season_index) {
		this.season_index = season_index;
	}
	public double getQuality_index() {
		return quality_index;
	}
	public void setQuality_index(double quality_index) {
		this.quality_index = quality_index;
	}

	public double getBpp() {
		return bpp;
	}
	public void setBpp(double bpp) {
		this.bpp = bpp;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public String getQuality_pn() {
		return quality_pn;
	}
	public void setQuality_pn(String quality_pn) {
		this.quality_pn = quality_pn;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public IngredientVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IngredientVO(int ingre_seq, String ingre_name, String reg_date, String mb_id, double season_index,
			double quality_index, double bpp, String property, String quality_pn, String img1,
			String img2) {
		super();
		this.ingre_seq = ingre_seq;
		this.ingre_name = ingre_name;
		this.reg_date = reg_date;
		this.mb_id = mb_id;
		this.season_index = season_index;
		this.quality_index = quality_index;

		this.bpp = bpp;
		this.property = property;
		this.quality_pn = quality_pn;
		this.img1 = img1;
		this.img2 = img2;
	}

}

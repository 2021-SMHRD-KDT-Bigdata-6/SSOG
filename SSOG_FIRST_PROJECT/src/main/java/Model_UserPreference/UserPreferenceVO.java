package Model_UserPreference;

public class UserPreferenceVO {
	private int pref_seq;
	private String mb_id;
	private String pref_food1;
	private String pref_food2;
	private double protein;
	private double carbohydrate;
	private double fat;
	private double meneral;
	private double vitamin;
	private double calory;
	private	String trend1;
	private	String trend2;
	private	String trend3;
	public int getPref_seq() {
		return pref_seq;
	}
	public void setPref_seq(int pref_seq) {
		this.pref_seq = pref_seq;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getPref_food1() {
		return pref_food1;
	}
	public void setPref_food1(String pref_food1) {
		this.pref_food1 = pref_food1;
	}
	public String getPref_food2() {
		return pref_food2;
	}
	public void setPref_food2(String pref_food2) {
		this.pref_food2 = pref_food2;
	}
	public double getProtein() {
		return protein;
	}
	public void setProtein(double protein) {
		this.protein = protein;
	}
	public double getCarbohydrate() {
		return carbohydrate;
	}
	public void setCarbohydrate(double carbohydrate) {
		this.carbohydrate = carbohydrate;
	}
	public double getFat() {
		return fat;
	}
	public void setFat(double fat) {
		this.fat = fat;
	}
	public double getMeneral() {
		return meneral;
	}
	public void setMeneral(double meneral) {
		this.meneral = meneral;
	}
	public double getVitamin() {
		return vitamin;
	}
	public void setVitamin(double vitamin) {
		this.vitamin = vitamin;
	}
	public double getCalory() {
		return calory;
	}
	public void setCalory(double calory) {
		this.calory = calory;
	}
	public String getTrend1() {
		return trend1;
	}
	public void setTrend1(String trend1) {
		this.trend1 = trend1;
	}
	public String getTrend2() {
		return trend2;
	}
	public UserPreferenceVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserPreferenceVO(int pref_seq, String mb_id, String pref_food1, String pref_food2, double protein,
			double carbohydrate, double fat, double meneral, double vitamin, double calory, String trend1,
			String trend2, String trend3) {
		super();
		this.pref_seq = pref_seq;
		this.mb_id = mb_id;
		this.pref_food1 = pref_food1;
		this.pref_food2 = pref_food2;
		this.protein = protein;
		this.carbohydrate = carbohydrate;
		this.fat = fat;
		this.meneral = meneral;
		this.vitamin = vitamin;
		this.calory = calory;
		this.trend1 = trend1;
		this.trend2 = trend2;
		this.trend3 = trend3;
	}
	public void setTrend2(String trend2) {
		this.trend2 = trend2;
	}
	public String getTrend3() {
		return trend3;
	}
	public void setTrend3(String trend3) {
		this.trend3 = trend3;
	}
	

}

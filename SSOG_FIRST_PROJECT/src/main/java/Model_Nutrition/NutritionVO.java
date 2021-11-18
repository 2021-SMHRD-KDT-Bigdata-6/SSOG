package Model_Nutrition;

public class NutritionVO {
	private int nut_seq;
	private int ingre_seq;
	private String nut_name;
	private int nut_quantity;
	private int nut_standard;
	
	

	public int getNut_seq() {
		return nut_seq;
	}
	public void setNut_seq(int nut_seq) {
		this.nut_seq = nut_seq;
	}
	public int getIngre_seq() {
		return ingre_seq;
	}
	public NutritionVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NutritionVO(int nut_seq, int ingre_seq, String nut_name, int nut_quantity, int nut_standard) {
		super();
		this.nut_seq = nut_seq;
		this.ingre_seq = ingre_seq;
		this.nut_name = nut_name;
		this.nut_quantity = nut_quantity;
		this.nut_standard = nut_standard;
	}
	public void setIngre_seq(int ingre_seq) {
		this.ingre_seq = ingre_seq;
	}
	public String getNut_name() {
		return nut_name;
	}
	public void setNut_name(String nut_name) {
		this.nut_name = nut_name;
	}
	public int getNut_quantity() {
		return nut_quantity;
	}
	public void setNut_quantity(int nut_quantity) {
		this.nut_quantity = nut_quantity;
	}
	public int getNut_standard() {
		return nut_standard;
	}
	public void setNut_standard(int nut_standard) {
		this.nut_standard = nut_standard;
	}
	

}

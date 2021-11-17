package Model_FoodIngredient;

public class FoodIngredientVO {
	private int f_ing_seq;
	private int f_seq;
	private int ingre_seq;
	private int ingre_quantity;
	public int getF_ing_seq() {
		return f_ing_seq;
	}
	public void setF_ing_seq(int f_ing_seq) {
		this.f_ing_seq = f_ing_seq;
	}
	public int getF_seq() {
		return f_seq;
	}
	public void setF_seq(int f_seq) {
		this.f_seq = f_seq;
	}
	public int getIngre_seq() {
		return ingre_seq;
	}
	public void setIngre_seq(int ingre_seq) {
		this.ingre_seq = ingre_seq;
	}
	public int getIngre_quantity() {
		return ingre_quantity;
	}
	public void setIngre_quantity(int ingre_quantity) {
		this.ingre_quantity = ingre_quantity;
	}
	public FoodIngredientVO(int f_ing_seq, int f_seq, int ingre_seq, int ingre_quantity) {
		super();
		this.f_ing_seq = f_ing_seq;
		this.f_seq = f_seq;
		this.ingre_seq = ingre_seq;
		this.ingre_quantity = ingre_quantity;
	}
	public FoodIngredientVO() {
		super();
		// TODO Auto-generated constructor stub
	}

}

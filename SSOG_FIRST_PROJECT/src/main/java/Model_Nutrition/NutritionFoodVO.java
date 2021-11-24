package Model_Nutrition;

public class NutritionFoodVO {
	private double protein;
	private double carbohydrate;
	private double fat;
	private double meneral;
	private double vitamin;
	private double calory;
	
	
	
	
	
	
	public NutritionFoodVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NutritionFoodVO(double protein, double carbohydrate, double fat, double meneral, double vitamin,
			double calory) {
		super();
		this.protein = protein;
		this.carbohydrate = carbohydrate;
		this.fat = fat;
		this.meneral = meneral;
		this.vitamin = vitamin;
		this.calory = calory;
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
	

}

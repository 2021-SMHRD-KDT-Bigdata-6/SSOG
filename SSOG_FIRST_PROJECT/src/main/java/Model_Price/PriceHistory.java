package Model_Price;

public class PriceHistory {
	private String ingre_date;
	private int ingre_price;
	
	
	
	
	
	
	
	public PriceHistory() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PriceHistory(String ingre_date, int ingre_price) {
		super();
		this.ingre_date = ingre_date;
		this.ingre_price = ingre_price;
	}
	public String getIngre_date() {
		return ingre_date;
	}
	public void setIngre_date(String ingre_date) {
		this.ingre_date = ingre_date;
	}
	public int getIngre_price() {
		return ingre_price;
	}
	public void setIngre_price(int ingre_price) {
		this.ingre_price = ingre_price;
	}
	

}

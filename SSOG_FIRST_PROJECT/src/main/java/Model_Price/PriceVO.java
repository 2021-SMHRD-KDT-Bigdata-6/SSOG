package Model_Price;

public class PriceVO {
	private int price_seq;
	private int ingre_seq;
	private int ingre_price;
	private String reg_date;
	private int inger_market;
	private String price_url;
	
	
	
	public PriceVO(int price_seq, int ingre_seq, int ingre_price, String reg_date, int inger_market, String price_url) {
		super();
		this.price_seq = price_seq;
		this.ingre_seq = ingre_seq;
		this.ingre_price = ingre_price;
		this.reg_date = reg_date;
		this.inger_market = inger_market;
		this.price_url = price_url;
	}
	public String getPrice_url() {
		return price_url;
	}
	public void setPrice_url(String price_url) {
		this.price_url = price_url;
	}

	public int getPrice_seq() {
		return price_seq;
	}
	public void setPrice_seq(int price_seq) {
		this.price_seq = price_seq;
	}
	public int getIngre_seq() {
		return ingre_seq;
	}
	public void setIngre_seq(int ingre_seq) {
		this.ingre_seq = ingre_seq;
	}
	public int getIngre_price() {
		return ingre_price;
	}
	public void setIngre_price(int ingre_price) {
		this.ingre_price = ingre_price;
	}
	public String getReg_date() {
		return reg_date;
	}
	public PriceVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getInger_market() {
		return inger_market;
	}
	public void setInger_market(int inger_market) {
		this.inger_market = inger_market;
	}
}

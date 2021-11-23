package Model_Price;

public class PriceVO {
	private int price_seq;
	private String ingre_name;
	private int ingre_price;
	private String reg_date;
	private int ingre_market;
	private String price_url;
	private String ingre_quality;
	
	
	
	
	public String getIngre_quality() {
		return ingre_quality;
	}
	public void setIngre_quality(String ingre_quality) {
		this.ingre_quality = ingre_quality;
	}
	public PriceVO(int price_seq, String ingre_name, int ingre_price, String reg_date, int ingre_market, String price_url, String ingre_quality) {
		super();
		this.price_seq = price_seq;
		this.ingre_name = ingre_name;
		this.ingre_price = ingre_price;
		this.reg_date = reg_date;
		this.ingre_market = ingre_market;
		this.price_url = price_url;
		this.ingre_quality = ingre_quality;
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
	public String getIngre_name() {
		return ingre_name;
	}
	public void setIngre_name(String ingre_name) {
		this.ingre_name = ingre_name;
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
		return ingre_market;
	}
	public void setInger_market(int inger_market) {
		this.ingre_market = inger_market;
	}
}

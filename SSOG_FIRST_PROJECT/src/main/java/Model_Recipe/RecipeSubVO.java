package Model_Recipe;

public class RecipeSubVO {
	private String r_content;
	private String r_img;
	
	
	
	public RecipeSubVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RecipeSubVO(String r_content, String r_img) {
		super();
		this.r_content = r_content;
		this.r_img = r_img;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_img() {
		return r_img;
	}
	public void setR_img(String r_img) {
		this.r_img = r_img;
	}
	
	

}

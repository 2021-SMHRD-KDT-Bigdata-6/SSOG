package Model_Recipe;

import java.util.ArrayList;

public class RecipeVO {
	private String f_name;
	private ArrayList<RecipeSubVO> recipes = new ArrayList<>();
	private String r_etc;
	
	public RecipeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RecipeVO( String f_name, ArrayList<RecipeSubVO> recipes, String r_etc) {
		super();
		this.f_name = f_name;
		this.recipes = recipes;
		this.r_etc = r_etc;
	}

	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public ArrayList<RecipeSubVO> getRecipes() {
		return recipes;
	}
	public void setRecipes(ArrayList<RecipeSubVO> recipes) {
		this.recipes = recipes;
	}
	public String getR_etc() {
		return r_etc;
	}
	public void setR_etc(String r_etc) {
		this.r_etc = r_etc;
	}
	
	
}
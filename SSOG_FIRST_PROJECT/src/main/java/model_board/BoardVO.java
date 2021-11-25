package model_board;

public class BoardVO {
	private int num;
	private String boarCate;
	private String title;
	private String writer;
	private String fileName;
	private String content;
	private String b_day;
	
	public BoardVO(int num, String boarCate, String title, String writer, String fileName, String content,
			String b_day) {
		super();
		this.num = num;
		this.boarCate = boarCate;
		this.title = title;
		this.writer = writer;
		this.fileName = fileName;
		this.content = content;
		this.b_day = b_day;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getBoarCate() {
		return boarCate;
	}

	public void setBoarCate(String boarCate) {
		this.boarCate = boarCate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getB_day() {
		return b_day;
	}

	public void setB_day(String b_day) {
		this.b_day = b_day;
	}

	
	
	
}

package tika;

public enum Extention {
	XML(".xml"), PDF(".pdf");

	private String type;

	Extention(String type) {
		this.type = type;
	}

	public String type() {
		return type;
	}
}

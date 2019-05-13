package model;

public class ProcessedFile {

	private String name;
	private String content;
	private String metadata;

	public ProcessedFile(String name, String content, String metadata) {
		this.name = name;
		this.content = content;
		this.metadata = metadata;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMetadata() {
		return metadata;
	}

	public void setMetadata(String metadata) {
		this.metadata = metadata;
	}
}

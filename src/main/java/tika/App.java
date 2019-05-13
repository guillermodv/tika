package tika;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Path;
import java.util.List;

import model.ProcessedFile;
import services.FileProcessor;
import services.FileSystemSearcher;
import services.JsonSaver;

public class App {
	public static void main(String[] args) throws IOException {
		DirectoryStream<Path> fileList = null;
		List<ProcessedFile> processedFiles = null;

		try {
			fileList = FileSystemSearcher.obtainFilesToProcess();

			if (fileList != null) {
				processedFiles = FileProcessor.processPath(fileList);
			} else {
				System.out.println("there is no file to process in path:" + AppConfiguration.PATH);
			}

			if (processedFiles != null) {
				JsonSaver.saveObjectToJsonFile(processedFiles);
			} else {
				System.out.println("there are no one processed files");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			fileList.close();
		}
	}
}

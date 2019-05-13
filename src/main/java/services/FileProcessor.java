package services;

import java.nio.file.DirectoryStream;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import components.FileProcessorStrategy;
import components.PdfProcessorStrategy;
import components.XMLProcessorStrategy;
import model.ProcessedFile;

public class FileProcessor {
	public static List<ProcessedFile> processPath(DirectoryStream<Path> fileList) {
		List<ProcessedFile> processedFiles = new ArrayList<ProcessedFile>();

		fileList.forEach(file -> {
			try {
				String fileName = "" + file;
				System.out.println(fileName);
				FileProcessorStrategy fileProcessorStrategy = null;
				String extension = fileName.substring(fileName.lastIndexOf("."));

				switch (extension) {
				case ".pdf":
					fileProcessorStrategy = new PdfProcessorStrategy();
					processedFiles.add(fileProcessorStrategy.fileProcess(fileName));
					break;
				case ".xml":
					fileProcessorStrategy = new XMLProcessorStrategy();
					processedFiles.add(fileProcessorStrategy.fileProcess(fileName));
					break;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		});
		return processedFiles;
	}

}

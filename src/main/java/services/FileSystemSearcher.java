package services;

import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import tika.AppConfiguration;

public class FileSystemSearcher {
	public static DirectoryStream<Path> obtainFilesToProcess() throws IOException {
		DirectoryStream<Path> fileList = null;
		try {
			Path dir = Paths.get(AppConfiguration.PATH);
			fileList = Files.newDirectoryStream(dir, AppConfiguration.FILEEXTENTIONFILTER);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return fileList;
	}
}
package services;

import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import model.ProcessedFile;
import tika.AppConfiguration;

public class JsonSaver {
	public static void saveObjectToJsonFile(List<ProcessedFile> files) throws IOException {
		Writer writer = new FileWriter(AppConfiguration.OUTPUTFILE);
		try {
			Gson gson = new GsonBuilder().create();
			gson.toJson(files, writer);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			writer.close();
		}
	}
}

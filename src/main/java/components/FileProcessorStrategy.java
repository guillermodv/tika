package components;

import java.io.IOException;

import org.apache.tika.exception.TikaException;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.sax.BodyContentHandler;
import org.xml.sax.SAXException;

import model.ProcessedFile;

public interface FileProcessorStrategy {

	BodyContentHandler handler = new BodyContentHandler();
	Metadata metadata = new Metadata();

	public ProcessedFile fileProcess(String path) throws IOException, SAXException, TikaException;
}

package components;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.apache.tika.exception.TikaException;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.xml.XMLParser;
import org.xml.sax.SAXException;

import model.ProcessedFile;

public class XMLProcessorStrategy implements FileProcessorStrategy {

	@Override
	public ProcessedFile fileProcess(String path) throws IOException, SAXException, TikaException {

		FileInputStream inputstream = new FileInputStream(new File(path));
		ParseContext pcontext = new ParseContext();

		// Xml parser
		XMLParser xmlparser = new XMLParser();
		xmlparser.parse(inputstream, handler, metadata, pcontext);
//        System.out.println("Contents of the document:" + handler.toString());
//        System.out.println("Metadata of the document:");
		String[] metadataNames = metadata.names();

//        for(String name : metadataNames) {
//        	System.out.println(name + ": " + metadata.get(name));
//        }
		return new ProcessedFile(path, metadata.toString(), metadataNames + "");
	}
}

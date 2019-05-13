package components;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.tika.exception.TikaException;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.pdf.PDFParser;
import org.xml.sax.SAXException;

import model.ProcessedFile;

public class PdfProcessorStrategy implements FileProcessorStrategy {

	@Override
	public ProcessedFile fileProcess(String path)
			throws IOException, SAXException, TikaException, FileNotFoundException {
		FileInputStream inputstream = new FileInputStream(new File(path));
		ParseContext pcontext = new ParseContext();

		// parsing the document using PDF parser
		PDFParser pdfparser = new PDFParser();
		pdfparser.parse(inputstream, handler, metadata, pcontext);

		// getting the content of the document
//		System.out.println("Contents of the PDF :" + handler.toString());

		// getting metadata of the document
//		System.out.println("Metadata of the PDF:");
		String[] metadataNames = metadata.names();

//		for (String name : metadataNames) {
//			System.out.println(name + " : " + metadata.get(name));
//		}
		return new ProcessedFile(path, metadata.toString(), metadataNames + "");
	}
}

package bollettinopostale;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;
import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.xml.sax.SAXException;

public class BollettinoPostale {
  public static void main(String[] args) {
    BollettinoPostale bollettinoPostale = new BollettinoPostale();
    try {
      StreamSource xmlSource = new StreamSource(new File("bollettino.xml"));
      bollettinoPostale.convertToPDF(xmlSource, "codiceAvviso");
    } catch (FOPException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    } catch (TransformerException e) {
      e.printStackTrace();
    } 
  }
  
  public void convertToPDF(StreamSource xmlSource, String codiceAvviso) throws IOException, FOPException, TransformerException {
    File xsltFile = new File("bollettino.xsl");
    File xsltConfFile = new File("bollettino.xconf");
    String nomeFile = codiceAvviso;
    try {
      BarCodeUtils.createQR("ci mettiamo una bella stringa inutile", "barcode/qrcode_" + nomeFile + ".jpg", 50, 50);
    } catch (Exception e) {
      throw new RuntimeException(e);
    } 
    try {
      BarCodeUtils.createDataMatrix("ci mettiamo una bella stringa inutile", "barcode/datamatrix_" + nomeFile + ".jpg", 50, 50);
    } catch (Exception e) {
      throw new RuntimeException(e);
    } 
    FopFactory fopFactory = FopFactory.newInstance();
    try {
      fopFactory.setUserConfig(xsltConfFile);
    } catch (SAXException sa) {
      System.out.println("ERRORE " + sa);
    } 
    FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
    OutputStream out = new FileOutputStream("bollettino_" + nomeFile + ".pdf");
    try {
      Fop fop = fopFactory.newFop("application/pdf", foUserAgent, out);
      TransformerFactory factory = TransformerFactory.newInstance();
      Transformer transformer = factory.newTransformer(new StreamSource(xsltFile));
      Result res = new SAXResult(fop.getDefaultHandler());
      transformer.transform(xmlSource, res);
    } finally {
      out.close();
    } 
  }
}

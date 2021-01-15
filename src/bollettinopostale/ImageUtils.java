package bollettinopostale;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class ImageUtils {

    public static void CombineBorders(String nomeFile) throws IOException {
        BufferedImage img = ImageIO.read(new File("barcode/datamatrix_" + nomeFile + "_temp.jpg"));
        BufferedImage top = ImageIO.read(new File("loghi/top.jpg"));
        BufferedImage border = ImageIO.read(new File("loghi/border.jpg"));
        BufferedImage bottom = ImageIO.read(new File("loghi/bottom.jpg"));
        int heightTotal = img.getHeight() + top.getHeight() + bottom.getHeight();
        int widthTotal = img.getWidth() + border.getWidth() + border.getWidth();

        // prima modifico i bordi laterali
        int widthCurr = 0;
        BufferedImage tempImage = new BufferedImage(widthTotal, img.getHeight(), BufferedImage.TYPE_INT_RGB);
        Graphics2D g2dtemp = tempImage.createGraphics();
        g2dtemp.drawImage(border, widthCurr, 0, null);
        widthCurr += border.getWidth();
        g2dtemp.drawImage(img, widthCurr, 0, null);
        widthCurr += img.getWidth();
        g2dtemp.drawImage(border, widthCurr, 0, null);
        g2dtemp.dispose();

        int heightCurr = 0;
        BufferedImage concatImage = new BufferedImage(widthTotal, heightTotal, BufferedImage.TYPE_INT_RGB);
        Graphics2D g2d = concatImage.createGraphics();
        // g2d.setBackground(Color.white);
        g2d.drawImage(top, 0, heightCurr, null);
        heightCurr += top.getHeight();
        g2d.drawImage(tempImage, 0, heightCurr, null);
        heightCurr += tempImage.getHeight();
        g2d.drawImage(bottom, 0, heightCurr, null);

        g2d.dispose();

        ImageIO.write(concatImage, "jpg", new File("barcode/datamatrix_" + nomeFile + ".jpg")); // export concat image

    }
}

package co.aceteq.util;
import java.io.*;

public class FileMover
{
	public static void copyFile(String src, String dest)
	{
		try{
			File f1 = new File(src);
			File f2 = new File(dest);
			InputStream in = new FileInputStream(f1);
			OutputStream out = new FileOutputStream(f2);

			byte[] buf = new byte[1024];
			int len;
			while((len = in.read(buf)) > 0)
			{
				out.write(buf,0,len);
			}
			in.close();
			out.close();
			System.out.println("File copied.");
		}catch(Exception e){
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

}

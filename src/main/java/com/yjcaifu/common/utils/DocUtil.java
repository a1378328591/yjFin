package com.yjcaifu.common.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.Map;

import org.apache.shiro.web.util.WebUtils;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class DocUtil {

	private Configuration configuration = null;  
    
    public DocUtil(){  
        configuration = new Configuration();  
        configuration.setDefaultEncoding("UTF-8");  
    }  
      
   
 /**
  * 根据Doc模板生成word文件
  * @param dataMap Map 需要填入模板的数据
  * @param fileName 文件名称
  * @param savePath 保存路径
 * @throws IOException 
  */

 public  String createDoc(Map<String,Object>  dataMap,String fileName,String ftlName) throws IOException{
	 File dirfile =new File("upload"); 
	 if  (!dirfile .exists()  && !dirfile .isDirectory())      
	 {       
		 dirfile .mkdir();  
	 }
	 
      configuration.setClassForTemplateLoading(this.getClass(), "/");  //FTL文件所存在的位置  
      Template t=null;
      try {  
          t = configuration.getTemplate(ftlName+".ftl"); //文件名  
      } catch (IOException e) {  
          e.printStackTrace();  
      }  
    //  File outFile = new File("D:/upload/"+Math.random()*10000+".doc");
      //double docname=Math.random()*10000;
      File outFile = new File("upload/"+fileName+".doc");
      Writer out = null;  
      try {  
          out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile),"utf-8"));  
          out.flush();
      } catch (FileNotFoundException e1) {  
          e1.printStackTrace();  
      }  
         
      try {  
          t.process(dataMap, out);  
      } catch (TemplateException e) {  
          e.printStackTrace();  
      } catch (IOException e) {  
          e.printStackTrace();  
      }finally {
    	  out.close();
      }
	return fileName+".doc";  
 }
	
}

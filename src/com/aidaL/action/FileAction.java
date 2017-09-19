package com.aidaL.action;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

public class FileAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3301296913795151698L;

	private String username;
	//封装上传文件属性
	private File file;
	//封装上传文件的类型
	private String fileContentType;
	//封装上传文件名称
	private String fileFileName;
	
	//读取下载文件的目录
    private String inputPath;
    //下载文件的文件名
    private String fileName;
    //读取下载文件的输入流
    @SuppressWarnings("unused")
	private InputStream inputStream;
    //下载文件的类型
    private String conetntType;

    public String upload() throws IOException {
		String message = "";
		//处理获取到的上传文件的文件名的路径部分，只保留文件名部分
		fileFileName = fileFileName.substring(fileFileName.lastIndexOf("\\")+1);
		System.out.println("fileFileName:"+fileFileName);
		
		if (fileFileName==null && fileFileName.trim().equals("")) {
			message="文件名为空";
			return SUCCESS;
		}
		
		//得到上传文件的扩展名
		String fileExtName = fileFileName.substring(fileFileName.lastIndexOf(".")+1);
		//如果需要限制上传的文件类型，那么可以通过文件的扩展名来判断上传的文件类型是否合法
		System.out.println("上传的文件扩展名为："+fileExtName);
		
		byte[] buffer=new byte[1024];
        System.out.println("username:"+username);
        File saveDir = new File(getSavePath());
        //检查文件夹是否存在
        if(!saveDir.exists() && !saveDir.isDirectory()) {
        	System.out.println(getSavePath()+"目录不存在，需要创建");
        	//创建目录
        	saveDir.mkdir();
        }
        
        //读取文件
        FileInputStream fis=new FileInputStream(getFile());
        //得到文件保存的名称
        String saveFileName = makeFileName(fileFileName);
        System.out.println("saveFileName:"+saveFileName);
        //得到文件的保存目录
        String realSavePath = makePath(saveFileName, getSavePath());
        System.out.println("realSavePath:"+realSavePath);
        //保存文件
        FileOutputStream fos=new FileOutputStream(realSavePath +"\\"+saveFileName);
        int length=fis.read(buffer);
        
        while(length>0){
            //每次写入length长度的内容
            fos.write(buffer,0,length);
            length=fis.read(buffer);
        }
        fis.close();
        fos.flush();
        fos.close();
        session.setAttribute("message", message);
        return SUCCESS;
	}
	
	public String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath(inputPath);
	}
	
	public String download() {
		
		try {
			fileName = URLDecoder.decode(fileName, "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			fileName = new String(fileName.getBytes(), "iso8859-1");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("fileName:"+fileName);
		return "download";
	}
	
	//创建InputStream输入流
    public InputStream getInputStream() throws FileNotFoundException {
        String path=ServletActionContext.getServletContext().getRealPath(inputPath);
        return new BufferedInputStream(new FileInputStream(path+"\\"+fileName));
    }
    
    /**
     * 生成唯一ID
     * @param filename 文件的原始名称
     * @return uuid+"_"+文件的原始名称
     */
    private String makeFileName(String filename) {
    	//为防止文件覆盖的现象发生，要为上传文件产生一个唯一的文件名
		return UUID.randomUUID().toString()+"_"+filename;
	}
    
    /**
     * 为防止一个目录下面出现太多文件，要使用hash算法打散存储
     * @param filename 文件名，要根据文件名生成存储目录
     * @param savePath 文件存储路径
     * @return
     */
    private String makePath(String filename, String savePath) {
    	//得到文件名的hashCode的值，得到的就是filename这个字符串对象在内存中的地址
    	int hashcode = filename.hashCode();
    	int dir1 = hashcode&0xf;  //0--15
    	int dir2 = (hashcode&0xf0)>>4;  //0-15
    	
    	//构造新的保存目录
    	String dir = savePath + "\\" + dir1 + "\\" + dir2; //upload\2\3  upload\3\5
    	//File既可以代表文件也可以代表目录
    	File file = new File(dir);
    	
    	//如果目录不存在
    	if (!file.exists() && !file.isDirectory()) {
			file.mkdirs();
		}
    	
    	return dir;
	}
    
	public String getInputPath() {
		return inputPath;
	}


	public void setInputPath(String inputPath) {
		this.inputPath = inputPath;
	}


	public String getFileName() {
		return fileName;
	}


	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


	public String getConetntType() {
		return conetntType;
	}


	public void setConetntType(String conetntType) {
		this.conetntType = conetntType;
	}


	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public File getFile() {
		return file;
	}


	public void setFile(File file) {
		this.file = file;
	}


	public String getFileContentType() {
		return fileContentType;
	}


	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}


	public String getFileFileName() {
		return fileFileName;
	}


	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}


}

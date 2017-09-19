package com.aidaL.db;

import java.io.File;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

public class FileIODB {

	
	public String getSavePath(String inputPath) {
		return ServletActionContext.getServletContext().getRealPath(inputPath);
	}

    
    /**
     * 生成唯一ID
     * @param filename 文件的原始名称
     * @return uuid+"_"+文件的原始名称
     */
    public String makeFileName(String filename) {
    	//为防止文件覆盖的现象发生，要为上传文件产生一个唯一的文件名
		return UUID.randomUUID().toString()+"_"+filename;
	}
    
    /**
     * 为防止一个目录下面出现太多文件，要使用hash算法打散存储
     * @param filename 文件名，要根据文件名生成存储目录
     * @param savePath 文件存储路径
     * @return
     */
    public String makePath(String filename, String savePath) {
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
}

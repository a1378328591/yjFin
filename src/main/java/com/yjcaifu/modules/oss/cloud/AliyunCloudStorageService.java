/**
 * Copyright 2018 YJFintech
 * <p>
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.yjcaifu.modules.oss.cloud;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.GetObjectRequest;
import com.aliyun.oss.model.OSSObject;
import com.aliyun.oss.model.ObjectMetadata;
import com.aliyun.oss.model.PutObjectResult;
import com.yjcaifu.common.exception.RRException;
import com.yjcaifu.common.exception.RRException;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.Date;

/**
 * 阿里云存储
 * @author htshen
 * @email htshen@tom.com
 * @date 2017-03-26 16:22
 */
public class AliyunCloudStorageService extends CloudStorageService {
    private OSSClient client;

    public AliyunCloudStorageService(CloudStorageConfig config){
        this.config = config;

        //初始化
        init();
    }

    private void init(){
        client = new OSSClient(config.getAliyunEndPoint(), config.getAliyunAccessKeyId(),
                config.getAliyunAccessKeySecret());
    }

    @Override
    public String upload(byte[] data, String path) {
        return upload(new ByteArrayInputStream(data), path);
    }

    @Override
    public String upload(InputStream inputStream, String path) {
        try {
        	//ObjectMetadata meta = new ObjectMetadata();
        	//meta.setContentDisposition("xxxx");
        	//PutObjectResult result = client.putObject(config.getAliyunBucketName(), path, inputStream,meta);  
        	//result.
            client.putObject(config.getAliyunBucketName(), path, inputStream);
        } catch (Exception e){
            throw new RRException("上传文件失败，请检查配置信息", e);
        }

        return config.getAliyunDomain() + "/" + path;
    }

    @Override
    public String uploadSuffix(byte[] data, String suffix) {
        return upload(data, getPath(config.getAliyunPrefix(), suffix));
    }

    @Override
    public String uploadSuffix(InputStream inputStream, String suffix) {
    	String urlString=upload(inputStream, getPath(config.getAliyunPrefix(), suffix));
    	client.shutdown();
        return urlString;
    }

	@Override
	public OSSObject download(String objectName) {
		OSSObject ossObject  = client.getObject(config.getAliyunBucketName(), objectName);
		client.shutdown();
		return ossObject;
	}

	@Override
	public OSSObject download(String objectName, String path) {
		client.getObject(new GetObjectRequest(config.getAliyunBucketName(), objectName),new File(path));
		return null;
	}

	@Override
	public URL download(String objectName, Date expiration) {
		URL retUrl=client.generatePresignedUrl(config.getAliyunBucketName(), objectName, expiration);
		return retUrl;
	}
}

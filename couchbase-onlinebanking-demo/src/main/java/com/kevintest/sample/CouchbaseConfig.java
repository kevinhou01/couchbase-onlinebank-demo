package com.kevintest.sample;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.couchbase.config.AbstractCouchbaseConfiguration;
import org.springframework.data.couchbase.repository.config.EnableCouchbaseRepositories;

@Configuration
@EnableCouchbaseRepositories
public class CouchbaseConfig extends AbstractCouchbaseConfiguration{

	@Value("${couchbase.cluster.bucket}")
	private String bucketName;

	@Value("${couchbase.cluster.password}")
	private String password;

	@Value("${couchbase.cluster.ip}")
	private String ip;

	@Override
	protected List<String> bootstrapHosts() {
		return Arrays.asList(this.ip);
		//return Arrays.asList("10.96.149.24");
	}

	@Override
	protected String getBucketName() {
		return this.bucketName;
		//return "demotest";
	}

	@Override
	protected String getBucketPassword() {
		return this.password;
		//return "welcome1";
	}

}

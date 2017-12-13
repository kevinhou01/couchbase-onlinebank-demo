package com.kevintest.sample;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.data.couchbase.core.mapping.event.ValidatingCouchbaseEventListener;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

@ComponentScan
@EnableAutoConfiguration
@Configuration
@EnableTransactionManagement
@Import(CouchbaseConfig.class)
public class Application {

	@Bean
	LocalValidatorFactoryBean validator() {
		return new LocalValidatorFactoryBean();
	}

	@Bean
	ValidatingCouchbaseEventListener validationEventListener() {
		return new ValidatingCouchbaseEventListener(validator());
	}


	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}


}

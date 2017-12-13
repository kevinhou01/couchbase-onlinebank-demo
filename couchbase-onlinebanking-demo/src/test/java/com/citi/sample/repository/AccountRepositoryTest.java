package com.citi.sample.repository;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.citi.sample.Application;
import com.citi.sample.domain.Account;
import com.couchbase.client.protocol.views.Query;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class AccountRepositoryTest {
	
	@Autowired
	private AccountRepository account;
	
	@Test
	public void allTest(){
		
		Query query = new Query();
		query.setLimit(50);
		List<Account> ls = account.all(query);
		assertTrue(ls.size()==3);
		
	}

}

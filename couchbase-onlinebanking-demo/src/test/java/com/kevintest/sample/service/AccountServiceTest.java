package com.kevintest.sample.service;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kevintest.sample.Application;
import com.kevintest.sample.domain.Account;
import com.kevintest.sample.service.AccountService;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class AccountServiceTest {
	
	
	@Autowired
	private AccountService accountService;
	
	@Test
	/*public void testDoputAccount(){
		
		State state = new State("1","1011","kevin","1012","hou","100","15194","28091489");
		
		Account account = new Account();
		
		account.setId("couchbase");
		account.setUsername("couchbase");
		account.setPassword("123");
		account.setLastview("index");
		account.setState(state);
		
		accountService.doput(account);
		
		Account ac = accountService.doGetByName("couchbase");
		
		assertNotNull(ac);
		
	}*/
	
	public void testDoputAccount2(){
		
		Account ac = accountService.doGetByName("couchbase");
		
		ac.setLastview("fundstransfer");
		
		accountService.doput(ac);
		
		ac = accountService.doGetByName("couchbase");
		
		assertTrue(ac.getLastview().equals("fundstransfer"));
		
	}
	

}

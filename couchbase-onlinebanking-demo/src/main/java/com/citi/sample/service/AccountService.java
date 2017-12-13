package com.citi.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.citi.sample.domain.Account;
import com.citi.sample.repository.AccountRepository;
import com.couchbase.client.protocol.views.Query;

@Component
@Service
public class AccountService {

	@Autowired
	private AccountRepository accountRepository;
	
	
	public void doput(Account acc) {
		accountRepository.save(acc);
	}

	
	public Account doGetByName(String name) {
		//System.out.println(name);
		//Query query = new Query();
		//query.setKey(name);
		return accountRepository.findOne(name);
	}

	public void doDelete(Account acc) {
		accountRepository.delete(acc);
	}
	
	
	List<Account> allAccounts(int limit){
		Query query = new Query();
		query.setLimit(limit);
		
		return accountRepository.all(query);
	}
	
	List<Account> allAccounts(){
		return allAccounts(50);
	}
}

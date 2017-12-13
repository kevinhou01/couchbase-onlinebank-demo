package com.citi.sample.repository;

import java.util.List;

import org.springframework.data.couchbase.core.view.View;
import org.springframework.data.couchbase.repository.CouchbaseRepository;

import com.citi.sample.domain.Account;
import com.couchbase.client.protocol.views.Query;

public interface AccountRepository extends CouchbaseRepository<Account, String> {

	
	@View(designDocument="account",viewName="byName")
	Account findByUsername(Query query);
	
	Account findOne(String username);
	
	List<Account> all(Query query);
}

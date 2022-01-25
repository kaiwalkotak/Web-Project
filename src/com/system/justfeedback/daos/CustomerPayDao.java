package com.system.justfeedback.daos;

import java.util.List;

import com.system.justfeedback.model.CustomerPay;

public interface CustomerPayDao extends GenericDao<CustomerPay>{
	public void addCustomerPay(CustomerPay p);
	public void updateCustomerPay(CustomerPay p);
	public List<CustomerPay> findCustomerPay(Object...values) throws Exception;
}

package cn.prm.server.entity;

import java.io.Serializable;

/**
 * @Title: OrderItem.java
 * @Package: cn.prm.server.entity
 * @Description:
 * @author yyao
 * @date 2016年10月19日 下午5:37:06
 * @version v1.0
 */
public class OrderItem extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1505361954151572566L;
	
	private String orderId;
	private String passengerId;
	
	/**
	 * @return the orderId
	 */
	public String getOrderId() {
		return orderId;
	}
	/**
	 * @param orderId the orderId to set
	 */
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	/**
	 * @return the passengerId
	 */
	public String getPassengerId() {
		return passengerId;
	}
	/**
	 * @param passengerId the passengerId to set
	 */
	public void setPassengerId(String passengerId) {
		this.passengerId = passengerId;
	}
}
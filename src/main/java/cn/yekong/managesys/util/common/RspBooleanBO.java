/**  
 * All rights Reserved, Designed By liu peng
 * @Title:  RspBooleanBO.java   
 * @Package cn.yekong.managesys.util.common   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: liuPeng  
 * @date:   2018年8月11日 下午12:41:31   
 * @version V1.0  
 */ 
package cn.yekong.managesys.util.common;

/**   
 * @ClassName:  RspBooleanBO   
 * @Description: Boolean  公共返回类
 * @author: liuPeng  All rights reserved
 * @date:   2018年8月11日 下午12:41:31   
 *      
 */
public class RspBooleanBO extends RspInfoBO {
  
	private static final long serialVersionUID = 1L;

	private Boolean           isSuccess;
	
	private Object            object;

	/**
	 * @return the object
	 */
	public Object getObject() {
		return object;
	}

	/**
	 * @param object the object to set
	 */
	public void setObject(Object object) {
		this.object = object;
	}

	public Boolean getIsSuccess() {
		return isSuccess;
	}

	public void setIsSuccess(Boolean isSuccess) {
		this.isSuccess = isSuccess;
	}

	@Override
	public String toString() {
		return "RspBooleanBO [isSuccess=" + isSuccess + "]";
	}

}

/**  
 * All rights Reserved, Designed By liu peng
 * @Title:  RspInfoBO.java   
 * @Package cn.yekong.managesys.util.common   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: liuPeng  
 * @date:   2018年8月11日 下午12:43:36   
 * @version V1.0  
 */ 
package cn.yekong.managesys.util.common;

import java.io.Serializable;

/**   
 * @ClassName:  RspInfoBO   
 * @Description: 所有接口返回的基类
 * @author: liuPeng  All rights reserved
 * @date:   2018年8月11日 下午12:43:36   
 *      
 */
public class RspInfoBO implements Serializable {

	private static final long serialVersionUID = -9139965062655369886L;

	/** 返回编码 */
	private String            respCode;

	/** 返回描述 */
	private String            respDesc;

	/** 返回备注 */
	private String            remark;

	/** 返回 返回编码
	 * 
	 * @return 返回编码 */
	public String getRespCode() {
		return respCode;
	}

	/** 设置 返回编码
	 * 
	 * @param respCode
	 *        返回编码 */
	public void setRespCode(String respCode) {
		this.respCode = respCode;
	}

	/** 返回 返回编码
	 * 
	 * @return 返回编码 */
	public String getRespDesc() {
		return respDesc;
	}

	/** 设置 返回编码
	 * 
	 * @param respDesc
	 *        返回编码 */
	public void setRespDesc(String respDesc) {
		this.respDesc = respDesc;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	/**
	 * 判断是否是0000的返回码(成功)
	 * @return
	 * 
	 */
	public boolean isSucess() {
		if("0000".equals(respCode) ) return true;
		return false;
	}

	@Override
	public String toString() {
		return "RspInfoBO [respCode=" + respCode + ", respDesc=" + respDesc + ", remark=" + remark + "]";
	}
}
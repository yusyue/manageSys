/**  
 * All rights Reserved, Designed By liu peng
 * @Title:  UserLoginService.java   
 * @Package cn.yekong.managesys.service.uerlogin   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: liuPeng  
 * @date:   2018年8月5日 下午8:42:39   
 * @version V1.0  
 */ 
package cn.yekong.managesys.service.uerlogin;

import cn.yekong.managesys.util.common.RspBooleanBO;

/**   
 * @ClassName:  UserLoginService   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author: liuPeng  All rights reserved
 * @date:   2018年8月5日 下午8:42:39   
 *      
 */
public interface UserLoginService {
	/**
	 * 
	 * @Title: VerifyUserLogin   
	 * @Description:根据用户名密码判断用户是否登录成功
	 * @param: @param userName
	 * @param: @param password
	 * @param: @return      
	 * @return: RspBooleanBO      
	 * @throws
	 */
	public RspBooleanBO VerifyUserLogin(String userName,String password);
}

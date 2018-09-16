/**  
 * @Title:  UserRegisterService.java   
 * @Package cn.yekong.managesys.service.uerregister   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: yusyue     
 * @date:   2018年9月16日 下午3:37:43   
 * @version V1.0 
 */  
package cn.yekong.managesys.service.uerregister;

import cn.yekong.managesys.model.bo.UserInfoReqBO;
import cn.yekong.managesys.util.common.RspBooleanBO;

/**   
 * @ClassName:  UserRegisterService   
 * @Description:TODO(用户注册接口)   
 * @author: yusyue 
 * @date:   2018年9月16日 下午3:37:43   
 *     
 */
public interface UserRegisterService {

	/**
	 * 
	 * @Title: VerifyUserRegister   
	 * @Description: 保存用户输入的账号密码 
	 * @param: @param userInfoReqBO
	 * @param: @return      
	 * @return: RspBooleanBO      
	 * @throws
	 */
	public RspBooleanBO VerifyUserRegister (UserInfoReqBO userInfoReqBO);
}

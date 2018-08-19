/**  
 * All rights Reserved, Designed By liu peng
 * @Title:  UserLoginServiceImpl.java   
 * @Package cn.yekong.managesys.serviceimpl.userLoginimpl   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: liuPeng  
 * @date:   2018年8月5日 下午8:43:31   
 * @version V1.0  
 */ 
package cn.yekong.managesys.serviceimpl.userLoginimpl;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yekong.managesys.constant.Constant;
import cn.yekong.managesys.dao.UserInfoMapper;
import cn.yekong.managesys.model.UserInfo;
import cn.yekong.managesys.service.uerlogin.UserLoginService;
import cn.yekong.managesys.util.common.BusinessException;
import cn.yekong.managesys.util.common.RspBooleanBO;

/**   
 * @ClassName:  UserLoginServiceImpl   
 * @Description: 用户登录实现类impl   
 * @author: liuPeng  All rights reserved
 * @date:   2018年8月5日 下午8:43:31   
 *      
 */
@Service("UserLoginService")
public class UserLoginServiceImpl implements UserLoginService {
	private static final Logger logger=LoggerFactory.getLogger(UserLoginServiceImpl.class);
	@Autowired
	private UserInfoMapper userInfoMapper;
	@Override
	public RspBooleanBO VerifyUserLogin(String userName, String password) {
		logger.debug("根据用户名密码验证用户登录++start++用户名:"+userName+"密码:"+password);
		RspBooleanBO rspBO=new RspBooleanBO();
		try {
			if(StringUtils.isNotBlank(userName)&&StringUtils.isNotBlank(password)){
				UserInfo user =userInfoMapper.selectUserByNameAndpassword(userName, password);
				if(user!=null){
					rspBO.setIsSuccess(true);
					rspBO.setObject(user);
				}else{
					rspBO.setIsSuccess(false);
				}
				rspBO.setRespCode(Constant.RSP_SUCCESS_CODE);
				rspBO.setRespDesc("根据用户名密码查询接口成功");
			}else{
				throw new BusinessException(Constant.RSP_NULL_PARAMETER, "参数不能为空!");
			}
		} catch (Exception e) {
			rspBO.setRespCode(Constant.RSP_FAILURE_CODE);
			logger.error("用户登录接口UserLoginService发生异常", e);
			throw new BusinessException(Constant.RSP_FAILURE_CODE, e.getMessage());
		}
		return rspBO;
	}

}

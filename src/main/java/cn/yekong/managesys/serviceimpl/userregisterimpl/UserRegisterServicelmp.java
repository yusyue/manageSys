/**  
 * @Title:  UserRegisterServicelmp.java   
 * @Package cn.yekong.managesys.serviceimpl.userregisterimpl   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: yusyue     
 * @date:   2018年9月16日 下午3:53:01   
 * @version V1.0 
 */  
package cn.yekong.managesys.serviceimpl.userregisterimpl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.apache.commons.lang3.StringUtils;
import cn.yekong.managesys.constant.Constant;
import cn.yekong.managesys.dao.UserInfoMapper;
import cn.yekong.managesys.model.UserInfo;
import cn.yekong.managesys.model.bo.UserInfoReqBO;
import cn.yekong.managesys.service.uerregister.UserRegisterService;
import cn.yekong.managesys.util.common.BusinessException;
import cn.yekong.managesys.util.common.RspBooleanBO;

/**   
 * @ClassName:  UserRegisterServicelmp   
 * @Description:用户注册实现类impl    
 * @author: yusyue 
 * @date:   2018年9月16日 下午3:53:01   
 *     
 */
@Service("UserRegisterService")

public class UserRegisterServicelmp implements UserRegisterService {
	private static final Logger logger=LoggerFactory.getLogger(UserRegisterServicelmp.class);
	@Autowired
	private UserInfoMapper userInfoMapper;
	/**   
	 * <p>Title: VerifyUserRegister</p>   
	 * <p>Description: </p>   
	 * @param userInfoReqBO
	 * @return   
	 * @see cn.yekong.managesys.service.uerregister.UserRegisterService#VerifyUserRegister(cn.yekong.managesys.model.bo.UserInfoReqBO)   
	 */  
	@Override
	public RspBooleanBO VerifyUserRegister(UserInfoReqBO userInfoReqBO) {
		// TODO Auto-generated method stub
		logger.debug("用户注册方法start--VerifyUserRegister--入参:"+userInfoReqBO);
		RspBooleanBO rspBooleanBO = new RspBooleanBO();
		try {
			UserInfo userInfo=transformParameter(userInfoReqBO);
			int flag =userInfoMapper.insert(userInfo);
			if(!"0".equals(flag)){
				rspBooleanBO.setIsSuccess(true);
				rspBooleanBO.setObject(userInfo);
			}else{
				rspBooleanBO.setIsSuccess(false);
			}
			rspBooleanBO.setRespCode(Constant.RSP_SUCCESS_CODE);
			rspBooleanBO.setRespDesc("注册接口调用成功");
		} catch (Exception e) {
			rspBooleanBO.setRespCode(Constant.RSP_FAILURE_CODE);
			logger.error("用户注册接口UserRegistService发生异常", e);
			throw new BusinessException(Constant.RSP_FAILURE_CODE, e.getMessage());
		}
		return rspBooleanBO;
	}
	public UserInfo transformParameter(UserInfoReqBO userInfoReqBO){
		UserInfo userInfo=new UserInfo();
		if(StringUtils.isNotBlank(userInfoReqBO.getUserName())||StringUtils.isNotBlank(userInfoReqBO.getUserPassword())){
			throw new BusinessException(Constant.RSP_NULL_PARAMETER, "用户名或密码不能为空!");
		}else{
			BeanUtils.copyProperties(userInfo,userInfoReqBO); 
		}
		
		return userInfo;
		
	}
	

}

/**  
 * @Title:  UserRegisterController.java   
 * @Package cn.yekong.managesys.controller.userregister   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: yusyue     
 * @date:   2018年9月16日 下午3:18:36   
 * @version V1.0 
 */  
package cn.yekong.managesys.controller.userregister;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import cn.yekong.managesys.model.bo.UserInfoReqBO;
import cn.yekong.managesys.service.uerregister.UserRegisterService;
import cn.yekong.managesys.util.common.RspBooleanBO;
import cn.yekong.managesys.util.methodutil.UserMethodUtil;

/**   
 * @ClassName:  UserRegisterController   
 * @Description:验证用户登录Controller 
 * @author: yusyue 
 * @date:   2018年9月16日 下午3:18:36   
 *     
 */
@Controller
public class UserRegisterController {
	private static final Logger logger=LoggerFactory.getLogger(UserRegisterController.class);
	@Autowired
	private UserRegisterService userRegisterService;
	@RequestMapping("/userRegister/verifyUserRegister")
	@ResponseBody 
	public JSONObject verifyUserRgister(HttpServletRequest request,HttpServletResponse reponse){
		UserInfoReqBO userInfoReqBO =UserMethodUtil.tarnsformParameter(request);
		RspBooleanBO rspBO=userRegisterService.VerifyUserRegister(userInfoReqBO);
		if(!"".equals(rspBO.getIsSuccess())&&rspBO.getIsSuccess()==true){
			HttpSession session = request.getSession();
			session.setAttribute("user",rspBO.getObject());				
		}
		return this.assembleData(rspBO);
	}
	/**
	 * 转换出参数据
	 * @param rspBO
	 * @return
	 */
	public JSONObject assembleData(RspBooleanBO rspBO) {
		//转换出参数据。。。
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("respCode", StringUtils.isBlank(rspBO.getRespCode()) ? "9999" : rspBO.getRespCode());
		jsonObject.put("respDesc", StringUtils.isBlank(rspBO.getRespDesc()) ? ";描述为空" : rspBO.getRespDesc());
		jsonObject.put("data", JSON.toJSON(rspBO));
		logger.debug(jsonObject.toJSONString());
		return jsonObject;
	}
		
}

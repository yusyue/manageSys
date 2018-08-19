/**  
 * All rights Reserved, Designed By liu peng
 * @Title:  UserLoginController.java   
 * @Package cn.yekong.managesys.controller.userlogin   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: liuPeng  
 * @date:   2018年8月5日 下午8:59:55   
 * @version V1.0  
 */ 
package cn.yekong.managesys.controller.userlogin;

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

import cn.yekong.managesys.service.uerlogin.UserLoginService;
import cn.yekong.managesys.util.common.RspBooleanBO;

/**   
 * @ClassName:  UserLoginController   
 * @Description:用户登录Controller
 * @author: liuPeng  All rights reserved
 * @date:   2018年8月5日 下午8:59:55   
 *      
 */
@Controller
public class UserLoginController {
	private static final Logger logger=LoggerFactory.getLogger(UserLoginController.class);
	@Autowired
	private UserLoginService userLoginService;
	
	/**
	 * 
	 * @Title: verifyUserLogin   
	 * @Description: 验证用户登录Controller
	 * @param: @param request
	 * @param: @param reponse
	 * @param: @return      
	 * @return: JSONObject      
	 * @throws
	 */
	@RequestMapping("/userLogin/verifyUserLogin")
	@ResponseBody 
	public JSONObject verifyUserLogin(HttpServletRequest request,HttpServletResponse reponse) {
		JSONObject jSONObjectInit=new JSONObject();
		//判断入参是否为空
			String userName=request.getParameter("userName");
			String password=request.getParameter("password");
			System.out.println(userName+password);
			RspBooleanBO rspBO=userLoginService.VerifyUserLogin(userName, password);
			if(!"".equals(rspBO.getIsSuccess())&&rspBO.getIsSuccess()==true){
				HttpSession session = request.getSession();
				session.setAttribute("user",rspBO.getObject());				
			}
			jSONObjectInit=this.assembleData(rspBO);
		return jSONObjectInit;
		
	}
	
	/**
	 * 转换出参数据
	 * @param rspBO
	 * @return
	 */
	public JSONObject assembleData(RspBooleanBO rspBO) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("respCode", StringUtils.isBlank(rspBO.getRespCode()) ? "9999" : rspBO.getRespCode());
		jsonObject.put("respDesc", StringUtils.isBlank(rspBO.getRespDesc()) ? ";描述为空" : rspBO.getRespDesc());
		jsonObject.put("data", JSON.toJSON(rspBO));
		logger.debug(jsonObject.toJSONString());
		return jsonObject;
	}
}

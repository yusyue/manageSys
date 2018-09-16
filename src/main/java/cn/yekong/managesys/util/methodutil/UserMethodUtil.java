/**  
 * @Title:  UserMethodUtil.java   
 * @Package cn.yekong.managesys.util.methodutil   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: yusyue     
 * @date:   2018年9月16日 下午6:24:31   
 * @version V1.0 
 */  
package cn.yekong.managesys.util.methodutil;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;

import cn.yekong.managesys.model.bo.UserInfoReqBO;

/**   
 * @ClassName:  UserMethodUtil   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author: yusyue 
 * @date:   2018年9月16日 下午6:24:31   
 *     
 */
public class UserMethodUtil {
	public static UserInfoReqBO tarnsformParameter(HttpServletRequest request){
		UserInfoReqBO reqBO=new UserInfoReqBO();
		
		if(StringUtils.isNotBlank(request.getParameter("userName"))){
			reqBO.setUserName(request.getParameter("userName"));
		}else if(StringUtils.isNotBlank(request.getParameter("userAge"))){
			reqBO.setUserAge(request.getParameter("userAge"));
		}else if(StringUtils.isNotBlank(request.getParameter("userSex"))){
			reqBO.setUserSex(request.getParameter("userSex"));
		}else if(StringUtils.isNotBlank(request.getParameter("userBirth"))){
			try {				
				reqBO.setUserBirth(Date.valueOf(request.getParameter("userBirth")));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(StringUtils.isNotBlank(request.getParameter("userPhone"))){
			reqBO.setUserPhone(request.getParameter("userPhone"));
		}else if(StringUtils.isNotBlank(request.getParameter("userIdCard"))){
			reqBO.setUserIdCard(request.getParameter("userIdCard"));
		}else if(StringUtils.isNotBlank(request.getParameter("userPassword"))){
			reqBO.setUserPassword(request.getParameter("userPassword"));
		}else if(StringUtils.isNotBlank(request.getParameter("userAddress"))){
			reqBO.setUserAddress(request.getParameter("userAddress"));
		}else if(StringUtils.isNotBlank(request.getParameter("userHobby"))){
			reqBO.setUserHobby(request.getParameter("userHobby"));
		}else if(StringUtils.isNotBlank(request.getParameter("userWeight"))){
			reqBO.setUserWeight(request.getParameter("userWeight"));
		}else if(StringUtils.isNotBlank(request.getParameter("userHeight"))){
			reqBO.setUserHeight(request.getParameter("userHeight"));
		}else if(StringUtils.isNotBlank(request.getParameter("userStudentNumber"))){
			reqBO.setUserStudentNumber(request.getParameter("userStudentNumber"));
		}
		return reqBO;
}
}
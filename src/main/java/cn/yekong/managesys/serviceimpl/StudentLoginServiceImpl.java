/**  
 * All rights Reserved, Designed By liu peng
 * @Title:  StudentLoginServiceImpl.java   
 * @Package cn.yekong.managesys.serviceimpl   
 * @Description:    TODO(用一句话描述该文件做什么)   
 * @author: liuPeng  
 * @date:   2018年8月5日 下午4:21:55   
 * @version V1.0  
 *//* 
package cn.yekong.managesys.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;

import cn.yekong.managesys.dao.StudentLoginMapper;
import cn.yekong.managesys.model.StudentLogin;
import cn.yekong.managesys.service.StudentLoginService;

*//**   
 * @ClassName:  StudentLoginServiceImpl   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author: liuPeng  All rights reserved
 * @date:   2018年8月5日 下午4:21:55   
 *      
 *//*
public class StudentLoginServiceImpl implements StudentLoginService{
	@Autowired
	private StudentLoginMapper studentLoginMapper;

	*//**   
	 * <p>Title: vertifyStudentLogin</p>   
	 * <p>Description: </p>   
	 * @param name
	 * @param age
	 * @return   
	 * @see cn.yekong.managesys.service.StudentLoginService#vertifyStudentLogin(java.lang.String, java.lang.String)   
	 *//*  
	@Override
	public String vertifyStudentLogin(String name, String age) {
		StudentLogin s =studentLoginMapper.selectByPrimaryKey(1);
		return s.getName();
	}

}
*/
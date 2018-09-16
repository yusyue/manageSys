package cn.yekong.managesys.dao;

import org.apache.ibatis.annotations.Param;

import cn.yekong.managesys.model.UserInfo;

public interface UserInfoMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);
    /**
     * 
     * @Title: selectUserByNameAndpassword   
     * @Description: 根据用户名密码查询登录信息   
     * @param: @param userName
     * @param: @param password
     * @param: @return      
     * @return: UserInfo      
     * @throws    测试1234567891234567
     */
    //nininininini
    UserInfo selectUserByNameAndpassword(@Param("userName")String userName,@Param("password")String password);
}
package cn.edu.shu.society.service;

import cn.edu.shu.society.dto.UserDTO;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface UserService {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbggenerated Fri Jul 08 15:10:07 CST 2016
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbggenerated Fri Jul 08 15:10:07 CST 2016
     */
    int insert(UserDTO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbggenerated Fri Jul 08 15:10:07 CST 2016
     */
    UserDTO selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbggenerated Fri Jul 08 15:10:07 CST 2016
     */
    List<UserDTO> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table user
     *
     * @mbggenerated Fri Jul 08 15:10:07 CST 2016
     */
    int updateByPrimaryKey(UserDTO record);

    UserDTO selectByUserId(Long userId);

    PageInfo<UserDTO> selectAllByPage(int pageNum, int pageSize);
}
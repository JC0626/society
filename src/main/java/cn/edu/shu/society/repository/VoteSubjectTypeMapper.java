package cn.edu.shu.society.repository;

import cn.edu.shu.society.entity.VoteSubjectType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VoteSubjectTypeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vote_subject_type
     *
     * @mbggenerated Thu Jun 23 22:16:17 CST 2016
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vote_subject_type
     *
     * @mbggenerated Thu Jun 23 22:16:17 CST 2016
     */
    int insert(VoteSubjectType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vote_subject_type
     *
     * @mbggenerated Thu Jun 23 22:16:17 CST 2016
     */
    VoteSubjectType selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vote_subject_type
     *
     * @mbggenerated Thu Jun 23 22:16:17 CST 2016
     */
    List<VoteSubjectType> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table vote_subject_type
     *
     * @mbggenerated Thu Jun 23 22:16:17 CST 2016
     */
    int updateByPrimaryKey(VoteSubjectType record);

    Long selectIdByTypeName(String typeName);
}
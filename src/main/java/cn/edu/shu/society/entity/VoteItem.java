package cn.edu.shu.society.entity;

public class VoteItem {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column vote_item.id
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column vote_item.content
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column vote_item.vote_subject_id
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    private Long voteSubjectId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column vote_item.create_time
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    private Long createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column vote_item.update_time
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    private Long updateTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vote_item.id
     *
     * @return the value of vote_item.id
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vote_item.id
     *
     * @param id the value for vote_item.id
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vote_item.content
     *
     * @return the value of vote_item.content
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vote_item.content
     *
     * @param content the value for vote_item.content
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vote_item.vote_subject_id
     *
     * @return the value of vote_item.vote_subject_id
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public Long getVoteSubjectId() {
        return voteSubjectId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vote_item.vote_subject_id
     *
     * @param voteSubjectId the value for vote_item.vote_subject_id
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public void setVoteSubjectId(Long voteSubjectId) {
        this.voteSubjectId = voteSubjectId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vote_item.create_time
     *
     * @return the value of vote_item.create_time
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public Long getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vote_item.create_time
     *
     * @param createTime the value for vote_item.create_time
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column vote_item.update_time
     *
     * @return the value of vote_item.update_time
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public Long getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column vote_item.update_time
     *
     * @param updateTime the value for vote_item.update_time
     *
     * @mbggenerated Sun Jul 03 18:10:29 CST 2016
     */
    public void setUpdateTime(Long updateTime) {
        this.updateTime = updateTime;
    }
}
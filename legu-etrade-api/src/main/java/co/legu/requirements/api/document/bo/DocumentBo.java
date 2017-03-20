package co.legu.requirements.api.document.bo;

import java.util.Date;

public class DocumentBo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column document.id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column document.project_id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    private Long projectId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column document.user_id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    private Long userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column document.docDate
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    private Date docDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column document.content
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    private String content;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	/**
     * 用户名
     */
    private String userName;
    
    /**
     * 项目名
     */
    private String projectName;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column document.id
     *
     * @return the value of document.id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column document.id
     *
     * @param id the value for document.id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column document.project_id
     *
     * @return the value of document.project_id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public Long getProjectId() {
        return projectId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column document.project_id
     *
     * @param projectId the value for document.project_id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column document.user_id
     *
     * @return the value of document.user_id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column document.user_id
     *
     * @param userId the value for document.user_id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column document.docDate
     *
     * @return the value of document.docDate
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public Date getDocDate() {
        return docDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column document.docDate
     *
     * @param docDate the value for document.docDate
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public void setDocDate(Date docDate) {
        this.docDate = docDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column document.content
     *
     * @return the value of document.content
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column document.content
     *
     * @param content the value for document.content
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public void setContent(String content) {
        this.content = content;
    }
}
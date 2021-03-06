package co.legu.requirements.api.project.bo;

import java.util.Date;

public class ProjectBo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column project.id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column project.name
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column project.desc
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    private String descp;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column project.addtime
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    private Date addtime;

	/**
	 * 身份（1：组长，其他：组员）
	 */
    private String identity;
    public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column project.id
     *
     * @return the value of project.id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column project.id
     *
     * @param id the value for project.id
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column project.name
     *
     * @return the value of project.name
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column project.name
     *
     * @param name the value for project.name
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column project.desc
     *
     * @return the value of project.desc
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public String getDescp() {
        return descp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column project.desc
     *
     * @param desc the value for project.desc
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public void setDescp(String descp) {
        this.descp = descp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column project.addtime
     *
     * @return the value of project.addtime
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public Date getAddtime() {
        return addtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column project.addtime
     *
     * @param addtime the value for project.addtime
     *
     * @mbggenerated Thu Mar 09 15:13:52 CST 2017
     */
    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }
}
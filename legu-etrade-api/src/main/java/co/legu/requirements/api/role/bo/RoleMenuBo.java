package co.legu.requirements.api.role.bo;

import org.hibernate.validator.constraints.NotBlank;

public class RoleMenuBo {

	/**
	 * 角色菜单表的主键Id
	 */
	private Long id;
	
	/**
	 * 角色Id
	 */
	@NotBlank
	private Long RoleId;
	
	/**
	 * 菜单Id
	 */
	private Long MenuId;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getRoleId() {
		return RoleId;
	}

	public void setRoleId(Long roleId) {
		RoleId = roleId;
	}

	public Long getMenuId() {
		return MenuId;
	}

	public void setMenuId(Long menuId) {
		MenuId = menuId;
	}
}

package co.legu.requirements.api.document.services;

import java.util.List;

import co.legu.requirements.api.document.bo.DocumentBo;

public interface IDocumentServices {
	/**
	 * 根据用户Id和项目Id检索日报
	 * 
	 * @param projectId 项目Id
	 * @param userId 用户Id
	 * @param chargeHand 身份Id（1：组长，2：组员）
	 * @param startDate 开始日期
	 * @param endDate 终了日期
	 */
	public List<DocumentBo> getDocListByUseIdAndProId(Long projectId, Long userId, int chargeHand, String startDate, String endDate);
	
	/**
	 * 追加日报
	 * @param bo
	 */
	public void addDocument(DocumentBo bo);
//	
//	/**
//	 * 编辑菜单
//	 * @param bo
//	 */
//	public void editMenu(MenuBo bo);
//	
//	/**
//	 * 删除菜单
//	 * @param menuId
//	 */
//	public void delMenu(Long menuId);
//	
//	/**
//	 * 根据菜单Id查询菜单信息
//	 * 
//	 * @param menuId
//	 * @return
//	 */
//	public MenuBo getMenuById(Long menuId);
//	
//	
//	
//	
//	
//	//角色相关***********************************************************************************************************
//	/**
//	 * 角色菜单一览
//	 * @return
//	 */
//	public List<RoleBo> getRoleList();
//	
//	/**
//	 * 追加角色
//	 * @param bo
//	 */
//	public void addRole(RoleBo bo);
//	
//	/**
//	 * 根据角色Id查询角色信息
//	 * 
//	 * @param roleId
//	 * @return
//	 */
//	public RoleBo getRoleById(Long roleId);
//	
//	/**
//	 * 编辑角色
//	 * @param bo
//	 */
//	public void editRole(RoleBo bo);
//	
//	/**
//	 * 删除角色
//	 * @param roleId
//	 */
//	public void delRole(Long roleId);
	
//	/**
//	 * 删除角色和菜单（Role_Menu表）
//	 * @param roleId
//	 */
//	public void delRoleMenu(Long roleId);
	
//	/**
//	 * 给角色添加菜单
//	 * @param bo
//	 */
//	public void addRoleMenu(RoleMenuBo bo);
}

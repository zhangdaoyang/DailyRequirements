package co.legu.requirements.api.user.service;

import java.util.List;
import java.util.Optional;

import co.legu.requirements.api.user.bo.UserBo;

public interface IUserService {
	Optional<UserBo> queryByName(String username)throws Exception;
	
	//张道阳Start*****************************************************************************
	/**
	 * 获得用户一览
	 * @return
	 */
	public List<UserBo> getUserList();
	
	/**
	 * 追加用户
	 */
	public void addUser(UserBo bo);
	
	/**
	 * 编辑用户
	 * @param bo
	 */
	public void editUser(UserBo bo);
	
	/**
	 * 删除用户
	 * @param userId
	 */
	public void delUser(Long userId);
	//张道阳End*********************************************************************************

}

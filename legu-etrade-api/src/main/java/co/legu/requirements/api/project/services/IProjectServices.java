package co.legu.requirements.api.project.services;

import java.util.List;

import co.legu.requirements.api.project.bo.ProjectBo;

public interface IProjectServices {
	/**
	 * 根据用户名查询项目一览
	 * @return
	 */
	public List<ProjectBo> getProjectListByUser(Long userId);
}

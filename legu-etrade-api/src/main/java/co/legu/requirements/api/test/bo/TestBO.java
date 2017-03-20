package co.legu.requirements.api.test.bo;

import java.io.Serializable;

public class TestBO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2630996029824948403L;
	
	private long ID;
	private String Name;
	public long getID() {
		return ID;
	}
	public void setID(long iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}

	

}

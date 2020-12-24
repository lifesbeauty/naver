package blog;

public class BlogMgr {
	private DBConnectionMgr pool;
	
	public void BlogMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
}

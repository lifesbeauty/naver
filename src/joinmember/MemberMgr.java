package joinmember;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberMgr {
	
	private DBConnectionMgr pool;
	
	public MemberMgr(){
		pool = DBConnectionMgr.getInstance();
	}
	
	////Î°úÍ∑∏?ù∏
	public boolean loginMember(String id, String pswd1) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select id from NaverMember where id=? and pswd1=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pswd1);
			rs = pstmt.executeQuery();
			//if(rs.next()) flag=true; ?ÇòÏ§ëÏóê ?Öå?ä§?ä∏?ï¥Î≥¥Í∏∞
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	//id Ï§ëÎ≥µÏ≤¥ÌÅ¨
	public boolean checkId(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select id from NaverMember where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			flag = rs.next(); //Í≤∞Í≥ºÍ∞íÏù¥ ?ûà?ã§Î©? true <- Ï§ëÎ≥µ
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	//?öå?õêÍ∞??ûÖ
	public boolean insertMember(MemberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert NaverMember(id,pswd1,pswd2,name,birth_yy,birth_mm,birth_dd,gender,mobile) values(?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,bean.getId());
			pstmt.setString(2,bean.getPswd1());
			pstmt.setString(3,bean.getPswd1());
			pstmt.setString(4,bean.getName());;
			pstmt.setString(5,bean.getBirth_yy());
			pstmt.setString(6,bean.getBirth_mm());
			pstmt.setString(7,bean.getBirth_dd());
			pstmt.setString(8,bean.getGender());
			pstmt.setString(9,bean.getMobile());
			if(pstmt.executeUpdate() == 1) flag = true;
		} catch (Exception e) {
				e.printStackTrace();
		} finally {
				pool.freeConnection(con, pstmt);
		}
		return flag;
	}
}
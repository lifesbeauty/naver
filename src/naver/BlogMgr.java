package naver;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class BlogMgr {
	
	private DBConnectionMgr pool;
	
	public BlogMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//메인 블로그 세 개 가져오기
	public Vector<BlogBean>getMainList() {
		Vector<BlogBean> vlist = new Vector<BlogBean>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "select * from naverblog limit 0,3";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BlogBean bean = new BlogBean();
				bean.setbTitle(rs.getString("btitle"));
				bean.setbDesc(rs.getString("bdesc"));
				bean.setbImg(rs.getString("bimg"));
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	//메인 큰 블로그 하나 가져오기
	public BlogBean getHotBlog() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		BlogBean bean = new BlogBean();
		try {
			con = pool.getConnection();
			sql = "select * from naverblog where num=7";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setbTitle(rs.getString("btitle"));
				bean.setbImg(rs.getString("bimg"));
				bean.setbDesc(rs.getString("bdesc"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}
	//검색결과 가져오기
	public Vector<BlogBean> getBlogSearchList(String keyWord){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<BlogBean> vlist = new Vector<BlogBean>();
		try {
			con = pool.getConnection();
			sql = "SELECT * FROM naverblog WHERE btitle LIKE ? OR bdesc LIKE ? limit 0,5";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+keyWord+"%");
			pstmt.setString(2, "%"+keyWord+"%");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BlogBean bean = new BlogBean();
				bean.setbTitle(rs.getString("btitle"));
				bean.setbImg(rs.getString("bimg"));
				bean.setbDesc(rs.getString("bdesc"));
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//테스트용
	public Vector<BlogBean> getBlogSearchList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<BlogBean> vlist = new Vector<BlogBean>();
		try {
			con = pool.getConnection();
			sql = "SELECT * FROM naverblog WHERE btitle LIKE '%db%' OR bdesc LIKE '%db%' limit 0,5";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BlogBean bean = new BlogBean();
				bean.setbTitle(rs.getString("btitle"));
				bean.setbImg(rs.getString("bimg"));
				bean.setbDesc(rs.getString("bdesc"));
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
}
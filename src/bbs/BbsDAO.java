package bbs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class BbsDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private Context init;
	private DataSource ds;
	
	private static BbsDAO instance = new BbsDAO();
	
	public static BbsDAO getInstance() {
		return instance;
	}
	
	public BbsDAO() {
		try {
			init = (Context) new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		} finally {
			if(conn != null) try {conn.close(); } catch (SQLException e) {}
		} 
		
	}
	
	private BbsDTO mapping(ResultSet rs) throws SQLException {
		BbsDTO dto = new BbsDTO();
		dto.setBbsId(rs.getInt("bbsId"));
		dto.setIdx(rs.getInt("idx"));
		dto.setUserId(rs.getString("userId"));
		dto.setTitle(rs.getString("title"));
		dto.setContent(rs.getString("content"));
		dto.setBdate(rs.getDate("bdate"));
		return dto;
	}
	
	private void close() {
		try {
			if(rs != null) 		rs.close();
			if(pstmt != null) 	pstmt.close();
			if(conn != null) 	conn.close();
		} catch(Exception e) {}
	}

	public ArrayList<BbsDTO> selectList(){
		ArrayList<BbsDTO> list = new ArrayList<BbsDTO>();
		String sql = "select * "
				+ "from bbs order by idx ";
		
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(mapping(rs));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	public int getNext() {
		String sql = "select bbsid from bbs order by bbsid desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return -1;
	}
	
	public int insert(BbsDTO ob) {
		int row=0;
		String sql ="insert into bbs (bbsid,userid,title,content) "
				+ "values(?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ob.getBbsId());
			pstmt.setString(2, ob.getUserId());
			pstmt.setString(3, ob.getTitle());
			pstmt.setString(4, ob.getContent());
			row= pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return row;
	}
	
	public BbsDTO selectOne(String idx) {
		BbsDTO dto = new BbsDTO();
		String sql = "select * from bbs where idx="+idx;
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto=mapping(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return dto;
	}
	
	public int delete(int idx) {
		int row = 0;
		String sql ="delete from bbs where idx="+idx;
		
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			row=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return row;
	}
	
	public int modify(BbsDTO ob) {
		int row = 0;
		String sql="update bbs set title=?,content=? where idx=?";
		
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,ob.getTitle() );
			pstmt.setString(2,ob.getContent() );
			pstmt.setInt(3, ob.getIdx());
			row=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} close();
		return row;
	}
	
}

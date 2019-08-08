package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import util.Util;
import vo.MemberVO;

public class MemberDAO_OracleImpl implements MemberDAO {
	Connection conn = null;
	PreparedStatement stmt = null;
	
	
	@Override
	public MemberVO login(MemberVO vo) {
		try {
			conn = Util.getConn();
			String sql = "select * from Member where email=? and pw=?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, vo.getEmail());
			stmt.setString(2, vo.getPw());
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				vo.setName(rs.getString("name"));
				vo.setAddr(rs.getString("addr"));
				vo.setPhone(rs.getString("phone"));
				vo.setGender(rs.getInt("gender"));
				vo.setGender(rs.getInt("age"));			
			}else {
				return null;
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}

	@Override
	public void register(MemberVO vo) {
		try {
			conn = Util.getConn();
			String sql = "insert into member values (seq_member.nextval, ?,?,?,?,?,?,?,null,sysdate )";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, vo.getEmail());
			stmt.setString(2, vo.getPw());
			stmt.setString(3, vo.getPhone());
			stmt.setString(4, vo.getName());
			stmt.setInt(5, vo.getGender());
			stmt.setString(6, vo.getAddr());
			stmt.setInt(7, vo.getAge());
			stmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

	}

}

package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JDBCTemplate;
import member.model.vo.User;

public class UserDao {

	public User selectOneUser(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User loginUser = null;
		String query = "select * from user_member where user_id=?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				loginUser = new User();
				loginUser.setUserId(rset.getString("user_id"));
				loginUser.setUserAddr(rset.getString("user_addr"));
				loginUser.setUserLicense(rset.getString("user_license"));
				loginUser.setUserName(rset.getString("user_name"));
				loginUser.setUserPhone(rset.getString("user_phone"));
				loginUser.setUserGrade(rset.getInt("user_grade"));
				loginUser.setUserLevel(rset.getInt("user_level"));
				loginUser.setUserNo(rset.getInt("user_no"));
				loginUser.setUserPw(rset.getString("user_pw"));
				loginUser.setUserReport(rset.getInt("user_report"));
				loginUser.setUserEmail(rset.getString("user_email"));
				loginUser.setUserDate(rset.getString("user_Date"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return loginUser;
	}

	public int insertUser(Connection conn, User user) {
		PreparedStatement pstmt = null;
		int result = 0;
		String querty = "INSERT INTO USER_MEMBER VALUES(USER_SEQ.NEXTVAL,?,?,?,?,?,?,?,1,1,0,to_char(sysdate,'yyyy-mm-dd'))";
		try {
			pstmt = conn.prepareStatement(querty);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getUserPw());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserAddr());
			pstmt.setString(5, user.getUserEmail());
			pstmt.setString(6, user.getUserPhone());
			pstmt.setString(7, user.getUserLicense());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

}

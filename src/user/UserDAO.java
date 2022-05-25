package user; 

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import user.DatabaseUtil;

public class UserDAO 
{ 
	Connection conn = DatabaseUtil.getConnection(); 
	// ������ �����͸� ������ �־��ش�. 
	PreparedStatement pstmt; 
	private ResultSet rs;
				
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setNString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getNString(1).contentEquals(userPassword)) {
					return 1; //�α��� ����
				}
				else
					return 0; //��й�ȣ ����ġ
			}
			return -1; //���̵� ����
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}

	
	
	public int join(String userID, String userPassword, String userName, String userGender, String userEmail)
	{ 
		String SQL = "INSERT INTO USER VALUES (?,?,?,?,?)"; 
		try 
		{ 
			// ������ �����͸� ������ �־��ش�. 
			pstmt = conn.prepareStatement(SQL); 
						
			// �������� ?�ȿ� ������ �����͸� �־��ش�. 
			pstmt.setString(1, userID); 
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userName);
			pstmt.setString(4, userGender);
			pstmt.setString(5, userEmail);
			
			// ��ɾ ������ ��� ��ȯ, ��ȯ��: insert�� �� �������� ���� 
			return pstmt.executeUpdate(); 
			
		} catch (Exception e){
		 
			e.printStackTrace(); 
		} 
		
		return -1; 
		}
	
		
	}

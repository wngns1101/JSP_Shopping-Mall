package user;

import java.sql.Connection; 
import java.sql.DriverManager;

public class DatabaseUtil {
	public static Connection getConnection()//�����ͺ��̽��� ������� ���� 
	{  
		try 
		{ 
			// �����ϰ��� �ϴ� db �ּ�
			String dbURL = "jdbc:mysql://localhost:3306/BBS?useSSL=false&serverTimezone=UTC";
			// db ���̵�
			String dbID = "root";
			// db �н�����
			String dbPassword = "root"; 
			// jdbc ����̹� ȣ��
			Class.forName("com.mysql.cj.jdbc.Driver");
			// �����ϱ� ���� Ŀ�ؼ� ����
			return DriverManager.getConnection(dbURL, dbID, dbPassword);  
		} catch (Exception e){
			e.printStackTrace(); 
		} 
		return null;
		}
}


	

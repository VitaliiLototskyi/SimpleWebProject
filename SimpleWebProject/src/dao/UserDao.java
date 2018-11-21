package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.User;

public class UserDao {
	private Connection connection;

	public UserDao() throws Exception {
		connection = new DBConnection().getConnection();
	}
	
	public void saveUser(User user) throws SQLException{
		String sql = "Insert into User(id, name, password) values(?,?,?)";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setInt(1, user.getId());
		preparedStatement.setString(2, user.getName());
		preparedStatement.setString(3, user.getPassword());
		preparedStatement.executeUpdate();
	}
	
	public List<User> getAllUser() throws SQLException {
		List<User> result = new ArrayList<>();
		String sql = "Select id, name, password From User";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while(resultSet.next()) {
			User user = new User();
			user.setId(resultSet.getInt(1));
			user.setName(resultSet.getString(2));
			user.setPassword(resultSet.getString(3));
			result.add(user);
		}
		return result;
	}
	public int getNewId() throws SQLException {
		String sql = "Select coalesce(MAX(id), 0) +1 from User";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		if (resultSet.next()) {
			return resultSet.getInt(1);
		}
		
		return -1;
	}
}

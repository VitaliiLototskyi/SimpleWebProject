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
		if(isUserExist(user.getEmail())){
			return;
		}
		String sql = "Insert into User(id, name, email, password) values(?,?,?,?)";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setInt(1, user.getId());
		preparedStatement.setString(2, user.getName());
		preparedStatement.setString(3, user.getEmail());
		preparedStatement.setString(4, user.getPassword());
		preparedStatement.executeUpdate();
	}
	
	public List<User> getAllUser() throws SQLException {
		List<User> result = new ArrayList<>();
		String sql = "Select id, name, email, password From User";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while(resultSet.next()) {
			User user = new User();
			user.setId(resultSet.getInt(1));
			user.setName(resultSet.getString(2));
			user.setEmail(resultSet.getString(3));
			user.setPassword(resultSet.getString(4));
			result.add(user);
		}
		return result;
	}
	
	public User getUser(String email, String password) throws SQLException {
		String sql = "Select id, name, email, password From User where email = ? and password = ?";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, email);
		preparedStatement.setString(2, password);
		ResultSet resultSet = preparedStatement.executeQuery();
		if (resultSet.next()) {
			User user = new User();
			user.setId(resultSet.getInt(1));
			user.setName(resultSet.getString(2));
			user.setEmail(resultSet.getString(3));
			user.setPassword(resultSet.getString(4));
			return user;
		}
		return null;
	}
	
	public boolean isUserExist(String email) throws SQLException {
		String sql = "Select id From User where email = ?";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, email);
		ResultSet resultSet = preparedStatement.executeQuery();
		if (resultSet.next()) {
			return true;
		}
		return false;
	}
}

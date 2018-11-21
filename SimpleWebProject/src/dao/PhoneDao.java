package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Phone;

public class PhoneDao {
	private Connection connection;

	public PhoneDao() throws Exception {
		connection = new DBConnection().getConnection();
	}

	public void savePhone(Phone phone) throws SQLException {
		String sql = "Insert into Phones (id, tradeMark, name) values(?,?,?) ";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setInt(1, getNewId());
		preparedStatement.setString(2, phone.getTradeMark());
		preparedStatement.setString(3, phone.getName());
		preparedStatement.executeUpdate();
	}

	public List<Phone> getAllPhone() throws SQLException {
		List<Phone> result = new ArrayList<>();
		String sql = "Select id, tradeMark, name From Phones";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			Phone phone = new Phone();
			phone.setId(resultSet.getInt(1));
			phone.setTradeMark(resultSet.getString(2));
			phone.setName(resultSet.getString(3));
			result.add(phone);
		}

		return result;
	}

	public Phone getPhoneById(int phoneId) throws SQLException {
		String sql = "Select id, tradeMark, name from Phones where id = ?";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setInt(1, phoneId);
		ResultSet resultSet = preparedStatement.executeQuery();
		while(resultSet.next()) {
			Phone phone = new Phone();
			phone.setId(resultSet.getInt(1));
			phone.setTradeMark(resultSet.getString(2));
			phone.setName(resultSet.getString(3));
			return phone;
		}
		
		return null;
	}
	
	public int getNewId() throws SQLException {
		String sql = "Select coalesce(MAX(id), 0) +1 from Phones";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		if (resultSet.next()) {
			return resultSet.getInt(1);
		}
		
		return -1;
	}
	
	public void deletePhone(int phoneId) throws SQLException {
		String sql = "Delete From Phones where id = ?";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setInt(1, phoneId);
		preparedStatement.executeUpdate();
	}
	
	public void updatePhone(Phone phone) throws SQLException {
		Phone exist = getPhoneById(phone.getId());
		exist.setTradeMark(phone.getTradeMark());
		exist.setName(phone.getName());
		deletePhone(phone.getId());
		savePhone(exist);
	}

}

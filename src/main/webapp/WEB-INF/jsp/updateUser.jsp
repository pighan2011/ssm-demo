<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Update User</h2>
	<hr>
	<form action="${pageContext.request.contextPath }/users/updateUser" method="post">
		<table>
			<tr>
				<td>name:</td>
				<td><input type="hidden" name="uid" value="${user.uid }">
					<input type="text" name="name" value="${user.name }">
				</td>
			</tr>
			<tr>
				<td>username:</td>
				<td><input type="text" name="username" value="${user.username }" readonly></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><input type="password" name="password" value="${user.password }"></td>
			</tr>
			<tr>
				<td>age:</td>
				<td><input type="number" name="age" value="${user.age }"></td>
			</tr>
			<tr>
				<td>gender:</td>
				<td>男<input type="radio" name="gender" value="M" ${user.gender == 'M'?'checked':'' }>&nbsp;&nbsp;
					女<input type="radio" name="gender" value="F" ${user.gender == 'F'?'checked':'' }>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Submit Update"></td>
			</tr>
		</table>
	</form>
</body>
</html>
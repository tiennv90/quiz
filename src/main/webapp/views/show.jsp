<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<header>
	</header>
<body>
	<h3>Four Arithmetic Operations Quiz</h3>

	<c:if test="${not empty list}">
		<form action="/quiz" method="post">
			<table>
				<c:forEach var="formular" items="${list}">

					<input type="hidden" name="firstParam" value="${formular.firstParam}">
					<input type="hidden" name="operator" value="${formular.operator.value}">
					<input type="hidden" name="secondParam" value="${formular.secondParam}">
					<tr>
						<td>${formular.firstParam} ${formular.operator.value} ${formular.secondParam}  </td>
						<td> = </td>
						<td><input name="result" type="text" size="10px" /></td>
					</tr>

				</c:forEach>
				<tr>
					<td colspan="3"><input type="submit" value="Submit Button" />
					</td>
				</tr>
			</table>
		</form>
	</c:if>

</body>
</html>
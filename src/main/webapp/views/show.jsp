<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<header>
		<script type="text/javascript">
			function isNumberKey(evt) {
			    var charCode = (evt.which) ? evt.which : event.keyCode;
			    if (charCode != 46 && charCode > 31
			    && (charCode < 48 || charCode > 57))
			        return false;
			    return true;
			}
		</script>
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
						<td>${formular.firstParam} ${formular.operator.value} ${formular.secondParam}</td>
						<td>=</td>
						<td><input name="result" type="text" size="10px" onkeypress="return isNumberKey(event)" /></td>
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
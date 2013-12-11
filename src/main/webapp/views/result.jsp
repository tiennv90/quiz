<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<header> 
	</header>
<body>
	<h3>Four Arithmetic Operations Quiz</h3>
	
	<c:if test="${not empty formulars}">
		<table>
			<c:forEach var="formular" items="${formulars}">

					<tr>
						<td>${formular.firstParam} ${formular.operator.value} ${formular.secondParam}</td>
						<td>=</td>
						<td>${formular.answer}</td>
						
							<c:choose>
							      <c:when test="${formular.correct == true}">
							      		<td><p>correct</p></td>
							      		<td><p><input type="checkbox" checked="checked" disabled="disabled"/> </p></td>
							      </c:when>
							      <c:otherwise>
							      		<td><p>wrong</p></td>
							      		<td><p><input type="checkbox" disabled="disabled"/></p></td>
							      </c:otherwise>
							</c:choose>
					</tr>

			</c:forEach>
			<tr><td colspan="3">Your score: ${score} </td></tr>
			<tr>
				<td colspan="3"><a href="/"> Make another quiz </a>
				</td>
			</tr>
		</table>
	</c:if>
</body>
</html>
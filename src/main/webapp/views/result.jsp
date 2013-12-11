<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<header> 
	</header>
<body>
	<h3>Result</h3>
	<c:if test="${not empty formulars}">
		<table>
			<c:forEach var="formular" items="${formulars}">

					<tr>
						<td>${formular.firstParam} ${formular.operator.value} ${formular.secondParam}</td>
						<td>=</td>
						<td>${formular.answer}</td>
						<td>
							<c:choose>
							      <c:when test="${formular.correct == true}">
							      		<p>correct</p>
							      </c:when>
							      <c:otherwise>
							      		<p>wrong</p>
							      </c:otherwise>
							</c:choose>
						</td>
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
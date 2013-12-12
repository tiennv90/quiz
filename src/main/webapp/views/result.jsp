<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<header> 
	</header>
<body>
<div class="container">
	<jsp:include page="header.jsp"/>
	<section class="round">
	<c:if test="${not empty formulars}">
		<table>
			<c:forEach var="formular" items="${formulars}">

					<tr>
						<td>${formular.firstParam} ${formular.operator.value} ${formular.secondParam}</td>
						<td>=</td>
						<td>${formular.answer}</td>
						
							<c:choose>
							      <c:when test="${formular.correct == true}">
							      		<td>correct</td>
							      		<td><input type="checkbox" checked="checked" disabled="disabled"/></td>
							      </c:when>
							      <c:otherwise>
							      		<td>wrong</td>
							      		<td><input type="checkbox" disabled="disabled"/></td>
							      		<td>${formular.actualScore}</td>
							      </c:otherwise>
							</c:choose>
					</tr>

			</c:forEach>
			<tr><td colspan="3">Your score: ${score} </td></tr>
			<tr>
				<td colspan="3"><a href="/">Make another quiz</a>
				</td>
			</tr>
		</table>
	</c:if>
	</section>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../jspf/includes.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../jspf/headconfig.jspf"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Homepage</title>
</head>
<body>

	<%@ include file="../jspf/main_menu.jspf"%>
	<br />
	<div class="container">
		<div class="row">
			<h2 class="text-center">
				Welcome to School Manager <b><c:out value="${user.fullName}"></c:out>
				</b>.
			</h2>

			<h4 class="text-center">If you would like to create a new
				school, teacher or user profile, click below:</h4>
		</div>
		<br />
		<hr />
		<br />
		<div class="row">
			<div class="col-sm-4">
				<a type="button" class="btn btn-success btn-lg"
					href="${pageContext.request.contextPath}/school/create">Create
					new school</a>
			</div>
			<div class="col-sm-4">

				<a type="button" class="btn btn-info btn-lg"
					href="${pageContext.request.contextPath}/teacher/userNewTeacher">Create
					new teacher profile</a>
			</div>
			<div class="col-sm-4">

				<a type="button" class="btn btn-warning btn-lg"
					href="${pageContext.request.contextPath}/student/userNewStudent">Create
					new student profile</a>
			</div>
		</div>
		<br />
		<hr />
		<br />
		<div class="row">
			<h4 class="text-center">Or manage one of your existing
				activities:</h4>
		</div>
		<br />
		<hr />
		<br />
		<div class="row">
			<div class="col-sm-4">
				<h5 class="text-success">Schools you are managing:</h5>
			</div>
			<div class="col-sm-4">
				<h5 class="text-info">Schools where you teach:</h5>
			</div>
			<div class="col-sm-4">
				<h5 class="text-warning">Schools where you study:</h5>
			</div>
		</div>
		<br />
		<hr />
		<br />
		<div class="row">
			<div class="col-sm-4">
				<c:forEach items="${user.userRoles}" var="userRole">
					<c:if test="${userRole.userRole eq 'ROLE_SCHOOLADMIN'}">
						<div class="card border-success mb-3" style="max-width: 20rem;">
							<div class="card-header">School owner/admin</div>
							<div class="card-body text-success">
								<h4 class="card-title">
									<c:out value="${userRole.school.name}"></c:out>
								</h4>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>

					</c:if>
				</c:forEach>
			</div>
			<div class="col-sm-4">
				<c:forEach items="${user.userRoles}" var="userRole">
					<c:if test="${userRole.userRole eq 'ROLE_TEACHER'}">
						<div class="card border-primary mb-3" style="max-width: 20rem;">
							<div class="card-header">School owner/admin</div>
							<div class="card-body text-primary">
								<h4 class="card-title">
									<c:out value="${userRole.school.name}"></c:out>
								</h4>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div class="col-sm-4">
				<c:forEach items="${user.userRoles}" var="userRole">
					<c:if test="${userRole.userRole eq 'ROLE_STUDENT'}">
						<div class="card border-warning mb-3" style="max-width: 20rem;">
							<div class="card-header">School owner/admin</div>
							<div class="card-body text-warning">
								<h4 class="card-title">
									<c:out value="${userRole.school.name}"></c:out>
								</h4>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>


	</div>

	<%@ include file="../jspf/footer.jspf"%>
</body>
</html>
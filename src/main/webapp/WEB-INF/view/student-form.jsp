<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
<%--@elvariable id="student" type="com.kamil.spring.model.Student"--%>
<form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName"/>
    <br><br>
    Last name: <form:input path="lastName"/>
    <br><br>
    <form:select path="country">
        <form:options items="${student.countryOptions}"/>
    </form:select>
    <br><br>
    Favorite Language:
    <form:radiobuttons path="favouriteLanguage" items="${student.favouriteLanguageOptions}"/>
    <br><br>
    Operating Systems:
    Linux <form:checkbox path="operatingSystems" value="Linux"/>
    Windows OS <form:checkbox path="operatingSystems" value="Windows OS"/>
    <br><br>
    <input type="submit" value="Submit">
</form:form>
</body>
</html>

<%@page
	import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page
	import="com.tresct.departamentales.hibernate.entitys.PersonaCorreos"%>
<%@ page import="com.tresct.departamentales.dao.PersonaCorreosDAO"%>
<%@ page
	import="com.tresct.departamentales.dao.impl.PersonaCorreosDAOImpl"%>
<%@ page import="org.springframework.context.ApplicationContext"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body ng-app ng-init="nombre='Jorge'">

	<h1>Hello {{nombre}}</h1>



	<%
		ApplicationContext context = new ClassPathXmlApplicationContext("application-context.xml");
		PersonaCorreosDAO personaCorreosDAO = (PersonaCorreosDAO) context.getBean("personaCorreosDAO");
		System.out.println("Hola el correo es : " + personaCorreosDAO.damePersonaCorreos(3).getCorreo());
	%>
</body>
</html>

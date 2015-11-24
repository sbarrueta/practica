<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.tresct.departamentales.hibernate.entitys.PersonaCorreos" %>
<%@ page import="com.tresct.departamentales.hibernate.*" %>


<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.Session" %>

<%@ page import="org.hibernate.cfg.Configuration" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body ng-app ng-init="nombre='Jorge'">
    	
        <h1>Hello {{nombre}}</h1>
        
        
        
        <%
        
        Session hibernateSession = HibernateUtil
		        		.getSessionfactory()
						.openSession();
		
		PersonaCorreos personaCorreos = (PersonaCorreos)hibernateSession.get(PersonaCorreos.class, 3);
        System.out.println("Hola desde JAVA "+personaCorreos.getCorreo());
        
        %>
    </body>
</html>

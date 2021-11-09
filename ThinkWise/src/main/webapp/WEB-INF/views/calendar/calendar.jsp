<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
    <link href='fullcalendar/main.css' rel='stylesheet' />
    <script src='fullcalendar/main.js'></script>
    
    <c:if test="${division == 'A' }">
		<script>
		console.log("a")
	      	document.addEventListener('DOMContentLoaded', function() {
	        	var calendarEl = document.getElementById('calendar');
	        	var calendar = new FullCalendar.Calendar(calendarEl, {
	          		initialView: 'dayGridMonth',
	          		contentHeight: 'auto',
	    	  		googleCalendarApiKey: 'AIzaSyB86wV-rIE_JCqvDsms6lctKuVPiieIusA',
	    	  		events: {
	    	    		googleCalendarId: 'ji2jt73rrfe38ct7e1jioi4r88@group.calendar.google.com',
	   	    			className: 'gcal-event' // an option!
	    	  		}
	        	});
	        	calendar.render();
	      	});
	    </script>
    </c:if>
    
    <c:if test="${division != 'A' }">
		<script>
		console.log("not a");
	      	document.addEventListener('DOMContentLoaded', function() {
	        	var calendarEl = document.getElementById('calendar');
	        	var calendar = new FullCalendar.Calendar(calendarEl, {
	          		initialView: 'dayGridMonth',
	          		contentHeight: 'auto',
	    	  		googleCalendarApiKey: 'AIzaSyB86wV-rIE_JCqvDsms6lctKuVPiieIusA',
	    	  		events: {
	    	    		googleCalendarId: 'ji2jt73rrfe38ct7e1jioi4r88@group.calendar.google.com',
	   	    			className: 'gcal-event' // an option!
	    	  		},
	    	  		eventClick: function(e) { //구글캘린더로 이동하는 이벤트 막기(관리자의 경우 이동할 수 있도록 해도 좋을 듯)
	    		  		e.jsEvent.stopPropagation();
	    		  		e.jsEvent.preventDefault();
	    	  		}
	        	});
	        	calendar.render();
	      	});
	    </script>
    </c:if>
    
    
    
    <style>
    	#calendar{
    		margin-top: 70px;
    		padding-top: 50px;
    		margin-left:15%;
    		margin-right:15%;
    		padding-left:30px;
    		padding-right:30px;
    		padding-bottom:50px;
    		background-color: white;
    	}
    	a.fc-daygrid-event{
    		font-family: 'Poppins', sans-serif;
    		color: #221a9de3;
    	}
    </style>
  </head>
  <body>
    <div id='calendar'></div>
    
    <script>
    <!--let calendar = new Calendar(calendarEl, {
    	  plugins: [ googleCalendarPlugin ],
    	  googleCalendarApiKey: 'AIzaSyB86wV-rIE_JCqvDsms6lctKuVPiieIusA',
    	  events: {
    	    googleCalendarId: 'ji2jt73rrfe38ct7e1jioi4r88@group.calendar.google.com'
    	  }
    	});-->
    </script>

  </body>
</html>
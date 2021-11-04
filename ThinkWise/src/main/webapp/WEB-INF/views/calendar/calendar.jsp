<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
    <link href='fullcalendar/main.css' rel='stylesheet' />
    <script src='fullcalendar/main.js'></script>
    <script>
      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth',
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
    
    <style>
    	#calendar{
    		margin: 70px;
    		padding-top: 30px;
    		padding-left:10%;
    		padding-right:10%;
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
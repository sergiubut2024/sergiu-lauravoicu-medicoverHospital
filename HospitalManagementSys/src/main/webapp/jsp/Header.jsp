<%@page import="in.co.hospital.mgt.sys.controller.LoginCtl"%>
<%@page import="in.co.hospital.mgt.sys.controller.HMSView"%>
<%@page import="in.co.hospital.mgt.sys.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Health Care Hospital</title>
<link href="/HospitalManagementSys/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="/HospitalManagementSys/plugins/cubeportfolio/css/cubeportfolio.min.css">
  <link href="/HospitalManagementSys/css/nivo-lightbox.css" rel="stylesheet" />
  <link href="/HospitalManagementSys/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="/HospitalManagementSys/css/owl.carousel.css" rel="stylesheet" media="screen" />
  <link href="/HospitalManagementSys/css/owl.theme.css" rel="stylesheet" media="screen" />
  <link href="/HospitalManagementSys/css/animate.css" rel="stylesheet" />
  <link href="/HospitalManagementSys/css/style.css" rel="stylesheet">

  <!-- boxed bg -->
  <link id="bodybg" href="/HospitalManagementSys/bodybg/bg1.css" rel="stylesheet" type="text/css" />
  <!-- template skin -->
  <link id="t-colors" href="/HospitalManagementSys/color/default.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
      
<%
    UserBean userBean = (UserBean) session.getAttribute("user");

    boolean userLoggedIn = userBean != null;

    String welcomeMsg = "Hi, ";

    if (userLoggedIn) {
        String role = (String) session.getAttribute("role");
        welcomeMsg += userBean.getFirstName() + " (" + role + ")";
    } else {
        welcomeMsg += "Guest";
    }

%>
      
      <div class="container navigation">

        <div class="navbar-header page-scroll">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
          <a class="navbar-brand" href="<%=HMSView.WELCOME_CTL%>">
                    <img src="<%=request.getContextPath()%>/assets/logo-hospital.png" alt="Medicover Hospital" style="height: 63px; display: inline-block;">
    				<span class="sr-only">Hospital Management System</span> <!-- Keeps the text for screen readers only -->
                </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="<%=HMSView.WELCOME_CTL%>">Home</a></li>
            <%if(userLoggedIn){ %>
            
            <%if(userBean.getRoleId()==1){%>
           <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Doctor</a>
              <ul class="dropdown-menu">
                <li><a href="<%=HMSView.DOCTOR_CTL%>">Add Doctor</a></li>
                <li><a href="<%=HMSView.DOCTOR_LIST_CTL%>">Doctor List</a></li>
              </ul>
            </li>
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Receptionist</a>
              <ul class="dropdown-menu">
                <li><a href="<%=HMSView.RECEPTIONIST_CTL%>">Add Receptionist</a></li>
                <li><a href="<%=HMSView.RECEPTIONIST_LIST_CTL%>">Receptionist List</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Patient</a>
              <ul class="dropdown-menu">
                <li><a href="<%=HMSView.PATIENT_CTL%>">Add Patient</a></li>
                <li><a href="<%=HMSView.PATIENT_LIST_CTL%>">Patient List</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Appointment</a>
              <ul class="dropdown-menu">
                <li><a href="<%=HMSView.APPOINTMENT_CTL%>">Add Appointment</a></li>
                <li><a href="<%=HMSView.APPOINTMENT_LIST_CTL%>">Appointment List</a></li>
              </ul>
            </li>
           <%}else if(userBean.getRoleId()==2){%>
           
           <li><a href="<%=HMSView.PATIENT_LIST_CTL%>">PatientList</a></li>
           	<li><a href="<%=HMSView.APPOINTMENT_LIST_CTL%>">AppointmentnList</a></li>
          
           <%}else if(userBean.getRoleId()==3){%>
        	<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Patient</a>
              <ul class="dropdown-menu">
                <li><a href="<%=HMSView.PATIENT_CTL%>">Add Patient</a></li>
                <li><a href="<%=HMSView.PATIENT_LIST_CTL%>">Patient List</a></li>
              </ul>
            </li>
           <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Appointment</a>
              <ul class="dropdown-menu">
                <li><a href="<%=HMSView.APPOINTMENT_CTL%>">Add Appointment</a></li>
                <li><a href="<%=HMSView.APPOINTMENT_LIST_CTL%>">Appointment List</a></li>
              </ul>
            </li>
            
           <%}%>
           
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=welcomeMsg%></a>
              <ul class="dropdown-menu">
                <li><a href="<%=HMSView.MY_PROFILE_CTL%>">My Profile</a></li>
                <li><a href="<%=HMSView.CHANGE_PASSWORD_CTL%>">Change Password</a></li>
                <li><a href="<%=HMSView.LOGIN_CTL%>?operation=<%=LoginCtl.OP_LOG_OUT%>">Logout</a></li>
              </ul>
            </li>
            <%}else{%>
            <li><a href="<%=HMSView.LOGIN_CTL%>">SignIn</a></li>
            <%} %>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container -->
    </nav>
</body>
</html>
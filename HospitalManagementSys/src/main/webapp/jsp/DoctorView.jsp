<%@page import="in.co.hospital.mgt.sys.controller.DoctorCtl"%>
<%@page import="in.co.hospital.mgt.sys.util.HTMLUtility"%>
<%@page import="java.util.HashMap"%>
<%@page import="in.co.hospital.mgt.sys.util.DataUtility"%>
<%@page import="in.co.hospital.mgt.sys.util.ServletUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<section  class="intro">
      <div class="intro-content">
        <div class="container">
          <div class="row">
           
            <div class="col-lg-6">
              <div class="form-wrapper">
                <div class="wow fadeInRight" >

                  <div class="panel panel-skin">
                    <div class="panel-heading">
                      <h3 class="panel-title">Doctor</h3>
                      <b><font color="red"> <%=ServletUtility.getErrorMessage(request)%>
                </font></b>
                
              <b><font color="Green"> <%=ServletUtility.getSuccessMessage(request)%>
                </font></b>
                    </div>
                    <jsp:useBean id="bean" class="in.co.hospital.mgt.sys.bean.UserBean"
            scope="request"></jsp:useBean>
            
            
                    <div class="panel-body">
                      <form action="<%=HMSView.DOCTOR_CTL%>" method="post"  >
                      
                     
              
              <input type="hidden" name="id" value="<%=bean.getId()%>">
              <input type="hidden" name="createdBy" value="<%=bean.getCreatedBy()%>">
              <input type="hidden" name="modifiedBy" value="<%=bean.getModifiedBy()%>">
              <input type="hidden" name="createdDatetime" value="<%=DataUtility.getTimestamp(bean.getCreatedDatetime())%>">
              <input type="hidden" name="modifiedDatetime" value="<%=DataUtility.getTimestamp(bean.getModifiedDatetime())%>">
                       
                       <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>First Name</label>
                              <input type="text" name="fName"  placeholder="Enter First Name" class="form-control input-md"  value="<%=DataUtility.getStringData(bean.getFirstName())%>" >
                              <div><font  color="red"><%=ServletUtility.getErrorMessage("fName", request)%></font></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Last Name</label>
                              <input type="text" name="lName"  class="form-control input-md" placeholder="Enter Last Name" value="<%=DataUtility.getStringData(bean.getLastName()) %>" >
                              <div><font
                        color="red"> <%=ServletUtility.getErrorMessage("lName", request)%></font></div>
                            </div>
                          </div>
                        </div>
                       
                        <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Login Id</label>
                              <input type="text" name="login"  placeholder="Enter Login Id" class="form-control input-md"  value="<%=DataUtility.getStringData(bean.getLogin())%>" >
                              <div><font  color="red"><%=ServletUtility.getErrorMessage("login", request)%></font></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Password</label>
                              <input type="password" name="password"  class="form-control input-md" placeholder="Enter Password" value="<%=DataUtility.getStringData(bean.getPassword()) %>" >
                              <div><font
                        color="red"> <%=ServletUtility.getErrorMessage("password", request)%></font></div>
                            </div>
                          </div>
                        </div>
                        
                        
                        <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Email Id</label>
                              <input type="text" name="emailId"  placeholder="Enter Email Id" class="form-control input-md"  value="<%=DataUtility.getStringData(bean.getEmailId())%>" >
                              <div><font  color="red"><%=ServletUtility.getErrorMessage("emailId", request)%></font></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Blood Group</label>
                              <input type="text" name="bGroup"  class="form-control input-md" placeholder="Enter Blood group" value="<%=DataUtility.getStringData(bean.getBloodGroup()) %>" >
                              <div><font
                        color="red"> <%=ServletUtility.getErrorMessage("bGroup", request)%></font></div>
                            </div>
                          </div>
                        </div>
                        
                        <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Mobile No</label>
                              <input type="text" name="mobile"  placeholder="Enter Mobile No." class="form-control input-md"  value="<%=DataUtility.getStringData(bean.getMobileNo())%>" >
                              <div><font  color="red"><%=ServletUtility.getErrorMessage("mobile", request)%></font></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Gender</label>
                              <%HashMap map = new HashMap();
  									map.put("Male", "Male");
  									map.put("Female", "Female");
 %>
                              <%=HTMLUtility.getList("gender",bean.getGender(), map) %>
                              <div><font
                        color="red"> <%=ServletUtility.getErrorMessage("gender", request)%></font></div>
                            </div>
                          </div>
                          
                        </div>
                        
                        
                        <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Date Of Birth</label>
                               <input type="text" name="dob"  placeholder="Enter (MM/dd/yyyy)" class="form-control input-md"  value="<%=DataUtility.getDateString(bean.getDob())%>" >
                              <div><font  color="red"><%=ServletUtility.getErrorMessage("dob", request)%></font></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Age</label>
                              <input type="text" name="age"  class="form-control input-md" placeholder="Enter Age" value="<%=DataUtility.getStringData(bean.getAge()) %>" >
                              <div><font
                        color="red"> <%=ServletUtility.getErrorMessage("age", request)%></font></div>
                            </div>
                          </div>
                        </div>
                        
                        <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>CNIC</label>
                               <input type="text" name="CNIC"  placeholder="Enter CNIC" class="form-control input-md"  value="<%=DataUtility.getStringData(bean.getCNIC())%>" >
                              <div><font  color="red"><%=ServletUtility.getErrorMessage("CNIC", request)%></font></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Joining Date</label>
                              <input type="text" name="jDate"  class="form-control input-md" placeholder="Enter (dd/MM/yyyy)" value="<%=DataUtility.getDateString(bean.getJoiningDate()) %>" >
                              <div><font
                        color="red"> <%=ServletUtility.getErrorMessage("jDate", request)%></font></div>
                            </div>
                          </div>
                        </div>
                        
                        <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Qualification</label>
                               <input type="text" name="qualification"  placeholder="Enter Qualification" class="form-control input-md"  value="<%=DataUtility.getStringData(bean.getQualification())%>" >
                              <div><font  color="red"><%=ServletUtility.getErrorMessage("qualification", request)%></font></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>City</label>
                              <input type="text" name="city"  class="form-control input-md" placeholder="Enter City" value="<%=DataUtility.getStringData(bean.getCity()) %>" >
                              <div><font
                        color="red"> <%=ServletUtility.getErrorMessage("city", request)%></font></div>
                            </div>
                          </div>
                        </div>
                        
                         <div class="row">
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Specialty</label>
                              <textarea rows="3" cols="5" name="spcialization" placeholder="Enter Spcialization" class="form-control input-md" ><%=DataUtility.getStringData(bean.getSpcialization()) %></textarea> 
                              <div><font  color="red"><%=ServletUtility.getErrorMessage("spcialization", request)%></font></div>
                            </div>
                          </div>
                          <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                              <label>Address</label>
                                <textarea rows="3" cols="5" name="address" placeholder="Enter Address" class="form-control input-md" ><%=DataUtility.getStringData(bean.getAddress()) %></textarea> 
                              <div><font
                        color="red"> <%=ServletUtility.getErrorMessage("address", request)%></font></div>
                            </div>
                          </div>
                        </div>
                        
                        <input type="submit" value="<%=DoctorCtl.OP_SAVE%>" name="operation" class="btn btn-skin btn-block btn-lg">

                        

                      </form>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

<%@ include file="Footer.jsp" %>
</body>
</html>
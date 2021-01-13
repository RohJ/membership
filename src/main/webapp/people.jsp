<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
      Dashborad
    </title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="${contextPath}/resources/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/animsition.min.css">
    <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/select2/select2.min.css">
    <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/daterangepicker.css">
    <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/nouislider.min.css">
    <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/bootstrap.min.css">
    <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/animate.css">
    <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/util.css">
	    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/main.css">
    <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/form/hamburgers.min.css">
    <!--===============================================================================================-->
    <c:if test="${pageContext.request.userPrincipal.name != null}">
          <form id="logoutForm" method="POST" action="${contextPath}/logout">
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          </form>
    </c:if>

  </head>

</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="danger" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo"><a href="http://localhost:8080" class="simple-text logo-normal">
          Adonai Church
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item ">
            <a class="nav-link" href="http://localhost:8080/welcome">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">
              <i class="material-icons">person</i>
              <p>New Member</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="#">
              <i class="material-icons">content_paste</i>
              <p>Membership List</p>
            </a>
          </li>  
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" style="text-transform: capitalize;" href="javascript:;">Welcome ${pageContext.request.userPrincipal.name}</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="javascript:;">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">2</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">There are 2 anniversaries this week</a>
                  <a class="dropdown-item" href="#">There are 5 birthdays this week</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Settings</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="javascript:;" onclick="document.forms['logoutForm'].submit()">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->

      <div class="content">
        <div class="container-fluid">


      <div class="container-contact100">
        <div class="wrap-contact100">
          <form:form method="POST" modelAttribute="peopleForm" class="contact100-form validate-form" name="add">
            <span class="contact100-form-title">
            <!--<img src="images/logo.png" alt="" style="width: 200px;">  -->  
              Add New Member
            </span>
    
          <!--<div class="wrap-input100 validate-input bg1" data-validate="Please Type Your Name">
              <span class="label-input100">FULL NAME *</span>
              <input class="input100" type="text" name="firstname" placeholder="Enter Your Full Name">
            </div>    -->  

            <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter The First Name">
              <span class="label-input100">First Name *</span>
              <spring:bind path="person.firstname">
                <form:input class="input100" type="text" name="firstname" placeholder="Enter The First Name" path="person.firstname" />
                <form:errors path="person.firstname"></form:errors>
              </spring:bind>
            </div>
    
            <div class="wrap-input100 bg1 validate-input rs1-wrap-input100" data-validate = "Enter the Last Name">
              <span class="label-input100">Last Name *</span>
              <spring:bind path="person.lastname">
                <form:input class="input100" type="text" name="lastname" placeholder="Enter the First Name" path="person.lastname" />
                <form:errors path="person.lastname"></form:errors>
              </spring:bind>
            </div>
    
            <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the Email (e@a.x)">
              <span class="label-input100">Email *</span>
              <spring:bind path="person.email">
                <form:input class="input100" type="email" name="email" placeholder="Enter the Email " path="person.email" />
                <form:errors path="person.email"></form:errors>
              </spring:bind>
            </div>
    
            <div class="wrap-input100 bg1 validate-input rs1-wrap-input100" data-validate = "Enter the Mobile Number">
              <span class="label-input100">Mobile Number</span>
              <spring:bind path="person.mobilenumber">
                <form:input class="input100" type="tel" name="phone" placeholder="Enter the Mobile Number" path="person.mobilenumber" />
                <form:errors path="person.mobilenumber"></form:errors>
              </spring:bind>
            </div>
    
            <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the Age">
              <span class="label-input100">Date of Birth</span>
              <spring:bind path="person.dob">
                <form:input class="input100" type="date" name="dob" placeholder="Enter The Date of Birth" path="person.dob" />
                <form:errors path="person.dob"></form:errors>
              </spring:bind>
            </div>
    
            <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the Profession">
              <span class="label-input100">Profession *</span>
              <spring:bind path="person.profession">
                <form:input class="input100" type="text" placeholder="Enter the profession" path="person.profession" />
                <form:errors path="person.profession"></form:errors>
              </spring:bind>
            </div>

            <div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
              <span class="label-input100">Gender </span>
              <div>
                <spring:bind path="person.gender">
                  <form:select class="js-select6" items ="${gender}" path="person.gender" id="gender" />
                  <form:errors path="person.gender"></form:errors>
                </spring:bind>
                <div class="dropDownSelect2"></div>
              </div>
            </div>
            
            <div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
              <span class="label-input100">Cell Group</span>
              <div>
                <spring:bind path="person.nearbycellgroup">
                    <form:select class="js-select2" items = "${cellgroups}" itemLabel = "name" itemValue="cell_id" path="person.nearbycellgroup" />
                    <form:errors path="person.nearbycellgroup"></form:errors>
                </spring:bind>
                <div class="dropDownSelect2"></div>
              </div>
            </div>
    
              <div class="wrap-input100 validate-input bg1" data-validate="Enter the Address">
                <span class="label-input100">Address *</span>
                <input class="input100" type="text" name="address" placeholder="Enter the Address">
              </div> 

              <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the Pincode">
                <span class="label-input100">Pincode *</span>
                <input class="input100" type="number" name="pincode" placeholder="Enter the Pincode">
              </div>

              <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter the Area">
                <span class="label-input100">Area *</span>
                <spring:bind path="person.area">
                  <form:input class="input100" type="text" placeholder="Enter the profession" path="person.area" />
                  <form:errors path="person.area"></form:errors>
                </spring:bind>
              </div>

              <div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
                <span class="label-input100">Ministry</span>
                <spring:bind path="person.ministries">
                  <form:select class="input100" path="person.ministries" items = "${ministries}" itemLabel = "ministryname" itemValue="ministryid" />
                  <form:errors path="person.ministries"></form:errors>
                </spring:bind>
              </div>
      
              <div class="rs1-wrap-input100">
                <span class="label-input100">Water Baptism</span>
        
                    <div class="contact100-form-radio m-t-15">
                      <spring:bind path="person.waterbaptized">
                          <form:select class="js-select6" path="person.waterbaptized"  >
                              <option value="Yes" >Yes</option>
                              <option value="No" >No</option>
                          </form:select>
                          <form:errors path="person.waterbaptized"></form:errors>
                      </spring:bind>
                      <div class="dropDownSelect2"></div>
                    </div>
                  
              <!--   <div class="contact100-form-radio">
                      <spring:bind path="person.waterbaptized">
                        <form:radiobutton class="input-radio100" path="person.waterbaptized" value="No" />
                        <label class="label-radio100">No</label>
                        <form:errors path="person.waterbaptized"></form:errors>
                      </spring:bind>
                    </div>  -->   

                </div>

                <div class="rs1-wrap-input100">
                  <span class="label-input100">Encounter Weekend</span>
          
                      <div class="contact100-form-radio m-t-15">
                        <spring:bind path="person.encountercompleted">
                          <form:select class="js-select6" path="person.encountercompleted"  >
                            <option value="Yes" >Yes</option>
                            <option value="No" >No</option>
                          </form:select>
                          <form:errors path="person.encountercompleted"></form:errors>
                  <!--        <form:radiobutton class="input-radio100" path="person.encountercompleted" value="Yes"  />
                            <label class="label-radio100">Yes</label>   -->  
                        </spring:bind>
                        <div class="dropDownSelect2"></div>
                      </div>
                    
                <!--  <div class="contact100-form-radio">
                        <spring:bind path="person.encountercompleted">
                          <form:radiobutton class="input-radio100" path="person.encountercompleted" value="No" />
                          <label class="label-radio100">No</label>
                          <form:errors path="person.encountercompleted"></form:errors>
                        </spring:bind>
                      </div>  -->    
  
                  </div>

                  <div class="rs1-wrap-input100">
                    <span class="label-input100">Healing & Deliverance</span>
            
                        <div class="contact100-form-radio m-t-15">
                          <spring:bind path="person.shdcompleted">
                            <form:select class="js-select6" path="person.shdcompleted"  >
                              <option value="Yes" >Yes</option>
                              <option value="No" >No</option>
                            </form:select>
                            <form:errors path="person.shdcompleted"></form:errors>
                        <!--  <form:radiobutton class="input-radio100" path="person.shdcompleted" value="Yes"  />
                              <label class="label-radio100">Yes</label>   -->
                          </spring:bind>
                          <div class="dropDownSelect2"></div>
                        </div>
                      
                  <!--  <div class="contact100-form-radio">
                          <spring:bind path="person.shdcompleted">
                            <form:radiobutton class="input-radio100" path="person.shdcompleted" value="No" />
                            <label class="label-radio100">No</label>
                            <form:errors path="person.shdcompleted"></form:errors>
                          </spring:bind>
                        </div>`-->    
    
                    </div>

                    <div class="rs1-wrap-input100">
                      <span class="label-input100">Prayer Ministry Seminar</span>

                          <div class="contact100-form-radio m-t-15">
                            <spring:bind path="person.pmtcompleted">
                              <form:select class="js-select6" path="person.pmtcompleted"  >
                              <option value="Yes" >Yes</option>
                              <option value="No" >No</option>
                            </form:select>
                            <form:errors path="person.pmtcompleted"></form:errors>
                            <!-- <form:radiobutton class="input-radio100" path="person.pmtcompleted" value="Yes"  />
                                `<label class="label-radio100">Yes</label>``-->   
                            </spring:bind>
                            <div class="dropDownSelect2"></div>
                          </div>
                        
                    <!--   <div class="contact100-form-radio">
                            <spring:bind path="person.pmtcompleted">
                              <form:radiobutton class="input-radio100" path="person.pmtcompleted" value="No" />
                              <label class="label-radio100">No</label>
                              <form:errors path="person.pmtcompleted"></form:errors>
                            </spring:bind>
                          </div>  -->   
      
                      </div>

                      <div class="rs1-wrap-input100">
                        <span class="label-input100">Adonai Bible School</span>
                
                            <div class="contact100-form-radio m-t-15">
                              <spring:bind path="person.abscompleted">
                                <form:select class="js-select6" path="person.abscompleted"  >
                                  <option value="Yes" >Yes</option>
                                  <option value="No" >No</option>
                                </form:select>
                                <form:errors path="person.abscompleted"></form:errors>

                              <!-- <form:radiobutton class="input-radio100" path="person.abscompleted" value="Yes"  />
                                    <label class="label-radio100">Yes</label>   -->   
                              </spring:bind>
                              <div class="dropDownSelect2"></div>
                            </div>
                          
                    <!--  <div class="contact100-form-radio">
                              <spring:bind path="person.abscompleted">
                                <form:radiobutton class="input-radio100" path="person.abscompleted" value="No" />
                                <label class="label-radio100">No</label>
                                <form:errors path="person.abscompleted"></form:errors>
                              </spring:bind>
                            </div>    -->      
        
                        </div>
        
    
              <div class="wrap-input100 input100-select bg1 ">
                <span class="label-input100">Marital Status *</span>
                      <div>
                        <spring:bind path="person.maritalstatus">
                            <form:select class="js-select3" items = "${maritalstatus}" path="person.maritalstatus" />
                            <form:errors path="person.maritalstatus"></form:errors>
                        </spring:bind>
                        <div class="dropDownSelect2"></div>
                      </div>
              </div>

              <div class="wrap-input100 dis-none input100-select bg1 js-show-spouse">
                <span class="label-input100">Spouse Membership *</span>
                      <div>
                        <select class="js-select5" name="spousemem" id = "spousemem" >
                          <option>No</option>
                          <option>Yes</option>
                        </select>
                        <div class="dropDownSelect2"></div>
                      </div>
                      <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter the Date of Anniversary"> <span class="label-input100">Date of Anniversary</span>
                        <spring:bind path="spouse.dob">
                            <form:input class="input100" type="date" name="sdoa" placeholder="Enter The Date of Anniversary" path="spouse.dob" />
                                <form:errors path="spouse.dob"></form:errors>
                        </spring:bind>
                      </div>
              </div>
    
                <div class="w-full dis-none js-show-couple" id="spouse">
                  <div class="wrap-input100">
                    <span class="label-input100">Spouse Details</span>
                    <div class="wrap-input100  bg1 rs1-wrap-input100" data-validate="Enter The First Name"> <span class="label-input100">First Name *</span>
                        <spring:bind path="spouse.firstname">
                            <form:input class="input100" type="text" name="sfirstname" placeholder="Enter The First Name" path="spouse.firstname" />
                                <form:errors path="spouse.firstname"></form:errors>
                        </spring:bind>
                    </div>
                    <div class="wrap-input100 bg1 validate-input rs1-wrap-input100" data-validate="Enter the Last Name"> <span class="label-input100">Last Name *</span>
                        <spring:bind path="spouse.lastname">
                            <form:input class="input100" type="text" name="slastname" placeholder="Enter the First Name" path="spouse.lastname" />
                                <form:errors path="spouse.lastname"></form:errors>
                        </spring:bind>
                    </div>
                    <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter the Email (e@a.x)"> <span class="label-input100">Email *</span>
                        <spring:bind path="spouse.email">
                            <form:input class="input100" type="email" name="semail" placeholder="Enter the Email " path="spouse.email" />
                                <form:errors path="spouse.email"></form:errors>
                        </spring:bind>
                    </div>
                    <div class="wrap-input100 bg1 validate-input rs1-wrap-input100" data-validate="Enter the Mobile Number"> <span class="label-input100">Mobile Number</span>
                        <spring:bind path="spouse.mobilenumber">
                            <form:input class="input100" type="tel" name="sphone" placeholder="Enter the Mobile Number" path="spouse.mobilenumber" />
                                <form:errors path="spouse.mobilenumber"></form:errors>
                        </spring:bind>
                    </div>
                    <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter the Date of Birth"> <span class="label-input100">Date of Birth</span>
                        <spring:bind path="spouse.dob">
                            <form:input class="input100" type="date" name="sdob" placeholder="Enter The Date of Birth" path="spouse.dob" />
                                <form:errors path="spouse.dob"></form:errors>
                        </spring:bind>
                    </div>

                    <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter the Profession"> <span class="label-input100">Profession *</span>
                        <spring:bind path="spouse.profession">
                            <form:input class="input100" type="text" placeholder="Enter the profession" path="spouse.profession" />
                                <form:errors path="spouse.profession"></form:errors>
                        </spring:bind>
                    </div>
                    <div class="wrap-input100 input100-select bg1 rs1-wrap-input100"> <span class="label-input100">Ministry</span>
                        <spring:bind path="spouse.ministries">
                            <form:select class="input100" path="spouse.ministries" items = "${ministries}" itemLabel = "ministryname" itemValue="ministryid"/>
                                <form:errors path="spouse.ministries"></form:errors>
                        </spring:bind>
                    </div>
                    <div class="rs1-wrap-input100"> <span class="label-input100">Water Baptism</span>
                        <div class="contact100-form-radio m-t-15">
                            <spring:bind path="spouse.waterbaptized">
                                <form:select class="js-select6" path="spouse.waterbaptized">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </form:select>
                                <form:errors path="spouse.waterbaptized"></form:errors>
                            </spring:bind>
                            <div class="dropDownSelect2"></div>
                        </div>
                    </div>
                    <div class="rs1-wrap-input100"> <span class="label-input100">Encounter Weekend</span>
                        <div class="contact100-form-radio m-t-15">
                            <spring:bind path="spouse.encountercompleted">
                                <form:select class="js-select6" path="spouse.encountercompleted">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </form:select>
                                <form:errors path="spouse.encountercompleted"></form:errors>
                            </spring:bind>
                            <div class="dropDownSelect2"></div>
                        </div>
                    </div>
                    <div class="rs1-wrap-input100"> <span class="label-input100">Healing &amp; Deliverance</span>
                        <div class="contact100-form-radio m-t-15">
                            <spring:bind path="spouse.shdcompleted">
                                <form:select class="js-select6" path="spouse.shdcompleted">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </form:select>
                                <form:errors path="spouse.shdcompleted"></form:errors>
                            </spring:bind>
                            <div class="dropDownSelect2"></div>
                        </div>
                    </div>
                    <div class="rs1-wrap-input100"> <span class="label-input100">Prayer Ministry Seminar</span>
                        <div class="contact100-form-radio m-t-15">
                            <spring:bind path="spouse.pmtcompleted">
                                <form:select class="js-select6" path="spouse.pmtcompleted">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </form:select>
                                <form:errors path="spouse.pmtcompleted"></form:errors>
                            </spring:bind>
                            <div class="dropDownSelect2"></div>
                        </div>
                    </div>
                    <div class="rs1-wrap-input100"> <span class="label-input100">Adonai Bible School</span>
                        <div class="contact100-form-radio m-t-15">
                            <spring:bind path="spouse.abscompleted">
                                <form:select class="js-select6" path="spouse.abscompleted">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </form:select>
                                <form:errors path="spouse.abscompleted"></form:errors>
                            </spring:bind>
                            <div class="dropDownSelect2"></div>
                        </div>
                    </div>
                </div>
                </div>
                  <div class="w-full dis-none js-show-num">
                    <div class="wrap-input100 input100-select bg1">
                      <span class="label-input100">Number of children: *</span>
                            <div>
                              <select class="js-select4" name="num" id = "num" onchange="delegate()">
                                <option>None</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                              </select>
                              <div class="dropDownSelect2"></div>
                            </div>
                    </div>
                  </div>
    
              <div class="w-full dis-none js-show-num2" id="del2"></div>
    
              <div class="w-full dis-none js-show-num3" id="del3"></div>
    
              <div class="w-full dis-none js-show-num4" id="del4"></div>
    
              <div class="w-full dis-none js-show-num5" id="del5"></div>
    
              <div class="w-full dis-none js-show-num6" id="del6"></div>
        
        <div class="container-contact100-form-btn">
            <input value="Register" type="submit" class="contact100-form-btn">
          </div>
      </form:form>
        </div>
      </div>
    </div>
  </div>


      <footer class="footer">
        <div class="container-fluid">
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>
            <a href="http://localhost:8080" target="#">Adonai Church</a>
          </div>
        </div>
      </footer>
    </div>
  </div>

  <!--   Core JS Files   -->
<!--  <script src="${contextPath}/resources/js/core/jquery.min.js"></script>  -->
<!-- <script src="${contextPath}/resources/js/core/popper.min.js"></script> --> 
<!-- <script src="${contextPath}/resources/js/core/bootstrap-material-design.min.js"></script>
     <script src="${contextPath}/resources/js/plugins/perfect-scrollbar.jquery.min.js"></script> --> 
  <!-- Plugin for the momentJs  -->
<!-- <script src="${contextPath}/resources/js/plugins/moment.min.js"></script>  --> 
  <!--  Plugin for Sweet Alert -->
<!--   <script src="${contextPath}/resources/js/plugins/sweetalert2.js"></script>   -->
  <!-- Forms Validations Plugin -->
<!--   <script src="${contextPath}/resources/js/plugins/jquery.validate.min.js"></script> -->
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<!--   <script src="${contextPath}/resources/js/plugins/jquery.bootstrap-wizard.js"></script>   -->
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<!--   <script src="${contextPath}/resources/js/plugins/bootstrap-selectpicker.js"></script>  -->
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<!--   <script src="${contextPath}/resources/js/plugins/bootstrap-datetimepicker.min.js"></script>  -->
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
<!--   <script src="${contextPath}/resources/js/plugins/jquery.dataTables.min.js"></script> -->
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<!--   <script src="${contextPath}/resources/js/plugins/bootstrap-tagsinput.js"></script>   -->
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<!--   <script src="${contextPath}/resources/js/plugins/jasny-bootstrap.min.js"></script>   -->
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<!--   <script src="${contextPath}/resources/js/plugins/fullcalendar.min.js"></script>    -->
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<!--   <script src="${contextPath}/resources/js/plugins/jquery-jvectormap.js"></script>   -->
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<!--   <script src="${contextPath}/resources/js/plugins/nouislider.min.js"></script>    -->
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>   -->
  <!-- Library for adding dinamically elements -->
<!--   <script src="${contextPath}/resources/js/plugins/arrive.min.js"></script>    -->
  <!-- Chartist JS -->
<!--   <script src="${contextPath}/resources/js/plugins/chartist.min.js"></script>    -->
  <!--  Notifications Plugin    -->
<!--   <script src="../assets/js/plugins/bootstrap-notify.js"></script>   -->
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<!--   <script src="${contextPath}/resources/js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>   -->

<!--  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
  </script>   -->

      <!--  JS Files  -->

      <script src="${contextPath}/resources/js/jquery-3.2.1.min.js"></script>
      <!--===============================================================================================-->
          <script src="${contextPath}/resources/js/animsition.min.js"></script>
      <!--===============================================================================================-->
          <script src="${contextPath}/resources/js/popper.js"></script>
          <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
      <!--===============================================================================================-->
          <script src="${contextPath}/resources/select2/select2.min.js"></script>
      <!--===============================================================================================-->
          <script src="${contextPath}/resources/js/moment.min.js"></script>
          <script src="${contextPath}/resources/js/daterangepicker.js"></script>
      <!--===============================================================================================-->
          <script src="${contextPath}/resources/js/countdowntime.js"></script>
      <!--===============================================================================================-->
          <script src="${contextPath}/resources/js/main.js"></script>
          <script src="${contextPath}/resources/js/ops.js"></script>

</body>


</html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



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
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/animate.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/nouislider.min.css">
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
            <a class="navbar-brand" href="javascript:;">Welcome ${pageContext.request.userPrincipal.name}</a>
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
                  <span class="notification">5</span>
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
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Membership Form</h4>
                  <p class="card-category">Add new member</p>
                </div>
                <div class="card-body">
                  <form:form method="POST" modelAttribute="peopleForm">
                    <h4 class="bmd-label">Personal Details</h4>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">First Name*</label>
                          <spring:bind path="person.firstname">
                            <form:input type="text" class="form-control" path="person.firstname"/>
                            <form:errors path="person.firstname"></form:errors>
                          </spring:bind>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Last Name*</label>
                          <spring:bind path="person.lastname">
                            <form:input type="text" class="form-control" path="person.lastname"/>
                            <form:errors path="person.lastname"></form:errors>
                          </spring:bind>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                        <label class="bmd-label-floating">Ministry *</label>
                        <spring:bind path="person.ministries">
                          <form:select path="person.ministries" items = "${ministries}" itemLabel = "ministryname" itemValue="ministryid" class="form-control"/>
					                <form:errors path="person.ministries"></form:errors>
                        </spring:bind>
                        </div>
                      </div>
					          </div>
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                        <label class="bmd-label-floating">Email Address *</label>
                        <spring:bind path="person.email">
                          <form:input type="text" class="form-control" path="person.email" />
                          <form:errors path="person.email"></form:errors>
                        </spring:bind>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                        <label class="bmd-label-floating">Mobile *</label>
                        <spring:bind path="person.mobilenumber">
                          <form:input type="tel" class="form-control" path="person.mobilenumber" />
                          <form:errors path="person.mobilenumber"></form:errors>
                        </spring:bind>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Profession *</label>
                          <spring:bind path="person.profession">
                            <form:input type="text" class="form-control" path="person.profession" />
                            <form:errors path="person.profession"></form:errors>
                          </spring:bind>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Address *</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Pin Code *</label>
                          <input type="number" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Nearby Cell Group *</label>
                          <spring:bind path="person.nearbycellgroup">
                            <form:select path="person.nearbycellgroup" items = "${cellgroups}" itemLabel = "name" itemValue="cell_id" class="form-control"/>
                          <form:errors path="person.nearbycellgroup"></form:errors>
                          </spring:bind>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <p class="bmd-label" style="font-weight: 500;">Date of Birth *</p>
                          <spring:bind path="person.dob">
                            <form:input type="date" path="person.dob" class="form-control" style="padding-top: 2.2rem;"/>
                            <form:errors path="person.dob"></form:errors>
                          </spring:bind>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="row form-group">
                          <div class="col-12">
                            <p class="bmd-label" style="font-weight: 500;">Gender *</p>
                          </div>
                          <div class="w-100"></div>
                          <div class="col-12">
                            <spring:bind path="person.gender">
                            <form:select items ="${gender}" path="person.gender" class="form-control" />
                            <form:errors path="person.gender"></form:errors>
                            </spring:bind>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="row form-group" >
                          <div class="col-12">
                            <p class="bmd-label" style="font-weight: 500;">Marital Status *</p>
                          </div>
                          <div class="w-100"></div>
                          <div class="col-12" >
                          <spring:bind path="person.maritalstatus">
                            <form:select items = "${maritalstatus}" path="person.maritalstatus" class="form-control" />
                            <form:errors path="person.maritalstatus"></form:errors>
                          </spring:bind>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4" >
                        <div class="row form-group" >
                          <div class="col-12">
                            <p class="bmd-label" style="font-weight: 500;">Water Baptized</p>
                          </div>
                          <div class="w-100"></div>
                            <div class="col-12" style="display: flex; justify-content: space-evenly;">
                              <spring:bind path="person.waterbaptized">
                                <form:radiobutton path="person.waterbaptized" value="Yes" class="form-control" style="height: 16px;"/>
                                <label class="bmd-label">Yes</label>
                                <form:radiobutton path="person.waterbaptized" value="No" class="form-control" style="height: 16px;"/>
                                <label class="bmd-label">No</label>
                                <form:errors path="person.waterbaptized"></form:errors>
                              </spring:bind>
                            </div>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="row form-group">
                          <div class="col-12">
                            <p class="bmd-label" style="font-weight: 500;">Encounter Weekend</p>
                          </div>
                          <div class="w-100"></div>
                            <div class="col-12" style="display: flex; justify-content: space-evenly;">
                              <spring:bind path="person.encountercompleted">
                              <form:radiobutton path="person.encountercompleted" value="Yes" class="form-control" style="height: 16px;"/>
                              <label class="bmd-label">Yes</label>
                              <form:radiobutton path="person.encountercompleted" value="No" class="form-control" style="height: 16px;"/>
                              <label class="bmd-label">No</label>
                              <form:errors path="person.encountercompleted"></form:errors>
                              </spring:bind>
                            </div>
                        </div>
                        </div>
                      <div class="col-md-4">
                        <div class="row form-group">
                          <div class="col-12">
                            <p class="bmd-label" style="font-weight: 500;">Healing & Deliverance</p>
                          </div>
                          <div class="w-100"></div>
                            <div class="col-12" style="display: flex; justify-content: space-evenly;">
                              <spring:bind path="person.shdcompleted">
                                <form:radiobutton path="person.shdcompleted" value="Yes" class="form-control" style="height: 16px;"/>
                                  <label class="bmd-label">Yes</label>
                                  <form:radiobutton path="person.shdcompleted" value="No" class="form-control" style="height: 16px;"/>
                                  <label class="bmd-label">No</label>
                                <form:errors path="person.shdcompleted"></form:errors>
                              </spring:bind>
                            </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4" >
                        <div class="row form-group" >
                          <div class="col-12">
                            <p class="bmd-label" style="font-weight: 500;">Prayer Ministry Seminar</p>
                          </div>
                          <div class="w-100"></div>
                            <div class="col-12" style="display: flex; justify-content: space-evenly;">
                              <spring:bind path="person.pmtcompleted">
                                <form:radiobutton path="person.pmtcompleted" value="Yes" class="form-control" style="height: 16px;"/>
                                <label class="bmd-label">Yes</label>
                                <form:radiobutton path="person.pmtcompleted" value="No" class="form-control" style="height: 16px;"/>
                                <label class="bmd-label">No</label>
                                <form:errors path="person.pmtcompleted"></form:errors>
                              </spring:bind>
                            </div>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="row form-group">
                          <div class="col-12">
                            <p class="bmd-label" style="font-weight: 500;">Adonai Bible School</p>
                          </div>
                          <div class="w-100"></div>
                            <div class="col-12" style="display: flex; justify-content: space-evenly;">
                              <spring:bind path="person.abscompleted">
                              <form:radiobutton path="person.abscompleted" value="Yes" class="form-control" style="height: 16px;"/>
                              <label class="bmd-label">No</label>
                              <form:radiobutton path="person.abscompleted" value="No" class="form-control" style="height: 16px;"/>
                              <label class="bmd-label">Yes</label>
                              <form:errors path="person.abscompleted"></form:errors>
                              </spring:bind>
                            </div>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="row form-group" id="spouseDiv" style="display: none;">
                          <div class="col-12" >
                            <p class="bmd-label" style="font-weight: 500;">Is the Spouse a member?</p>
                          </div>
                          <div class="w-100"></div>
                            <div class="col-12" style="display: flex; justify-content: space-evenly;">
                              <spring:bind path="spousedetailspresent">
                              <form:radiobutton id="spouseCheck" path="spousedetailspresent" value="true" class="form-control" style="height: 16px;" onclick="spouse()"/>
                              <label class="bmd-label">Yes</label>
                              <form:radiobutton id="spouseCheck" path="spousedetailspresent" value="false" class="form-control" style="height: 16px;" onclick="noSpouse()"/>
                              <label class="bmd-label">No</label>
                              <form:errors path="spousedetailspresent"></form:errors>
                              </spring:bind>
                            </div>
                        </div>
                      </div>
                    </div>

                  <div id="spouseDetails" style="display: none;">
                    <h4 class="bmd-label">Spouse Details</h4> 
                    <div class="row"> 
                        <div class="col-md-4"> 
                            <div class="form-group"> 
                                <label class="bmd-label-floating">First Name</label> 
                                <spring:bind path="spouse.firstname">
                                    <form:input type="text" class="form-control" path="spouse.firstname"/> 
                                    <form:errors path="spouse.firstname"></form:errors> 
                                </spring:bind>
                            </div>
                        </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Last Name</label>
                          <spring:bind path="spouse.lastname">
                            <form:input type="text" class="form-control" path="spouse.lastname"/>
                            <form:errors path="spouse.lastname"></form:errors>
                          </spring:bind>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                        <label class="bmd-label-floating">Ministry</label>
                        <spring:bind path="spouse.ministries">
                          <form:select path="spouse.ministries" items = "${ministries}" itemLabel = "ministryname" itemValue="ministryid" class="form-control"/>
					                <form:errors path="spouse.ministries"></form:errors>
                        </spring:bind>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                        <label class="bmd-label-floating">Email Address</label>
                        <spring:bind path="spouse.mobilenumber">
                          <form:input type="text" class="form-control" path="spouse.mobilenumber" />
                          <form:errors path="spouse.mobilenumber"></form:errors>
                        </spring:bind>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                        <label class="bmd-label-floating">Mobile</label>
                        <spring:bind path="spouse.mobilenumber">
                          <form:input type="tel" class="form-control" path="spouse.mobilenumber" />
                          <form:errors path="spouse.mobilenumber"></form:errors>
                        </spring:bind>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Profession</label>
                          <spring:bind path="spouse.profession">
                            <form:input type="text" class="form-control" path="spouse.profession" />
                            <form:errors path="spouse.profession"></form:errors>
                          </spring:bind>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                    <div class="col-md-4" >
                      <div class="row form-group" >
                      <p class="bmd-label" style="font-weight: 500;">Date of Birth</p>
                          <spring:bind path="spouse.dob">
                            <form:input type="date" path="spouse.dob" class="form-control" style="padding-top: 2.2rem;"/>
                            <form:errors path="spouse.dob"></form:errors>
                          </spring:bind>
                        </div>
                      </div>
                    <div class="col-md-4">
                      <div class="row form-group">
                        <div class="col-12">
                          <p class="bmd-label" style="font-weight: 500;">Encounter Weekend</p>
                        </div>
                        <div class="w-100"></div>
                          <div class="col-12" style="display: flex; justify-content: space-evenly;">
                            <spring:bind path="spouse.encountercompleted">
                            <form:radiobutton path="spouse.encountercompleted" value="Yes" class="form-control" style="height: 16px;"/>
                            <label class="bmd-label">Yes</label>
                            <form:radiobutton path="spouse.encountercompleted" value="No" class="form-control" style="height: 16px;"/>
                            <label class="bmd-label">No</label>
                            <form:errors path="spouse.encountercompleted"></form:errors>
                            </spring:bind>
                          </div>
                      </div>
                      </div>
                    <div class="col-md-4">
                      <div class="row form-group">
                        <div class="col-12">
                          <p class="bmd-label" style="font-weight: 500;">Healing & Deliverance</p>
                        </div>
                        <div class="w-100"></div>
                          <div class="col-12" style="display: flex; justify-content: space-evenly;">
                            <spring:bind path="spouse.shdcompleted">
                              <form:radiobutton path="spouse.shdcompleted" value="Yes" class="form-control" style="height: 16px;"/>
                                <label class="bmd-label">Yes</label>
                                <form:radiobutton path="spouse.shdcompleted" value="No" class="form-control" style="height: 16px;"/>
                                <label class="bmd-label">No</label>
                              <form:errors path="spouse.shdcompleted"></form:errors>
                            </spring:bind>
                          </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4" >
                      <div class="row form-group" >
                        <div class="col-12">
                          <p class="bmd-label" style="font-weight: 500;">Prayer Ministry Seminar</p>
                        </div>
                        <div class="w-100"></div>
                          <div class="col-12" style="display: flex; justify-content: space-evenly;">
                            <spring:bind path="spouse.pmtcompleted">
                              <form:radiobutton path="spouse.pmtcompleted" value="Yes" class="form-control" style="height: 16px;"/>
                              <label class="bmd-label">Yes</label>
                              <form:radiobutton path="spouse.pmtcompleted" value="No" class="form-control" style="height: 16px;"/>
                              <label class="bmd-label">No</label>
                              <form:errors path="spouse.pmtcompleted"></form:errors>
                            </spring:bind>
                          </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="row form-group">
                        <div class="col-12">
                          <p class="bmd-label" style="font-weight: 500;">Adonai Bible School</p>
                        </div>
                        <div class="w-100"></div>
                          <div class="col-12" style="display: flex; justify-content: space-evenly;">
                            <spring:bind path="spouse.abscompleted">
                            <form:radiobutton path="spouse.abscompleted" value="Yes" class="form-control" style="height: 16px;"/>
                            <label class="bmd-label">Yes</label>
                            <form:radiobutton path="spouse.abscompleted" value="No" class="form-control" style="height: 16px;"/>
                            <label class="bmd-label">No</label>
                            <form:errors path="spouse.abscompleted"></form:errors>
                            </spring:bind>
                          </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="row form-group">
                        <div class="col-12">
                        <p class="bmd-label" style="font-weight: 500;">Water Baptized</p>
                        </div>
                        <div class="w-100"></div>
                          <div class="col-12" style="display: flex; justify-content: space-evenly;">
                            <spring:bind path="spouse.waterbaptized">
                              <form:radiobutton path="spouse.waterbaptized" value="Yes" class="form-control" style="height: 16px;"/>
                              <label class="bmd-label">Yes</label>
                              <form:radiobutton path="spouse.waterbaptized" value="No" class="form-control" style="height: 16px;"/>
                              <label class="bmd-label">No</label>
                              <form:errors path="spouse.waterbaptized"></form:errors>
                            </spring:bind>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div id="childrenDetails" style="display: none;">
                  <h4 class="bmd-label">Children Details</h4>
                  <div class="row">
                  <div class="col-md-6"> 
                    <div class="row form-group">
                      <div class="col-12">
                        <p class="bmd-label" style="font-weight: 500;">Are there children?</p>
                      </div>
                      <div class="w-100"></div>
                        <div class="col-12" style="display: flex; justify-content: space-evenly;">
                          <spring:bind path="kidspresent">
                            <form:radiobutton path="kidspresent" id="child" value="true" class="form-control" style="height: 16px;" onclick="showCh()"/>
                            <label class="bmd-label">Yes</label>
                            <form:radiobutton path="kidspresent" id="child" value="false" class="form-control" style="height: 16px;" onclick="showCh()"/>
                            <label class="bmd-label">No</label>
                            <form:errors path="kidspresent"></form:errors>
                          </spring:bind>
                        </div>
                    </div>
                  </div>
                  <div class="col-md-6" style="display: none;" id="childnumbers"> 
                    <div class="row form-group">
                      <div class="col-12">
                        <p class="bmd-label" style="font-weight: 500;">Number of children</p>
                      </div>
                      <div class="w-100"></div>
                        <div class="col-12" style="display: flex; justify-content: space-evenly;">
                          <spring:bind path="childnum">
                            <form:select path="childnum" class="form-control" id="cnum" onchange="children()">
                              <option>1</option>
												      <option>2</option>
												      <option>3</option>
												      <option>4</option>
												      <option>5</option>
                            </form:select>
                            <form:errors path="childnum"></form:errors>
                          </spring:bind>
                        </div>
                    </div>
                  </div>
                </div>
              </div>

                      
                <!--<div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label>About Me</label>
                          <div class="form-group">
                            <label class="bmd-label-floating"> Lamborghini Mercy, Your chick she so thirsty, I'm in that two seat Lambo.</label>
                            <textarea class="form-control" rows="5"></textarea>
                          </div>
                        </div>
                      </div>
                    </div>		-->    
                    <button type="submit" class="btn btn-primary pull-right">Submit</button>
                    <div class="clearfix"></div>
                  </form:form>
                </div>
              </div>
            </div>
        <!--    <div class="col-md-4">
              <div class="card card-profile">
                <div class="card-avatar">
                  <a href="javascript:;">
                    <img class="img" src="../assets/img/faces/marc.jpg" />
                  </a>
                </div>
              <div class="card-body">
                  <h6 class="card-category text-gray">CEO / Co-Founder</h6>
                  <h4 class="card-title">Alec Thompson</h4>
                  <p class="card-description">
                    Don't be scared of the truth because we need to restart the human foundation in truth And I love you like Kanye loves Kanye I love Rick Owens’ bed design but the back is...
                  </p>
                  <a href="javascript:;" class="btn btn-primary btn-round">Follow</a>
                </div>   
              </div>
            </div>  --> 


            

                <!--===============================================================================================-->

                <!--===============================================================================================-->
                <script src="${contextPath}/resources/js/animsition.min.js"></script>
                <!--===============================================================================================-->


                <!--===============================================================================================-->
                <script src="${contextPath}/resources/js/select2.min.js"></script>
                <!--===============================================================================================-->
                <script src="${contextPath}/resources/js/moment.min.js"></script>
                <script src="${contextPath}/resources/js/daterangepicker.js"></script>
                <!--===============================================================================================-->
                <script src="${contextPath}/resources/js/countdowntime.js"></script>
                <!--===============================================================================================-->

                <!--===============================================================================================-->
                <script src="${contextPath}/resources/js/main.js"></script>
                <script src="${contextPath}/resources/js/ops.js"></script>



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
  <script src="${contextPath}/resources/js/core/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/core/popper.min.js"></script>
  <script src="${contextPath}/resources/js/core/bootstrap-material-design.min.js"></script>
  <script src="${contextPath}/resources/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="${contextPath}/resources/js/main.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="${contextPath}/resources/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="${contextPath}/resources/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="${contextPath}/resources/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="${contextPath}/resources/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="${contextPath}/resources/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="${contextPath}/resources/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="${contextPath}/resources/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="${contextPath}/resources/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="${contextPath}/resources/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="${contextPath}/resources/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="${contextPath}/resources/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="${contextPath}/resources/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="${contextPath}/resources/js/plugins/arrive.min.js"></script>
  <!-- Chartist JS -->
  <script src="${contextPath}/resources/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${contextPath}/resources/js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>

  <script>
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
  </script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();

    });
  </script>







</body>
</html>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Doctor Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style20 {
	color: #FF0000;
	font-size: 16;
}
.style21 {font-size: 24px}
.style40 {	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div >
         <h1><a href="index.html" class="style2 style21">Fortified Chain A Blockchain Based Framework for Security and Privacy Assured Internet of Medical Thingsl With Effective Access Control</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="D_Main.jsp"><span>Home</span></a></li>
          <li><a href="D_Login.jsp"><span>Logout</span></a></li>		 
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome <%=application.getAttribute("docname")%> </span><span class="style38 style20">(Role : <%=application.getAttribute("role")%>) </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="clr"></div>
          <div class="img"><img src="images/img1.jpg" width="179" height="451" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify"><span class="style40">The rapid developments in the Internet of medical things (IoMT) help the smart healthcare systems to deliver more sophisticated real-time services. At the same time, IoMT also raises many privacy and security issues. Also, the heterogeneous nature of these devices makes it challenging to develop a common security standard solution. Furthermore, existing cloudcentric IoMT healthcare systems depend on cloud computing for electrical health records (EHR) and medical services, which is not suggestible for a decentralized IoMT healthcare systems. In this paper, we have proposed a Blockchain-based novel architecture that provides a decentralized EHR and smart-contract based service automation without compromising with the system security and privacy. In this architecture, we have introduced the hybrid computing paradigm with blockchain-based Distributed Data Storage System (DDSS) to overcome blockchain-based cloudcentric IoMT healthcare system drawbacks like high latency, high storage cost and single point of failure. A decentralized Selective Ring based Access Control (SRAC) mechanism is introduced along with device authentication and patient records anonymity algorithms to improve the proposed systems security capabilities. We have evaluated the latency and cost effectiveness of data sharing on proposed system using Blockchain. Also, we conducted a logical system analysis, which reveals that our architecture based security and privacy mechanisms are capable of fulfilling the requirements of decentralized IoMT smart healthcare systems. Experimental analysis proves that our Fortified-Chain based H-CPS needs insignificant storage and has a response time in the order of milliseconds as compared to traditional centralized H-CPS while providing decentralized automated access control, security, and privacy..</span></p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="D_Main.jsp">&raquo; Home </a></li>
            <li><a href="D_ViewProfile.jsp">&raquo; View Profile </a></li>
            <li><a href="D_Request_key.jsp">&raquo; Request Key  </a></li>
            <li><a href="D_AccessControl.jsp">&raquo; View Access Control </a></li>
            <li><a href="D_ClinicalReport.jsp">&raquo; View Clinical Reports </a></li>
            <li><a href="D_ViewDetails.jsp">&raquo; View Patient Details</a></li>
            <li><a href="D_Login.jsp">&raquo; Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>

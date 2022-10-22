<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>key Req</title>
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
.style9 {font-size: 14px}
.style24 {color: #FFFF00}
.style25 {
	font-size: 14px;
	color: #FFFF00;
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
       <h2> Fortified Chain A Blockchain Based Framework for Security and Privacy Assured Internet of Medical Things With Effective Access Control</h2>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="HK_Main.jsp"><span>Home</span></a></li>
          <li><a href="HK_Login.jsp"><span>Logout</span></a></li>		 
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
        <div class="mainbar">
          <div class="article">
            <h2> Re Encryption Key Requests</h2>
            <p class="infopost">&nbsp;</p>
            <div class="clr"></div>
            <div >
              <p align="justify"><strong>View  Key Requests From Doctors/Nurse And Generate Key </strong>.</p>
              <p>&nbsp;</p>
              <table width="584" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
                <tr>
                  <td width="39" height="30" bgcolor="#FF0000"><div align="center" class="style9 style24"><strong> ID </strong></div></td>
                  <td width="121" bgcolor="#FF0000"><div align="center" class="style25"> Doctor  Name </div></td>
                  <td width="115" bgcolor="#FF0000"><div align="center" class="style25"> Patient Name </div></td>
                  <td width="158" bgcolor="#FF0000"><div align="center" class="style25">Provider Name </div></td>
                  <td width="120" bgcolor="#FF0000"><div align="center" class="style25"> Generate Key  </div></td>
<%	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
	try 
	{
	
	String pname=(String)application.getAttribute("pname");
	
		String query="select *from key_request where provider='"+pname+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		while( rs.next() )
		{
			i=rs.getInt(1);
			s2=rs.getString(2);
			s4=rs.getString(3);
			s3=rs.getString(4);
			s5=rs.getString(5);
			%>
			</tr>
			<tr>
			<td height="28"><div align="center"><%=i%></div></td>
			<td><div align="center"><a href="HK_docterDetails.jsp?name=<%=s2%>"><%=s2%></a></div></td>
			<td><div align="center"><%=s4%></div></td>
			<td><div align="center"><%=s3%></div></td>
			<%
			if(s5.equalsIgnoreCase("Requested"))
			{
				%><td><div align="center">
			  <form id="form1" name="form1" method="post" action="HK_Provide_key.jsp">
			    <label>
				<input type="hidden" name="id" value="<%=i%>" />
				<input type="hidden" name="doctor" value="<%=s2%>" />
				<input type="hidden" name="patient" value="<%=s4%>" />
				<input type="hidden" name="provider" value="<%=s3%>" />
			      <input type="submit" name="Submit" value="Generate Key" />
			      </label>
			    </form>
			</div></td><%
			}
			else
			{
				%><td width="17" height="28"><div align="center"><%=s5%></div></td><%
			}
		}	
		connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>      </table>
       <p>&nbsp;</p>
      <div align="right"><a href="PS_Main.jsp">Back</a></div>
            </div>
            <div class="clr"></div>
          </div>
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
            <li><a href="HK_Main.jsp">&raquo; Home </a></li>
            <li><a href="HK_Login.jsp">&raquo; Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>

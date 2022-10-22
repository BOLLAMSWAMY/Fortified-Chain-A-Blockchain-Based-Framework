<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Patients_By_Blockchain</title>
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
.style24 {font-size: 14px}
.style25 {color: #FFFF00}
.style26 {
	font-size: 14px;
	color: #FFFF00;
	font-weight: bold;
}
.style27 {
	color: #FF0000;
	font-weight: bold;
}
.style28 {color: #FF0000}
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
          <li class="active"><a href="CS_Main.jsp"><span>Home</span></a></li>
          <li><a href="CS_Login.jsp"><span>Logout</span></a></li>		 
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
            <h2 class="style27">Traced Patients Details By Blockchain</h2>
            <p class="infopost">&nbsp;</p>
            <div class="clr"></div>
            <div>
              <p align="justify">&nbsp;</p>
              
			  <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>                         

		  
		  
         <%
					  
						// Creation Of Blockchain 
						
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,hsign="",dname="";
						int i=0,j=0,k=0;
												
						int count1=0;
						
						try 
						{
						String str1 = " select distinct(desc_trap) from patient_details ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						hsign = rs1.getString(1);
						count1=count1+1;
						   	String query="select * from patient_details where desc_trap = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s1=rs.getString(4);
							
							String keys1 = "ef50a0ef2c3e3a5f";
							byte[] keyValue1 = keys1.getBytes();
							Key key1 = new SecretKeySpec(keyValue1, "AES");
							Cipher c1 = Cipher.getInstance("AES");
							c1.init(Cipher.DECRYPT_MODE, key1);
							 dname = new String(Base64.decode(s1.getBytes()));
											
						%>

	    <table width="612" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
                <tr>
                  <td width="36" height="30" bgcolor="#FF0000"><div align="center" class="style24 style25"><strong> ID </strong></div></td>
                  <td width="120" bgcolor="#FF0000"><div align="center" class="style26">Patient Name </div></td>
                  <td width="122" bgcolor="#FF0000"><div align="center" class="style26">Provider Name </div></td>
				   <td width="122" bgcolor="#FF0000"><div align="center" class="style26">Disease Name </div></td>
                  <td width="134" bgcolor="#FF0000"><div align="center" class="style26">Hospital</div></td>
                  <td width="95" bgcolor="#FF0000"><div align="center" class="style26">Doctor</div></td>
                  <td width="91" bgcolor="#FF0000"><div align="center" class="style26">View </div></td>
                </tr>
			**********************************************************************************************************************************
			<h3><div align="center" class="style28"><b>Block--><%out.print(count1);%>-->Disease Block Chain ::<span class="style2"> <%=dname%></span><br>Under Hash Code    ::<%=hsign%></b></div></h3>
			**********************************************************************************************************************************
			<%
							
							}
			  
								i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(17);
					s4=rs.getString(18);
					s5=rs.getString(11);
					s6=rs.getString(15);
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					String dt1 = new String(Base64.decode(s3.getBytes()));
			   
			    
					%>
           <tr>
                  <td height="28"><div align="center" class="style28"><%=i%></div></td>
                  <td><div align="center" class="style28"><%=s2%></div></td>
                  <td><div align="center" class="style28"><%=s6%></div></td>
				   <td><div align="center" class="style28"><%=dname%></div></td>
                  <td><div align="center" class="style28"><%=s3%></div></td>
                  <td><div align="center" class="style28"><%=s4%></div></td>
                  <td><div align="center" class="style28"><a href="CS_Patients_By_Blockchain1.jsp?fname=<%=s2%>">View More..</a></div></td>
                </tr>
				
            <%
								j=j+1; }
			   }			 
%>
</table>

<%
			 		j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

			  
			  
              <p align="justify">&nbsp;</p>
              <p align="right"><a href="CS_Main.jsp">Back</a></p>
            </div>
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
            <li><a href="CS_Main.jsp">&raquo; Home </a></li>
            <li><a href="CS_Login.jsp">&raquo; Logout </a></li>
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

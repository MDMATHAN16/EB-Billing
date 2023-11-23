<%-- 
    Document   : contact
    Created on : Aug 30, 2023, 10:10:44 PM
    Author     : MADHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact</title>
        <style type="text/css">
            body{
                background:linear-gradient(to right,#3f5efb,#fc466b);
            }
            .tab{
                padding-left: 5%;
            }
            .crd-in{
                z-index:-2;
                 margin-top: 50px;
                margin-bottom: 400px;
                height: 200px;
                margin-left: 100px;
                margin-right: 300px;

            }
            </style>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    </head>
    <header><jsp:include page="head.jsp"/></header>
    <body>
        <hr color="white"/>   
        <div class="card crd-in">
  <div class="card-header">
        <h2>Contact Details</h2>

  </div>
  <div class="card-body">
        <table class="tab">
            <th>S.no</th> &nbsp;
            <th> &nbsp;&nbsp;Name / Designation / Address</th>
            <th>&nbsp;Landline / Mobile</th>
            <tr><td>1&nbsp;</td><td>&nbsp;&nbsp;Salem, Erode, Namakkal</td><td>&nbsp;9445851912</td></tr>
            <tr><td>2&nbsp;</td><td>&nbsp;&nbsp;Trichy, Tanjore, Perambalur, Ariyalur, Pudukottai, Tiruvarur, Nagapattinam, Karur  </td><td> &nbsp;9486111912</td></tr>
            <tr><td>3&nbsp;</td><td>&nbsp;&nbsp;Madurai, Dindugal, Theni, Ramnad, Sivagangai</td><td>&nbsp;9443111912</td></tr>
            <tr><td>4&nbsp;</td><td>&nbsp;&nbsp;Kancheepuram, Chengalpet,Tiruvallur</td><td>&nbsp;9444371912</td></tr>
            <tr><td>5&nbsp;</td><td>&nbsp;&nbsp;Viluppuram, Thiruvannamalai, Cuddalore</td><td>&nbsp;9445855768</td></tr>
            <tr><td>6&nbsp;</td><td>&nbsp;&nbsp;Coimbatore, Tirupur, Nilgiris</td><td>&nbsp;9442111912</td></tr>
            <tr><td>7&nbsp;</td><td>&nbsp;&nbsp;Chennai</td><td>&nbsp;9445850829</td></tr>
            <tr><td>8&nbsp;</td><td>&nbsp;&nbsp;Tirunelveli, Tuticorin, Kanyakumari, Virudhunagar</td><td>&nbsp;8903331912</td></tr>
            <tr><td>9&nbsp;</td><td>&nbsp;&nbsp;Vellore, Dharmapuri, Krishnagiri</td><td>&nbsp;6380281341</td></tr>

        </table>
      </div>
</div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    </body>
</html>

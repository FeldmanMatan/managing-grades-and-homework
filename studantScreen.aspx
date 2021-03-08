<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studantScreen.aspx.cs" Inherits="AssignmentManager.studantScreen" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Wellcome back student</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <style type="text/css">
        
    </style>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>    
    
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script>

    </script>

</head>
<body>
    <form runat="server">
        <asp:Label runat="server" ID="LabelGreeting" Font-Size="Medium"></asp:Label>
<div class="btn-toolbar">
    <button class="btn">Logout</button>   
</div>
        <asp:GridView runat="server" ID="Assignmants"></asp:GridView>
<!--<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Course Name</th>
          <th>Course ID</th>
          <th>Date registered</th>
          <th>Status</th>
          <th>Grade</th>
          <th style="width: 36px;"></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Alagebra</td>
          <td>23</td>
          <td>2012/05/06</td>
          <td><span class="label label-success">Active</span></td>
          <td>55</td>
          <td>
              <a href="user.html"><i class="icon-pencil"></i></a>
              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
        <tr>
            <td>2</td>
            <td>Alagebra3</td>
            <td>219</td>
            <td>2012/05/21</td>
            <td><span class="label label-important">Banned</span></td> 
            <td>55</td>
            <td>
                <a href="user.html"><i class="icon-pencil"></i></a>
                <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>WEB</td>
            <td>190</td>
            <td>2012/010/21</td>
            <td><span class="label">Inactive</span></td>   
            <td>100</td>
            <td>
                <a href="user.html"><i class="icon-pencil"></i></a>
                <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td>WEB</td>
            <td>190</td>
            <td>2012/010/21</td>
            <td><span class="label">Inactive</span></td>   
            <td>100</td>
            <td>
                <a href="user.html"><i class="icon-pencil"></i></a>
                <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td>WEB</td>
            <td>190</td>
            <td>2012/010/21</td>
            <td><span class="label">Inactive</span></td>   
            <td>100</td>
            <td>
                <a href="user.html"><i class="icon-pencil"></i></a>
                <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
            </td>
        </tr>
        <tr>
          <td>6</td>
          <td>WEB</td>
          <td>190</td>
          <td>2012/010/21</td>
          <td><span class="label">Inactive</span></td>   
          <td>100</td>
          <td>
              <a href="user.html"><i class="icon-pencil"></i></a>
              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
      </tbody>
    </table>
</div>-->
<div class="pagination">
    <ul>
        <li><a href="#">Prev</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">Next</a></li>
    </ul>
</div>
<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Delete Confirmation</h3>
    </div>
    <div class="modal-body">
        <p class="error-text">Are you sure you want to delete the user?</p>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
    </div>
</div>
<script type="text/javascript">
</script>

<script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

</form>
</body>
</html>


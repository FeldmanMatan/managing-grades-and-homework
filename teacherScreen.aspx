<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherScreen.aspx.cs" Inherits="AssignmentManager.teacherScreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Wellcome back Teacher</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <style type="text/css"></style>

    <link href="./teacherStyle.css" rel="stylesheet">

    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>



  </head>
<body>
    <h1>work Grade for all students</h1>
    <div class="btn-toolbar">
   <!--- <button class="btn btn-primary">New User</button>-->
    <button id="myBtn" class="btn" >Import</button>
    <button class="btn">Export</button>

    <!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Upload new file</h2>
    </div>
    <div class="modal-body">
      <form action="/action_page.php">
        <input type="file" id="myFile" name="filename">
        <input type="submit">
      </form>
    </div>
    <div class="modal-footer">
      <h3>Successfully</h3>
    </div>
  </div>

</div>

</div>
<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>Student Name</th>
          <th>Student ID</th>
          <th>Date registered</th>
          <th>Status</th>
          <th>Grade</th>
          <th style="width: 36px;"></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Shalom</td>
          <td>201252525</td>
          <td>2012/05/06</td>
          <td><span class="label label-success">Active</span></td>
          <td>55</td>
          <td>
              <a href="user.html"><i class="icon-pencil"></i></a>
              <a href="#myModal2" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
          </td>
        </tr>
        <tr>
            <td>2</td>
            <td>Eilat</td>
            <td>1212121</td>
            <td>2012/05/21</td>
            <td><span class="label label-important">Banned</span></td> 
            <td>55</td>
            <td>
                <a href="user.html"><i class="icon-pencil"></i></a>
                <a href="#myModal2" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>Aviran</td>
            <td>232323232</td>
            <td>2012/10/21</td>
            <td><span class="label">Inactive</span></td>   
            <td>100</td>
            <td>
                <a href="user.html"><i class="icon-pencil"></i></a>
                <a href="#myModal2" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
            </td>
        </tr>
        <tr>
            <td>4</td>
            <td>Avi</td>
            <td>19012121</td>
            <td>2012/010/21</td>
            <td><span class="label">Inactive</span></td>   
            <td>100</td>
            <td>
                <a href="user.html"><i class="icon-pencil"></i></a>
                <a href="#myModal2" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
            </td>
        </tr>
        <tr>
            <td>5</td>
            <td>Lavi</td>
            <td>190121212</td>
            <td>2012/010/21</td>
            <td><span class="label">Inactive</span></td>   
            <td>100</td>
            <td>
                <a href="user.html"><i class="icon-pencil"></i></a>
                <a href="#myModal2" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
            </td>
        </tr>
        <tr>
          <td>6</td>
          <td>Or</td>
          <td>1901212</td>
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
</div>
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
  btn.onclick = function() {
    modal.style.display = "block";
  }
  
  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
    modal.style.display = "none";
  }
  
  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
</script>

</body>
</html>

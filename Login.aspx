<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AssignmentManager.Login" %>

<!DOCTYPE html>
<html lang="en">
<head >
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="./loginStyle.css" rel="stylesheet" id="login-Style">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script>

        function LoginStudent()
        {
           // var email = $("#sEmail").val();
          //  var password = $("#sPassward").val();
          //  Login_click_student()
        }
    </script>

    <title>login form</title>
</head>
<body>

    <div class="container login-container">
        <div class="row">
            <div class="col-md-6 login-form-1">
                <h3>Login for Student</h3>
                <form onsubmit="Loginstudent" runat="server">
                    <div class="form-group">
                        <asp:TextBox runat="server" TextMode="SingleLine"  pattern="[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*" title="format: xxx@xxx.xxx" cssClass="form-control" ID="sEmail" placeholder="Your Email *" />
                    </div>
                    <div class="form-group">                      
                        <asp:TextBox  runat="server" TextMode="Password" pattern="^(?=.*\d)(?=.*[a-zA-Z]).{6,10}$" cssClass="form-control" ID="sPassward" placeholder="Your Password *" />
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" cssClass="btnSubmit" Text="Login" onClick="Login_click_student" />
                    </div>
                    <div class="form-group">
                        <a href="#" class="ForgetPwd">Forget Password?</a>
                    </div>
                </form>
            </div>
            <div class="col-md-6 login-form-2">
                <h3>Login for Teacher</h3>
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Your Email *" value="" />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Your Password *" value="" />
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btnSubmit" value="Login" />
                    </div>
                    <div class="form-group">

                        <a href="#" class="ForgetPwd">Forget Password?</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
</body>
</html>


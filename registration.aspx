<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="AssignmentManager.registration" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="./registratioStyle.css" rel="stylesheet" id="registration-Style">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>

    <title>register-form</title>
    <script>
        
    </script>

</head>
<body>
    
    <div class="container register">
        <form runat="server">
        <div class="row">
            <div class="col-md-3 register-left">
                
                    <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                    <h3>Welcome</h3>
                    <p>Welcome to Grading system</p>
                   <asp:Button runat="server" OnClick="Go_To_Login" Text="Login"/>
                   
               
            </div>
            <div class="col-md-9 register-right">
                
                 <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a href="#home"  class="nav-link active" id="home-tab" data-toggle="tab"  role="tab" aria-controls="home" aria-selected="true">As student</a>
                    </li>
                    <li class="nav-item">
                        <a  class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">As teacher</a>
                    </li>
                </ul>
              
               
                <div class="tab-content" id="myTabContent">
                  
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"><!--studant registration-->
                        <h3 class="register-heading">Apply as a Student</h3>
                        <div class="row register-form">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox runat="server" TextMode="SingleLine" pattern="[A-Za-z]{1,}" cssClass="form-control" ID="sName" placeholder="First Name *" />
                                </div>
                                <div class="form-group">
                                     <asp:TextBox runat="server" TextMode="SingleLine" pattern="[A-Za-z]{1,}" cssClass="form-control" ID="sSurname" placeholder="Last Name *" />
                                </div>
                                <div class="form-group">      
                                      <asp:TextBox runat="server" TextMode="SingleLine" pattern="[0-9]{1,}" cssClass="form-control" ID="sId" placeholder="ID *" />
                                </div>
                                <div class="form-group">
                                     <asp:TextBox runat="server" TextMode="Password" pattern="^(?=.*\d)(?=.*[a-zA-Z]).{6,10}$" title="Must contain at least one number and one letter, lenght is 6-10 characters" cssClass="form-control" ID="sPassward1" placeholder="Password *" />
                                </div>
                                <div class="form-group">      
                                      <asp:TextBox runat="server" TextMode="Password" pattern="^(?=.*\d)(?=.*[a-zA-Z]).{6,10}$" title="Must contain at least one number and one letter, lenght is 6-10 characters" cssClass="form-control" ID="sPassward2" placeholder="Confirm Password *" />
                                </div>
                                <div class="form-group">
                                    <div class="maxl">
                                        <label class="radio inline"> 
                                            <input type="radio" name="gender" value="male" checked>
                                            <span> Male </span> 
                                        </label>
                                        <label class="radio inline"> 
                                            <input type="radio" name="gender" value="female">
                                            <span>Female </span> 
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                     <asp:TextBox runat="server" TextMode="SingleLine"  pattern="[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*" title="format: xxx@xxx.xxx" cssClass="form-control" ID="sEmail" placeholder="Your Email *" />
                                </div>
                                <div class="form-group">
                                     <asp:TextBox runat="server" TextMode="SingleLine"  cssClass="form-control" ID="sPhone" placeholder="Your Phone *" />
                                </div>
                                <div class="form-group">
                                    
                                    <select class="form-control">
                                        <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
                                        <option>What is your Birthdate?</option>
                                        <option>What is Your old Phone Number</option>
                                        <option>What is your Pet Name?</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Enter Your Answer *" value="" />
                                </div>
                                <asp:Button runat="server"  CssClass="btnRegister" OnClick="SRegistrat"  Text="Register"/>
                               <asp:Label runat="server" ID="userExistsMessage" Visible="false">User with same ID or Email already exists</asp:Label>
                          </div>
                        </div>
                    </div><!-- end student registration-->
                    
                    <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <h3  class="register-heading">Apply as a Teacher</h3>
                        <div class="row register-form">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="First Name *" value="" />
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Email *" value="" />
                                </div>
                                <div class="form-group">
                                    <input type="text" maxlength="10" minlength="10" class="form-control" placeholder="Phone *" value="" />
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="password" class="form-control" placeholder="Password *" value="" />
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" placeholder="Confirm Password *" value="" />
                                </div>
                                <div class="form-group">
                                    <select class="form-control">
                                        <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
                                        <option>What is your Birthdate?</option>
                                        <option>What is Your old Phone Number</option>
                                        <option>What is your Pet Name?</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="`Answer *" value="" />
                                </div>
                                <input type="submit" class="btnRegister"  value="Register"/>
                            </div>
                        </div>
                    </div>

                </div>            
            </div>
            </div>
        </form>
    </div>

</body>

<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>
</html>











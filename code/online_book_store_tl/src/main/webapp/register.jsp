<%-- 
    Document   : register
    Created on : Dec 20, 2021, 7:26:05 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/bootstrap-4.6.1-dist/css/bootstrap.min.css">
        <title>Register</title>
    </head>
    <body>
        <div class="m-2">
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="first-name">First name</label>
                    <input type="text" class="form-control" id="firstName" placeholder="First name" name="firstName" value="1">
                </div>
                <div class="form-group col-md-4">
                    <label for="middle-name">Middle name</label>
                    <input type="text" class="form-control" id="middleName" placeholder="Middle name" name="middleName" value="2">
                </div>
                <div class="form-group col-md-4">
                    <label for="last-name">Last name</label>
                    <input type="text" class="form-control" id="lastName" placeholder="Last name" name="lastName" value="3">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" placeholder="Email" name="email" value="4">
                </div>
                <div class="form-group col-md-6">
                    <label for="phone">Phone</label>
                    <input type="text" class="form-control" id="phone" placeholder="phone" name="phone" value="878 687 8787">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="dateOfBirth">Birthday:</label>
                    <input type="date" id="dateOfBirth" name="dateOfBirth" class="form-control"  required value="2017-06-01">
                </div>
                <div class="form-group col-md-6">
                    <label for="gender">Gender</label>
                    <select class="form-control" id="gender" name="gender">
                        <option value="0">Female</option>
                        <option value="1">Male</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="city">City</label>
                    <input type="text" class="form-control" id="city" placeholder="City" name="city" value="6">
                </div>
                <div class="form-group col-md-3">
                    <label for="district">District</label>
                    <input type="text" class="form-control" id="district" placeholder="District" name="district" value="7">
                </div>
                <div class="form-group col-md-3">
                    <label for="street">Street</label>
                    <input type="text" class="form-control" id="street" placeholder="Street" name="street" value="8">
                </div>
                <div class="form-group col-md-3">
                    <label for="houseNumber">House Number</label>
                    <input type="text" class="form-control" id="houseNumber" placeholder="House Number" name="houseNumber" value="9">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" placeholder="Username" name="username" value="abcd">
                </div>
                <div class="form-group col-md-6">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Password" name="password" value="abcd">
                </div>
            </div>
            <div  class="btn btn-primary register-btn">Register</div>
        </div>
        <script src="assets/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript">
            $(".register-btn").click(function() {
                var firstName = $("#firstName").val().trim();
                if (firstName === "") {
                   alert("enter first name");
                   return;
                }
                console.log(firstName);
                
                var middleName = $("#middleName").val().trim();
                if (middleName === "") {
                   alert("enter middle name");
                   return;
                }
                console.log(middleName);
                
                var lastName = $("#lastName").val().trim();
                if (lastName === "") {
                   alert("enter last name");
                   return;
                }
                console.log(lastName);
                
                var email = $("#email").val().trim();
                if (email === "") {
                   alert("enter email");
                   return;
                }
                console.log(email);
                
                var phone = $("#phone").val().trim();
                if (phone === "") {
                   alert("enter phone");
                   return;
                }
                console.log(phone);
                
                var dateOfBirth = $("#dateOfBirth").val().trim();
                if ( dateOfBirth === "") {
                   alert("enter date of birth");
                   return;
                }
                console.log(dateOfBirth);
                
                var gender = $("#gender").val().trim();
                if (gender === "") {
                   alert("select gender");
                   return;
                }
                console.log(gender);
                
                var city =  $("#city").val().trim();
                if (city === "") {
                   alert("enter city");
                   return;
                }
                console.log(city);
                
                var district = $("#district").val().trim();
                if (district === "") {
                   alert("enter district");
                   return;
                }
                console.log(district);
                
                var street = $("#street").val().trim();
                if (street === "") {
                   alert("enter street");
                   return;
                }
                console.log(street);
                
                var houseNumber = $("#houseNumber").val().trim();
                if (houseNumber === "") {
                   alert("enter houst number, if you do not have hous number, please enter 'no'");
                   return;
                }
                console.log(houseNumber);
                
                var username = $("#username").val().trim();
                if (username === "") {
                   alert("enter username");
                   return;
                }
                console.log(username);
                
                var password = $("#password").val();
                if (password === "") {
                   alert("enter password");
                   return;
                }
                console.log(password);
                
                $.post("Register", {
                    "firstName": firstName,
                    "middleName": middleName,
                    "lastName": lastName,
                    "email": email,
                    "phone": phone,
                    "dateOfBirth": dateOfBirth,
                    "gender": gender,
                    "city": city,
                    "district": district,
                    "street": street,
                    "houseNumber": houseNumber,
                    "username": username,
                    "password": password
                }, function(result) {
                    var direct = confirm("Result: " + result + "\nDo you want to move to login page ?");
                    if (direct === true) {
                        console.log(confirm);
                        document.location.href = "Login";
                    } else {
                        return;
                    }
                });
            });
        </script>
    </body>
</html>

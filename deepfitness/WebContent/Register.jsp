<jsp:include page="header.jsp"></jsp:include><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<body>



<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<script>
jQuery( function($) {
	$("button[type='submit']").click(function (e) {
		e.preventDefault();
		var nameReg = /^[A-Za-z]+$/;
		var numberReg = /^[0-9]+$/;
		var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;

		var fname = $("input[name='name']").val();
		var email = $("input[name='email']").val();
		var phone = $("input[name='phone']").val();
		var pass = $("input[name='password']").val();
		var passc = $("input[name='repeatpassword']").val();

		var check = $("input[type='checkbox']:checked");
		if ((!nameReg.test(fname)) || (fname == "")) {
			$("input[name='name']").addClass("is-invalid");
			$("input[name='name']").focus();
			$("input[name='name']").next("small.error").show().html("Please enter a valid First Name.");
			$("input[name='name']").val("");
		} 
		 else if ((!emailReg.test(email)) || (email == "")) {
			$("input[name='email']").addClass("is-invalid");
			$("input[name='email']").focus();
			$("input[name='email']").next("small.error").show().html("Please enter a correct email address.");
			$("input[name='email']").val("");
		}
		 else if ((!phoneno.test(phone)) || (phone == "")) {
				$("input[name='phone']").addClass("is-invalid");
				$("input[name='phone']").focus();
				$("input[name='phone']").next("small.error").show().html("Please enter a correct email address.");
				$("input[name='phone']").val("");
		 }
		 else if (pass == "") {
			$("input[type='password']").addClass("is-invalid");
			$("input[name='password']").focus();
			$("input[type='password']").next("small.error").show().html("Password field empty.");
		} else if (pass.length < 6) {
			$("input[type='password']").addClass("is-invalid");
			$("input[name='password']").focus();
			$("input[type='password']").next("small.error").show().html("Password too Short.");
		} else if (pass != passc) {
			$("input[type='password']").addClass("is-invalid");
			$("input[name='password']").focus();
			$("input[type='password']").next("small.error").show().html("Password do not match.");
		} else if (check.length == 0) {
			$("input[type='checkbox']").addClass("is-invalid");
			$("input[name='checkbox']").focus();
			$("input[type='checkbox']").next("small.error").show().html("Please select check box.");
		} else {

			var data = {
				name: fname,
				email: email,
				phone: phone,
				password: pass,
			
			}
			$.ajax({
				type: "POST",
				url: "./Register",
				data: data,
			}).done(function(data){
				alert(data);
				window.location='./login.jsp';
			})
			.fail(function(jqXHR,textStatus){
				alert(textStatus);
			});
		}
	});
	$("input").keypress(function () {
		$(this).removeClass("is-invalid");
		$(this).next("small.error").hide();
	});
})

		//function to display message to the user
		function showMessage(results) {
			if (results == 'SUCCESS') {
				$('#messageDiv')
						.html(
								"<font color='green'>You are successfully logged in. </font>")
			} 
			
		}
	</script>
<style>
.loginBtn--google {
  /*font-family: "Roboto", Roboto, arial, sans-serif;*/
  background: #DD4B39;
}
.loginBtn--google:before {
  border-right: #BB3F30 1px solid;
  background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_google.png') 6px 6px no-repeat;
}
.loginBtn--google:hover,
.loginBtn--google:focus {
  background: #E74B37;
}
.loginBtn {
  box-sizing: border-box;
  position: relative;
  /* width: 13em;  - apply for fixed size */
  margin: 0.2em;
  padding: 0 15px 0 46px;
  border: none;
  text-align: left;
  line-height: 34px;
  white-space: nowrap;
  border-radius: 0.2em;
  font-size: 16px;
  color: #FFF;
}
.loginBtn:before {
  content: "";
  box-sizing: border-box;
  position: absolute;
  top: 0;
  left: 0;
  width: 34px;
  height: 100%;
}
.loginBtn:focus {
  outline: none;
}
.loginBtn:active {
  box-shadow: inset 0 0 0 32px rgba(0,0,0,0.1);
}

.divider-text {
    position: relative;
    text-align: center;
    margin-top: 15px;
    margin-bottom: 15px;
}
.divider-text span {
    padding: 7px;
    font-size: 12px;
    position: relative;   
    z-index: 2;
}
.loginBtn--facebook {
  background-color: #4C69BA;
  background-image: linear-gradient(#4C69BA, #3B55A0);
  /*font-family: "Helvetica neue", Helvetica Neue, Helvetica, Arial, sans-serif;*/
  text-shadow: 0 -1px 0 #354C8C;
}
.loginBtn--facebook:before {
  border-right: #364e92 1px solid;
  background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_facebook.png') 6px 6px no-repeat;
}
.loginBtn--facebook:hover,
.loginBtn--facebook:focus {
  background-color: #5B7BD5;
  background-image: linear-gradient(#5B7BD5, #4864B1);
}


.divider-text:after {
    content: "";
    position: absolute;
    width: 100%;
    border-bottom: 1px solid #ddd;
    top: 55%;
    left: 0;
    z-index: 1;
}

.btn-facebook {
    background-color: #405D9D;
    color: #fff;
}
.btn-twitter {
    background-color: #42AEEC;
    color: #fff;
}
.card {
    box-shadow: 10px 0px 40px rgba(0,0,0, .2);
  } 
 .card {
    border: 1px solid blue; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }</style>

<div class="container">
<br>  





<div class="card bg-light"><center>
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Create Account</h4>
	<p class="text-center">Get started with your free account</p>
	<p>
	<center><a href="" class="loginBtn loginBtn--google"> <i class=""></i>   Login via Google</a>
		<a href="" class="loginBtn loginBtn--facebook">   Login via facebook</a></center>
	</p>
	<p class="divider-text">
        <span class="bg-light">OR</span>
    </p>
	<form action="Register" method="post">
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span> 
		 </div>
       <input name="name" class="form-control" placeholder="Name" type="email"><small class="form-text text-danger error"></small>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" class="form-control" placeholder="Email address" type="email"><small class="form-text text-danger error"></small>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		</div>
		<select class="custom-select" style="max-width: 120px;">
		    <option selected="">+91</option>
		   
		</select>
    	<input name="phone" class="form-control" placeholder="Phone number" type="text"><small class="form-text text-danger error"></small>
    </div> <!-- form-group// -->
    
	 <!-- form-group end.// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" name="password" placeholder="Create password" type="password"><small class="form-text text-danger error"></small>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input class="form-control" name="repeatpassword" placeholder="Repeat password" type="password"><small class="form-text text-danger error"></small>
    </div> <!-- form-group// --> 
    <div class="form-group">
			<div class="form-check">
				<label class="form-check-label" style="padding-top: 14px;"><input
					class="form-check-input" type="checkbox">I agree to the
					license terms.<small class="form-text text-danger error"></small></label>
			</div>
		</div>                                     
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Create Account  </button>
    </div> <!-- form-group// -->      
    <p class="text-center">Have an account? <a href="./login.jsp">Log In!</a> </p>                                                                 
</form>
</article>
</div> <!-- card.// -->
</center>
</div> 
<!--container end.//-->

<br><br>

</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>
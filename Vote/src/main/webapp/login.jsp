<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Sing in</title>
    <link rel="stylesheet" href="css/style.css" />
  </head>
  <body>
  <input type="hidden" id="status" value="<%=request.getAttribute("status")%>"> 
    <div class="container1">
      <div class="image1">
        <img
          alt="login"
          src="img/Muis_logo.jpg"
          style="width: 1300px; height: 940px"
        />
      </div>
      <div class="login-container">
		<h2 style="width:400px; margin-left:50px;">
          Та Монгол Улсын Их Сургуулийн <span>Нэгдсэн хандалтын орчин</span>-д
          тавтай морилно уу.
        </h2>
        <div>
          <img
            alt="login"
            src="img/logo.png"
            style="width: 400px; height: 200px; margin-left:50px;"
          />
        </div>
        <form method="post" action="login">
          <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" name="name" id="name" placeholder="Your Name">
          </div>
          <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="pass" id="pass" placeholder="Password" />
          </div>

          <div class="form-group">
            <input type="submit" value="Login" />
          </div>
          <a href="registration.jsp" class="signup-image-link" style="margin-top: 20px; font-size:20px;"
            >Create an account</a
          >
        </form>
      </div>
    </div>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status == "failed"){
			swal("Sorry","Wrong Username or Password","error");
		}
	</script>
  </body>
</html>

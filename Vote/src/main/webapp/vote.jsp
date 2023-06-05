<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8">
    <title>Санал Асуулга</title>
    <link rel="stylesheet" href="css/style.css" />
  </head>
  <body background="img/Muis_logo.jpg">
  <input type="hidden" id="status" value="<%=request.getAttribute("status")%>"> 
    <div style="display: flex; justify-content: center">
      <div
        style="
          border: 1px solid rgba(0, 0, 0, 0.2);
          border-radius: 20px;
          display: flex;
          justify-content: center;
          width: 600px;
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.5);
          background-image: linear-gradient(to bottom right, #3c158a, #9c0261);
        "
      >
        <form
          style="
            width: 500px;
            justify-content: center;
            font-size: 16px;
            color: white;
            font-weight: 500;
          "
          action="poll"
          method="post"
        >
          <h1
            style="
              text-align: center;
              border-bottom: 1px solid rgba(0, 0, 0, 0.2);
              width: 100%;
              margin-bottom: 40px;
              height: 50px;
            "
          >
            Санал асуулга үүсгэх
          </h1>

          <div class="vote_component">
            <label>Хамрах хүрээ :</label>
            <select
              style="height: 35px; border-radius: 10px"
              id="region"
              name="region"
            >
              <option value="">Хамрах хүрээг сонгоно уу?</option>
              <option value="region1">МУИС</option>
              <option value="region2">Салбар сургууль</option>
              <option value="region3">Тэнхим</option></select
            ><br /><br />
          </div>
          <div class="vote_component">
            <label for="topics">Сэдвүүд :</label><br />
            <div class="radio-container">
              <input
                class="radio-input"
                type="radio"
                name="radio"
                value="option1"
                id="option1"
              />
              <label class="radio-button" for="option1"> Анги танхим </label>
            </div>

            <div class="radio-container">
              <input
                class="radio-input"
                type="radio"
                name="radio"
                value="option2"
                id="option2"
              />
              <label class="radio-button" for="option2"> Багш, ажилчид </label>
            </div>

            <div class="radio-container">
              <input
                class="radio-input"
                type="radio"
                name="radio"
                value="option3"
                id="option3"
              />
              <label class="radio-button" for="option3">Интернэт сүлжээ</label>
            </div>
            <div class="radio-container">
              <input
                class="radio-input"
                type="radio"
                name="radio"
                value="option4"
                id="option4"
              />
              <label class="radio-button" for="option4"> Техник хангамж </label>
            </div>
            <div class="radio-container">
              <input
                class="radio-input"
                type="radio"
                name="radio"
                value="option5"
                id="option5"
              />
              <label class="radio-button" for="option5">Байгууламжийн дулаалга</label>
            </div>
          </div>

          <br />
          <div class="vote_component">
            <label for="title">Гарчиг:</label>
            <input
              style="border-radius: 10px; height: 35px; width: 100%"
              type="text"
              id="title"
              name="title"
              required
            /><br /><br />
          </div>

          <div class="vote_component">
            <label for="content">Санал асуулгын агуулга :</label><br />
            <textarea
              style="width: 100%; border-radius: 10px"
              id="content"
              name="content"
              rows="5"
              required
            ></textarea
            ><br /><br />
          </div>
          <div class="vote_component">
            <label for="image">
            	Асуулгатай холбоотой зурагийн Online дахь LINK-ыг оруулна уу?
            </label>
            <input
              type="text"
              id="imageLink"
              name="imageLink"
              style="width: 100%; margin-top: 20px;
    height: 30px;"
            /><br /><br />
          </div>
          <div style="display: flex; justify-content: center">
            <input class="include" type="submit" value="оруулах" />
          </div>
          <a href="index.jsp" class="signup-image-link" style="font-size:20px; color:white; padding-bottom:10px;">Add Vote I See</a>
        </form>
      </div>
    </div>
    <!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status == "success"){
			swal("Congrats","Poll Successfully","success");
		}
	</script>
  </body>
</html>

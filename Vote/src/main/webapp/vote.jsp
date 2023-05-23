
    <%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.radio-container {
    display: inline-block;
    margin-right: 7px;
    margin-top:10px;
    
  }
  
  .include{
   background-color: white; width:110px; height:40px; border-radius:10px; margin-bottom:30px;}
  .radio-input {
    display: none;
  }
  
  .radio-button {
    display: inline-block;
    padding: 10px 20px;
    border: 1px solid #000;
    background-color: #fff;
    cursor: pointer;
    border-radius:7px;
    color:black;
  }
  
  .radio-input:checked + .radio-button {
    background-color: #f5f763
    
  }
  .vote_component {
  margin-top:10px;
  margin-bottom:10px;
  }
  .include:hover{
  background-color:#f5f763;
  cursor:pointer;
  }
</style>
</head>
<body>
<header></header>
	  <div style="
	 display: flex ; justify-content:center; ">
	 <div style="border: 1px solid rgba(0, 0, 0, 0.2); border-radius:20px; 
	 display: flex ; justify-content:center; width:600px;
	 box-shadow:0 4px 8px 0 rgba(0, 0, 0, 0.5);
	 background-image: linear-gradient(to bottom right, #3c158a,#9c0261); 
	 ">
	 
	 <form  style="width:500px; justify-content:center;  font-size:16px; color:white; font-weight:500"
	 
	 action="/submit-form" method="post" enctype="multipart/form-data">
	 <h1 style="text-align:center; 
	 border-bottom: 1px solid rgba(0, 0, 0, 0.2); width:100%; margin-bottom:40px; height:50px
	 ">Санал асуулга үүсгэх</h1>
	 
	  <div class="vote_component">
    <label for="region">Хамрах хүрээ :</label>
    <select style="height:35px; border-radius:10px " id="region" name="region" required>
      <option value="">Хамрах хүрээг сонгоно уу? </option>
      <option value="region1">МУИС</option>
      <option value="region2">Салбар сургууль</option>
      <option value="region3">Тэнхим</option>
      <!-- Add more options as needed -->
    </select><br><br>
    </div>
     
     <div>
     <div class="vote_component">
    <label for="topics">Сэдвүүд :</label><br>
 <div class="radio-container">
    <input class="radio-input" type="radio" name="radio" value="option1" id="option1">
    <label class="radio-button" for="option1">
      Анги танхим 
    </label>
  </div>
  
  <div class="radio-container">
    <input class="radio-input" type="radio" name="radio" value="option2" id="option2">
    <label class="radio-button" for="option2">
      Багш, ажилчид 
    </label>
  </div>
  
  <div class="radio-container">
    <input class="radio-input" type="radio" name="radio" value="option3" id="option3">
    <label class="radio-button" for="option3">
      Интернэт сүлжээ 
    </label>
  </div>
  <div class="radio-container">
    <input class="radio-input" type="radio" name="radio" value="option4" id="option4">
    <label class="radio-button" for="option4">
      Техник хангамж 
    </label>
  </div>
  <div class="radio-container">
    <input class="radio-input" type="radio" name="radio" value="option5" id="option5">
    <label class="radio-button" for="option5">
      Байгууламжийн дулаалга
    </label>
  </div>
  </div>
  
  <br>
   <div class="vote_component">
    <label  for="title">Гарчиг:</label>
    <input style="border-radius:10px; height:35px; width:100%" type="text" id="title" name="title" required><br><br>
</div>

 <div class="vote_component">
    <label for="content">Санал асуулгын агуулга :</label><br>
    <textarea style="width:100%; border-radius:10px" id="content" name="content" rows="5" required></textarea><br><br>
</div>
 <div class="vote_component">

    <label for="image">Асуулгатай холбоотой зураг оруулах</label>
    
    <input type="file" id="image" name="image"><br><br>
    </div>
    <div style="display:flex; justify-content:center">
    <input class="include"  type="submit" value="оруулах">
    </div>
  </form>
  </div>
  </div>
</body>
</html>
<% if(session.getAttribute("name")==null){ response.sendRedirect("login.jsp"); }%> 
<%@page contentType="text/html; charset=UTF-8" %> 
<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %> 
<%@page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Spring Boot Application</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="css/style.css" />
  </head>
  <body>
    <div class="header" style="display: flex">
      <div>
        <img alt="icon" src="img/logo1.png" />
      </div>
      <div class="menu">
        <ul style="display: flex">
          <li>
            <a href="index.jsp">Home</a>
          </li>
          <li>
            <a href="vote.jsp">Санал асуулга</a>
          </li>
          <li>
            <a href="logout">LogOut</a>
          </li>
          <li>
            <a href="logout"><%=session.getAttribute("name")%></a>
          </li>
        </ul>
      </div>
      <div class="login">
        <a href="login.jsp">
          <img
            alt="user"
            src="img/user.png"
            style="width: 40px; height: 40px; position: relative; right: 80px"
          />
        </a>
      </div>
    </div>
    <div id="body">
      <div class="container">
        <h2 style="color: white">Надад санал байна....</h2>
        <a href="vote.jsp" class="quizBtn">Санал асуулга үүсгэх</a>
      </div>
    </div>

    <div id="news">
      <div style="display: flex">
        <div class="vote_list">
          <% try{ 
        	  Class.forName("com.mysql.jdbc.Driver"); Connection con =
	          DriverManager.getConnection("jdbc:mysql://localhost:3306/login_users","root","");
	          Statement statement = con.createStatement(); 
	          String str = "select * from poll"; 
	          ResultSet rs = statement.executeQuery(str);
	          while(rs.next()){ %>
	          <div
	            class="vote_item"
	            style="
	              display: flex;
	              margin-left: 100px;
	              margin-top: 20px;
	              border-left: 5px solid #004dd9;
	              border-bottom: 5px solid #004dd9;
	              border-top-left-radius: 12px;
	              border-top-right-radius: 12px;
	              background-color: #ffffff;
	              border-bottom-left-radius: 12px;
	              border-bottom-right-radius: 12px;
	              width: 900px;
	              height: 400px;
	              padding: 20px;
	            "
	          >
	            <div class="item1" style="margin-right: 50px">
	              <h2
	                style="
	                  font-family: Inter;
	                  font-style: normal;
	                  font-weight: 700;
	                  font-size: 32px;
	                "
	              >
	                <%=rs.getString("scope")%>
	              </h2>
	              <img alt="img" src="<%=rs.getString("imageLink")%>"
	              style="width:400px; height:300px;">
	            </div>
	            <div class="item2">
	              <h3
	                style="
	                  border: 1px solid #004dd9;
	                  border-radius: 12px;
	                  padding: 10px;
	                  font-size: 28px;
	                  color: #004dd9;
	                  width: 100%;
	                "
	              >
	                <%=rs.getString("type")%>
	              </h3>
	              <h4
	                style="
	                  padding: 10px 10px 0px 0px;
	                  font-size: 22px;
	                  color: Black;
	                "
	              >
	                <%=rs.getString("title")%>
	              </h4>
	              <p
	                style="
	                  padding: 10px 10px 0px 0px;
	                  font-size: 20px;
	                  color: Black;
	                "
	              >
	                <%=rs.getString("description")%>
	              </p>
	              <div style="display: flex">
	                <a
	                  style="
	                    font-family: 'Inter';
	                    font-style: normal;
	                    font-weight: 700;
	                    font-size: 18px;
	                    line-height: 16px;
	                    letter-spacing: 1px;
	                    display: inline-block;
	                    padding: 10px 0px;
	                    margin-top: 14px;
	                    border-radius: 4px;
	                    text-align: center;
	                    transition: 0.5s;
	                    color: #fff;
	                    background: #004dd9;
	                    width: 170px;
	                    position: right;
	                  "
	                >
	                  <svg
	                    width="17"
	                    height="16"
	                    viewBox="0 0 17 16"
	                    fill="none"
	                    xmlns="http://www.w3.org/2000/svg"
	                  >
	                    <g clip-path="url(#clip0_25_998)">
	                      <path
	                        d="M8.49992 14.6667C4.81792 14.6667 1.83325 11.682 1.83325 8C1.83325 4.318 4.81792 1.33333 8.49992 1.33333C12.1819 1.33333 15.1666 4.318 15.1666 8C15.1666 11.682 12.1819 14.6667 8.49992 14.6667ZM8.49992 13.3333C9.91441 13.3333 11.271 12.7714 12.2712 11.7712C13.2713 10.771 13.8333 9.41449 13.8333 8C13.8333 6.58551 13.2713 5.22896 12.2712 4.22876C11.271 3.22857 9.91441 2.66667 8.49992 2.66667C7.08543 2.66667 5.72888 3.22857 4.72868 4.22876C3.72849 5.22896 3.16659 6.58551 3.16659 8C3.16659 9.41449 3.72849 10.771 4.72868 11.7712C5.72888 12.7714 7.08543 13.3333 8.49992 13.3333ZM7.83525 10.6667L5.00659 7.838L5.94925 6.89533L7.83525 8.78133L11.6059 5.01L12.5493 5.95267L7.83525 10.6667Z"
	                        fill="white"
	                      />
	                    </g>
	                    <defs>
	                      <clipPath id="clip0_25_998">
	                        <rect
	                          width="16"
	                          height="16"
	                          fill="white"
	                          transform="translate(0.5)"
	                        />
	                      </clipPath>
	                    </defs></svg
	                  >Дэмжинэ
	                </a>
	                <a
	                  style="
	                    font-family: 'Inter';
	                    font-style: normal;
	                    font-weight: 700;
	                    font-size: 14px;
	                    line-height: 18px;
	                    letter-spacing: 1px;
	                    margin-left: 10px;
	                    display: inline-block;
	                    padding: 10px 0px;
	                    text-align: center;
	                    margin-top: 14px;
	                    border-radius: 4px;
	                    transition: 0.5s;
	                    color: #b10516;
	                    background: #f9a2ab;
	                    width: 170px;
	                  "
	                >
	                  <svg
	                    width="16"
	                    height="16"
	                    viewBox="0 0 16 16"
	                    fill="none"
	                    xmlns="http://www.w3.org/2000/svg"
	                  >
	                    <g clip-path="url(#clip0_25_1001)">
	                      <path
	                        d="M7.99992 14.6667C4.31792 14.6667 1.33325 11.682 1.33325 8C1.33325 4.318 4.31792 1.33333 7.99992 1.33333C11.6819 1.33333 14.6666 4.318 14.6666 8C14.6666 11.682 11.6819 14.6667 7.99992 14.6667ZM7.99992 13.3333C9.41441 13.3333 10.771 12.7714 11.7712 11.7712C12.7713 10.771 13.3333 9.41449 13.3333 8C13.3333 6.58551 12.7713 5.22896 11.7712 4.22876C10.771 3.22857 9.41441 2.66667 7.99992 2.66667C6.58543 2.66667 5.22888 3.22857 4.22868 4.22876C3.22849 5.22896 2.66659 6.58551 2.66659 8C2.66659 9.41449 3.22849 10.771 4.22868 11.7712C5.22888 12.7714 6.58543 13.3333 7.99992 13.3333ZM7.99992 7.05733L9.88525 5.17133L10.8286 6.11467L8.94258 8L10.8286 9.88533L9.88525 10.8287L7.99992 8.94267L6.11459 10.8287L5.17125 9.88533L7.05725 8L5.17125 6.11467L6.11459 5.17133L7.99992 7.05733Z"
	                        fill="#F0162D"
	                      />
	                      <path
	                        d="M7.99992 14.6667C4.31792 14.6667 1.33325 11.682 1.33325 8C1.33325 4.318 4.31792 1.33333 7.99992 1.33333C11.6819 1.33333 14.6666 4.318 14.6666 8C14.6666 11.682 11.6819 14.6667 7.99992 14.6667ZM7.99992 13.3333C9.41441 13.3333 10.771 12.7714 11.7712 11.7712C12.7713 10.771 13.3333 9.41449 13.3333 8C13.3333 6.58551 12.7713 5.22896 11.7712 4.22876C10.771 3.22857 9.41441 2.66667 7.99992 2.66667C6.58543 2.66667 5.22888 3.22857 4.22868 4.22876C3.22849 5.22896 2.66659 6.58551 2.66659 8C2.66659 9.41449 3.22849 10.771 4.22868 11.7712C5.22888 12.7714 6.58543 13.3333 7.99992 13.3333ZM7.99992 7.05733L9.88525 5.17133L10.8286 6.11467L8.94258 8L10.8286 9.88533L9.88525 10.8287L7.99992 8.94267L6.11459 10.8287L5.17125 9.88533L7.05725 8L5.17125 6.11467L6.11459 5.17133L7.99992 7.05733Z"
	                        fill="black"
	                        fill-opacity="0.28"
	                      />
	                    </g>
	                    <defs>
	                      <clipPath id="clip0_25_1001">
	                        <rect width="16" height="16" fill="white" />
	                      </clipPath>
	                    </defs>
	                  </svg>
	                  Дэмжихгүй</a
	                >
	              </div>
	            </div>
	          </div>
	          <% } } catch(Exception e){ } %>
	        </div>
        <div>
          <div class="description">
            <div class="category_list">
              <h3>Сэдвүүд</h3>
              <a href="#">Анги тенхим</a>
              <a href="#">Ажилчид</a>
              <a href="#">Техник хэргэсэл</a>
              <a href="#">Хичээл сонголт</a>
              <a href="#">Номын сан</a>
              <a href="#">Сайн дурын клуб</a>
              <a href="#">Интернэт Сүжээ</a>
              <a href="#">Анги тенхмын Халаалт</a>
            </div>
          </div>
          <div class="description">
            <div class="desp_one">
              <h3>МОНГОЛ УЛСЫН ИХ СУРГУУЛЬ ТАНЫГ СОНСОЖ БАЙНА..</h3>
              <p>
                Танд монгол улсын их сургуулийн шийдвэр гүйцэтгэх албаны хүнд
                шууд хаяглах тодорхой санал байна уу? Танд өөрийн санал бодол,
                үгээ хүргэх талбар үгүйлэгддэг үү? Яаж өөрчилбөл, ямар шийдвэр
                гаргавал сургуулийн хөгжилд нэн тустай вэ? Хаана, юу хийвэл,
                хэрхэн өөрчилбөл сургуульд чухал хэрэгтэй вэ? Бидэнд юу саад
                болж байна вэ? Нэг хүнд оногдох газар нутаг, эрдэнэс баялаг, мал
                сүргээр арвин, агуу их түүхтэй, ардчилсан Монгол орноо хөгжүүлэх
                өргөн боломжоо яаж илүү бодитой ашиглах вэ? Сургуулийн бодлого,
                шийдвэр оновчтой мэргэн байхын эх үндэс нь оюутан Таны санал.
                Асуудал бэрхшээлийг давах, бурууг засах, зөвийг тэтгэх мэргэн
                ухаан, мэдлэг чадвар, сэтгэл зүрх, үнэт санал Танд бий. Сануулж
                хэлэх хүнгүй бол сайн хүн ч эвдэрнэ гэдэг. Үгээ хэлэх, үзэл
                бодлоо илэрхийлэх нь Таны эрх. Оюутны санал бодлыг хүлээн авч,
                бодлого, шийдвэр, ажилдаа тусгах нь сургуулийн үүрэг. Таны санал
                бодол, дуу хоолойн чөлөөт индэр байх болно. Монгол Улсын Их
                Сургууль таны саналыг тасралтгүй хүлээн авах талбар байх болно.
                Санал бүхэн шийдвэр гаргагчад шууд хүрнэ. Сургуулийг хөгжүүлэх
                санал бүхнийг хүндэтгэн хүлээн авч, заавал хариу өгч байх болно.
                Өдөр бүр холбоотой байя! Монгол Улсын Их Сургууль Таныг сонсож
                байна. Та саналаа хэлээрэй, бичээрэй.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

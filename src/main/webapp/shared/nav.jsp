<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
  <div class="container">
    <a class="navbar-brand" href="#">Flowers Shop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="home.jsp">Home </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="product.jsp">Product</a>
        </li>  
        <li class="nav-item">
          <a class="nav-link" href="TestServlet">Product Managementa</a> 
              </li> 
      </ul>
        <!--Hiển Thị welcome--->
        <ul class="navbar-nav">
                <%
                    if (session.getAttribute("username") != null) {
                %>
                <li class="nav-item">
                    <a class="nav-link" href="#"> Welcome <%=session.getAttribute("username")%> </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="DangxuatServlet"> Logout </a>
                </li>
                <%
                } else {
                %>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp"> Login </a>
                </li>
                <%
                    }
                %>
            </ul>
        
    </div>
  </div>
</nav>
            
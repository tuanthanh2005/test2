<%-- 
    Document   : list.jsp
    Created on : Sep 15, 2023, 8:14:39 AM
    Author     : KHOACNTT
--%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Hoa"%>
<%@page import="dao.HoaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--nhung noi dung header.jsp-->
<jsp:include page="shared/header.jsp" />
<!--nhung noi dung nav.jsp-->
<jsp:include page="shared/nav.jsp" />
<section class="bg-body-secondary text-center">
    <div class="container">
        <h1 class="jumbotron-heading text-muted">Shop Hoa Tươi</h1>
        <p class="lead text-muted mb-0">CHUYÊN CUNG CẤP ĐIỆN HOA SỐ 1 TẠI VIỆT NAM</p>
    </div>
</section>

<div class="container" id="main-content">
    <div class="row">       
        <div class="col-sm-12">
            <div class="row">            
                <%
                    DecimalFormat ftm = new DecimalFormat("#,##0");
                    HoaDAO hoaDAO = new HoaDAO();
                    ArrayList<Hoa> dsHoa = hoaDAO.getTop10();
                    for(Hoa x : dsHoa)
                    {
           
                %>
                
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="card mb-2">
                        <div class="card-header">
                            <%=x.getTenhoa()%>
                        </div>
                        <div class="card-body">
                            <img class="card-img" src="assets/images/products/<%=x.getHinh()%>" alt="Card image cap">                         
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    <p class="btn btn-danger btn-block">Add to cart</p>
                                </div>
                                <div class="col">
                                    <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>              
                </div>
                <%
                    }
                %>
            </div>                       
        </div>

    </div>
</div>    

</div><!-- /.container -->
<!--nhung noi dung footer.jsp-->
<jsp:include page="shared/footer.jsp" />   

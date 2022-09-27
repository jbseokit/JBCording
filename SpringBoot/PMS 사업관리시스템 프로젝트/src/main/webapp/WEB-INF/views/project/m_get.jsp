<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
	<%@ include file="/WEB-INF/views/includes/prj_header.jsp" %>
</head>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인원정보 등록</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<div class = "row">
  <div class = "col-lg-12">
    <h1 class = "page-header">Member Read</h1>
    </div>
    <!-- /.col-lg-12-->
  </div>
  <!-- /.row-->

  <div class = "row">
    <div class = "col-lg-12">
      <div class = "panel panel-default">
      
        <div class = "panel-heading">Member Read Page</div>
        <!-- /.panel-heading -->
        <div class="panel-body">
                   
              <div class ="form-group">
             <label>Idx</label> <input class = "form-control" name='idx'
             	value='<c:out value="${project.idx }"/>' readonly="readonly">
             </div>
                               
              <div class ="form-group">
             <label>프로젝트 이름</label> <input class = "form-control" name='prjmbr_prjnm'
             	value='<c:out value="${project.prjmbr_prjnm }"/>' readonly="readonly">
             </div>
            
              <div class ="form-group">
             <label>프로젝트 총인원</label> <input class = "form-control" name='prjmbr_total'
             	value='<c:out value="${project.prjmbr_total }"/>' readonly="readonly">
             </div> 
             
             <div class ="form-group">
             <label>프로젝트 내 직급</label> <input class = "form-control" name='prjmbr_lev'
             	value='<c:out value="${project.prjmbr_lev }"/>' readonly="readonly">
             </div> 
             
              <div class ="form-group">
             <label>이름</label> <input class = "form-control" name='prjmbr_mbrnm'
             	value='<c:out value="${project.prjmbr_mbrnm }"/>' readonly="readonly">
             </div>
            
              <div class ="form-group">
             <label>담당업무</label> <input class = "form-control" name='prjmbr_mbtask'
             	value='<c:out value="${project.prjmbr_mbtask}"/>' readonly="readonly">
             </div>
  

              <button data-oper='m_modify' class="btn btn-default">수정</button>
              <button data-oper='m_info' class="btn btn-m-info">인원 정보</button>
              
              <form id='operForm' action="/project/m_modify" method="get">
              	<input type = 'hidden' id='idx' name='idx' value='<c:out value="${project.idx}"/>'>
              	<input type = 'hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
              	<input type = 'hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
              </form>
             
             </div> 
             <!-- end panel-body --> 
             
           </div> 
           <!-- end panel-body -->    
      </div>
      <!-- end panel -->
    </div>
    <!-- /.row -->
    <!-- JavaScript Bundle with Popper -->
    <script type="text/javascript">
    $(document).ready(function() {
    	
    	var operForm = $("#operForm");
    	
    	$("button[data-oper='m_modify']").on("click", function(e){
    		
    		operForm.attr("action", "/project/m_modify").submit();
    	});
    	
    	
    	$("button[data-oper='m_info']").on("click", function(e){
    		
    		operForm.find("#idx").remove();
    		operForm.attr("action","/project/m_info")
    		operForm.submit();
    	});
    });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>

</html>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/style.css">
<title>Insert title here</title>
</head>
<body>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<h1>Film Site</h1>	
<div class="row">
<div class="col-md-4">
</div>
<div class="col-md-4 box-card-container">
	<form action="filmDetails.do" method="get">
		<label for="searchByFilmId">Search by film ID:</label> 
		<input type="text" name="filmId">
		<input type="submit" value="Submit">
	</form><br>
	<form action="filmDetails.do" method="get">
		<label for="searchByKeyword">Search by Keyword:</label> 
		<input type="text" name="searchByKeyword">
		<input type="submit" value="Submit">
	</form><br>
	<form action="createFilmForm.do">
	<input type="submit" value="Create Film">
	</form>
</div>
<div class="col-md-4">
</div>
</div>
	

</body>
</html>
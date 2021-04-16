<html>
<head>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
<!--  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
-->
</head>
<body>
<nav class="navbar navbar-expand-lg bg-dark primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">YourTutS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      
      <div class="d-flex ml-auto">
      <h2><a href="signup" class="navbar-brand">Signup</a></h2>
      &nbsp
<h2><a href="login" class="navbar-brand">Login</a></h2>  
      </div>
    </div>
  </div>
</nav>
<div class="container my-5 p-5">


  <!--Section: Content-->
  <section class="text-center dark-grey-text">

    <!-- Section heading -->
    <h2 class="font-weight-bold mb-4 pb-2">YourTuts</h2>
    <!-- Section description -->
    <p class="lead grey-text mx-auto mb-5">Your Own Home Tutorials!!</p>

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-4 mb-4">

        <i class="fas fa-chart-area fa-3x red-text"></i>
        <h5 class="font-weight-bold my-4">Analytics</h5>
        <p class="grey-text mb-md-0">Great Analytics stratergies!
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 mb-4">

        <i class="fas fa-book fa-3x cyan-text"></i>
        <h5 class="font-weight-bold my-4">Tutorials</h5>
        <p class="grey-text mb-md-0">Find Your All tutorials!
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-4 mb-4">

        <i class="far fa-comments fa-3x orange-text"></i>
        <h5 class="font-weight-bold my-4">Support</h5>
        <p class="grey-text mb-0">24x7 support!
        </p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </section>
  <!--Section: Content-->


</div>
</body>
</html>
<!-- 
create table doubts(
doubtId integer primary key auto_increment,
authorId integer,
subjectId integer,
detail varchar(100),
tutorId integer,
createDate date,
sessionDateTime varchar(100),
sessionLink varchar(1000),
foreign key (authorId) references user(userId),
foreign key (tutorId) references user(userId),
foreign key (subjectId) references subject(subjectId)
);
 -->


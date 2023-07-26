<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <title>OE Administration</title>

    <!-- Bootstrap core CSS -->
    <link href="/luntpc04659_Assignment/views/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- My CSS -->
    <link rel="stylesheet" href="/luntpc04659_Assignment/views/assets/css/style.css">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="/luntpc04659_Assignment/views/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/luntpc04659_Assignment/views/assets/css/templatemo-sixteen.css">
    <link rel="stylesheet" href="/luntpc04659_Assignment/views/assets/css/owl.css">

</head>

<body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="/luntpc04659_Assignment/admin/ad-home">
                    <h2>Online<em> Entertainment</em></h2>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/luntpc04659_Assignment/admin/ad-home">Trang Chủ
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/luntpc04659_Assignment/admin/ad-video">Video</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/luntpc04659_Assignment/admin/ad-user">Người Dùng</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Page Content -->
    
    <jsp:include page="${view}"></jsp:include>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="inner-content">
                        <p>Copyright &copy; 2023 Online Entertainment Co., Ltd.

                            - Design: <a rel="nofollow noopener" href="" target="_blank">Lukky Nguyen</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>



    <!-- Bootstrap core JavaScript -->
    <script src="/luntpc04659_Assignment/views/vendor/jquery/jquery.min.js"></script>
    <script src="/luntpc04659_Assignment/views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="/luntpc04659_Assignment/views/assets/js/custom.js"></script>
    <script src="/luntpc04659_Assignment/views/assets/js/owl.js"></script>
    <script src="/luntpc04659_Assignment/views/assets/js/slick.js"></script>
    <script src="/luntpc04659_Assignment/views/assets/js/isotope.js"></script>
    <script src="/luntpc04659_Assignment/views/assets/js/accordions.js"></script>


    <script language="text/Javascript">
        cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
        function clearField(t) {                   //declaring the array outside of the
            if (!cleared[t.id]) {                      // function makes it static and global
                cleared[t.id] = 1;  // you could use true and false, but that's more typing
                t.value = '';         // with more chance of typos
                t.style.color = '#fff';
            }
        }
    </script>


</body>

</html>
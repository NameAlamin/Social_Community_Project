<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="social_template_css.css" />
    <title>Social Community</title>

    <style>
        body {
            background: #f5f7f8;
        }
        .col-lg-6 {
            background: blueviolet;
            margin-top: 10px;
        }
        .icon-size {
            font-size: 26px;
        }
        .vertical-nav-left {
            min-width: 17rem;
            width: 17rem;
            height: 100vh;
            overflow: scroll;
            overflow-y: unset;
            position: fixed;
            top: 1;
            left: 0;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.1);
            transition: all 0.4s;
        }
        .vertical-nav-left::-webkit-scrollbar,
        .vertical-nav-right::-webkit-scrollbar {
            width: 0px;
        }

        .vertical-nav-right {
            min-width: 17rem;
            width: 17rem;
            height: 100vh;
            overflow: scroll;
            position: fixed;
            top: 1;
            right: 0;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.1);
            transition: all 0.4s;
        }
        .fa {
            color: white;
        }

    </style>

</head>
<body>
<!-- Navbar start  -->
<nav class="sticky-top navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand font-weight-bolder text-white ms-5 fs-3" href="#"
        >Social Community</a
        >
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a href="#" class="px-5" title="News"
                    ><i class="fa fa-globe icon-size"></i
                    ></a>
                </li>

                <li class="nav-item">
                    <a href="#" class="px-5" title="Account Settings"
                    ><i class="fa fa-user icon-size"></i
                    ></a>
                </li>

                <li class="nav-item">
                    <a href="#" class="px-5" title="Messages"
                    ><i class="fa fa-envelope icon-size"></i
                    ></a>
                </li>

                <li class="nav-item">
                    <a href="#" class="px-5" title="Messages"
                    ><i class="fa fa-bell icon-size"></i
                    ></a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- navbar end  -->

<!-- main contant row start  -->
<div class="row">
    <!-- Start left column code  -->
    <div class="col-lg-3 col-md-4 col-sm-12">
        <!-- Vertical navbar -->
        <div class="vertical-nav-left bg-white" id="sidebar">
            <div class="py-4 px-3 mb-4 bg-light">
                <div class="media d-flex align-items-center">
                    <img
                            loading="lazy"
                            src="https://avatars.githubusercontent.com/u/76560206?v=4"
                            alt="..."
                            width="150"
                            height="150"
                            class="mr-3 rounded-circle img-thumbnail shadow-sm img-fluid"
                    />
                </div>
            </div>

            <p
                    class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0"
            >
                Dashboard
            </p>

            <ul class="nav flex-column bg-white mb-0">

                <security:authorize access="hasRole('ADMIN')">
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/user/create" target="_blank" class="nav-link text-dark bg-light">
                        <i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
                        create user
                    </a>
                </li>
                </security:authorize>

                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/status/create" target="_blank" class="nav-link text-dark">
                        <i class="fa fa-address-card mr-3 text-primary fa-fw"></i>
                        create status
                    </a>
                </li>

                <security:authorize access="hasRole('ADMIN')">
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/location/create" target="_blank" class="nav-link text-dark">
                        <i class="fa fa-cubes mr-3 text-primary fa-fw"></i>
                        create location
                    </a>
                </li>
                </security:authorize>

                <security:authorize access="hasRole('ADMIN')">
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/user/list" target="_blank" class="nav-link text-dark">
                        <i class="fa fa-bar-chart mr-3 text-primary fa-fw"></i>
                        user table
                    </a>
                </li>
                </security:authorize>

                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/status/list" target="_blank" class="nav-link text-dark">
                        <i class="fa fa-pie-chart mr-3 text-primary fa-fw"></i>
                        status table
                    </a>
                </li>

                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/location/list" target="_blank" class="nav-link text-dark">
                        <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                        location table
                    </a>
                </li>
            </ul>

            <p
                    class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0"
            >
                Charts
            </p>

            <ul class="nav flex-column bg-white mb-0">
                <li class="nav-item">
                    <a href="#" class="nav-link text-dark">
                        <i class="fa fa-area-chart mr-3 text-primary fa-fw"></i>
                        area charts
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-dark">
                        <i class="fa fa-bar-chart mr-3 text-primary fa-fw"></i>
                        bar charts
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-dark">
                        <i class="fa fa-pie-chart mr-3 text-primary fa-fw"></i>
                        pie charts
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-dark">
                        <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                        line charts
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="col-lg-6 col-md-4 col-sm-12">
        Post
    </div>
    <!-- start right side bar  -->
    <div class="col-lg-3 col-md-4 col-sm-12">
        <!-- Vertical navbar -->
        <div class="vertical-nav-right bg-white " id="sidebar">
            <div class="py-4 px-3 mb-4 bg-light">

                <ul class="nav flex-column bg-white mb-0">
                    <li class="nav-item">
                        <a href="#" class="nav-link text-dark bg-light">
                            <i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
                            Friends
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link text-dark bg-light">
                            <i class="fa fa-address-card mr-3 text-primary fa-fw"></i>
                            Messenger
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link text-dark bg-light">
                            <i class="fa fa-cubes mr-3 text-primary fa-fw"></i>
                            Group
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link text-dark bg-light">
                            <i class="fa fa-picture-o mr-3 text-primary fa-fw"></i>
                            Ads Manager
                        </a>
                    </li>
                </ul>

            </div>
            <!-- End vertical navbar -->
        </div>
        <!-- end right side bar  -->
    </div>
</div>
</body>
</html>
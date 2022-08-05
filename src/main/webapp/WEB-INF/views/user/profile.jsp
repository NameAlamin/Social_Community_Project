<!DOCTYPE html>
<html>
<head>
    <title>
        Bootstrap 4 Sidebar Menu Responsive with Sub menu Create Responsive Side
        Navigation
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
            crossorigin="anonymous"
    />
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <style>
        body {
            background: #599fd9 linear-gradient(
                    135.9deg,
                    rgba(109, 25, 252, 1) 16.4%,
                    rgba(125, 31, 165, 1) 56.1%
            );
            min-height: 100vh;
            overflow-x: hidden;
        }
        .vertical-nav {
            min-width: 17rem;
            width: 17rem;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.1);
            transition: all 0.4s;
        }
        .page-content {
            width: calc(100% - 17rem);
            margin-left: 17rem;
            transition: all 0.4s;
        }

        .separator {
            margin: 3rem 0;
            border-bottom: 1px dashed #fff;
        }
    </style>
</head>
<body>
<!-- Vertical navbar -->
<div class="vertical-nav bg-white col-lg-4 col-md-4 col-sm-4" id="sidebar">
    <div class="py-4 px-3 mb-4 bg-light">
        <div class="media d-flex align-items-center">
            <img
                    loading="lazy"
                    src="images/p-1.png"
                    alt="..."
                    width="200"
                    height="200"
                    class="mr-3 rounded-circle img-thumbnail shadow-sm"
            />
        </div>
    </div>
</div>
<!-- End vertical navbar -->

<!-- Page content holder -->
<div class="page-content p-5" id="content">
    <h2 class="display-4 text-white">User Name</h2>

    <div class="separator"></div>

    <div class="row text-white">
        <div class="col-lg-12 text-justify">
            <p class="lead">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                aliquip ex ea commodo consequat. Duis aute irure dolor in
                reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <p class="lead">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                aliquip ex ea commodo consequat. Duis aute irure dolor.
            </p>
            <p class="lead">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                aliquip ex ea commodo consequat. Duis aute irure dolor.
            </p>
            <p class="lead">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                aliquip ex ea commodo consequat. Duis aute irure dolor in
                reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <p class="lead">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                aliquip ex ea commodo consequat. Duis aute irure dolor.
            </p>
        </div>
    </div>
</div>
<!-- End demo content -->
</body>
</html>

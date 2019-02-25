<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <title>Reception</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" media="all" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css" />
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/animate.css" th:href="@{/css/animate.css}" />
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/fontawesome.css" th:href="@{/css/fontawesome.css}" />
    <!--<link rel="stylesheet" type="text/css" media="all" href="../static/css/main.css" th:href="@{/css/main.css}"/>-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
</head>

<body class="layout-default">
    <section class="hero is-fullheight is-medium doctor-container">
        <div class="columns is-centered">
            <div class="column is-half">
                <div class="box">
                    <div class="card-content">
                        <nav class="panel">
                            <p class="panel-heading">
                                Patient Queue
                            </p>

                            <form id="queue" method="GET" autocomplete="off">
                                <input type="hidden" value="test" name="patientID" id="patientID">

                                <a id="queueRouter" class="panel-block is-active">
                                    <span class="panel-icon">
                                        <i class="fas fa-user-tag" aria-hidden="true"></i>
                                    </span>
                                    Patient Name</a>
                                    <script>
                                        var router = document.getElementById('queueRouter');
                                        router.addEventListener('click', (event) => {
                                            // event.preventDefault();
                                            document.getElementById('queue').submit();
                                        });
                                    </script>
                            </form>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>

    <!--<script src="../../static/js/studentValidation.js" th:src="@{/js/studentValidation.js}"></script>-->
</body>

</html>
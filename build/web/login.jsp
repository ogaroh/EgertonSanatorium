<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <title>Reception</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" media="all" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css"/>
    <link rel="stylesheet" type="text/css" media="all" href="static/css/animate.css" th:href="@{/css/animate.css}"/>
    <link rel="stylesheet" type="text/css" media="all" href="static/css/fontawesome.css"
          th:href="@{/css/fontawesome.css}"
    />
    <link rel="stylesheet" type="text/css" media="all" href="file:///home/wesleigh/NetBeansProjects/EgertonSanatorium/web/static/css/main.css" th:href="@{/css/main.css}"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    
    <style>
        body{
            margin-top: 30px;
        }
    </style>
</head>

<body class="layout-default">
<section class="hero is-fullheight is-medium doctor-container">
    <div class="columns is-centered">
        <div class="column is-half">
            <div class="box">
                <div class="columns">
                    <div class="column is-one-fifth">
                        <button class="button is-primary"><a href="/EgertonSanatorium">
                            <span class="icon is-small is-left">
      <i class="fas fa-arrow-left"></i>
    </span>
                        </a>
                        </button>
                    </div>
                    <div class=" column is-four-fifths has-text-centered">
                        <h2 class="is-size-3 has-text-weight-light">Reception Content</h2>
                        <p class="help is-danger">Data to be filled carefully and with caution. As accurate as
                            posible</p>
                    </div>
                </div>
                <hr>
                <div class="card-content">
                    <form autocomplete="off" action="#" th:object="${student}" method="post">
                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Name:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input id="name" class="input animated" type="text" th:field="*{name}"
                                               placeholder="Student's Name">
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="field is-horizontal" id="studentId-container">
                            <div class="field-label is-normal">
                                <label class="label">RegNumber:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input id="regNo" class="input animated" type="text" th:field="*{regNo}"
                                               placeholder="S13/XXXXX/YR">
                                    </p>
                                </div>
                            </div>
                        </div>

                      
                        <hr>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Receptionist:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input class="input is-primary has-text-primary" type="text"
                                               value="Receptionist's Name" readonly>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="field is-horizontal">
                            <div class="field-label">
                                <!-- Left empty for spacing -->
                            </div>
                            <div class="field-body">
                                <div class="field is-horizontal">
                                    <div class="control">
                                        <button id="update-button" class="button is-success is-centered" type="submit">
                                            Proceed
                                        </button>
                                    </div>                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


</body>

</html>
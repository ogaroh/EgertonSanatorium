<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <title>Reception</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" media="all" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css"/>
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/animate.css" th:href="@{/css/animate.css}"/>
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/fontawesome.css"
          th:href="@{/css/fontawesome.css}"
    />
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/main.css" th:href="@{/css/main.css}"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    
    <style>
        body{
            padding-top: 50px;
        }
    </style>
</head>

<body class="layout-default">
<section class="hero is-fullheight is-medium doctor-container">
    <div class="columns is-centered">
        <div class="column is-half">
            <div class="box">
                <div class="has-text-centered">
                    <h2 class="is-size-3 has-text-weight-light">Reception Content</h2>
                    <p class="help is-danger">Data to be filled carefully and with caution. As accurate as posible</p>
                </div>
                <hr>
                <div class="card-content">
                    <div class="field is-horizontal">
                        <div class="field-label is-normal">
                            <label class="label">Type:</label>
                        </div>
                        <div class="field-body">
                            <div class="field">
                                <p class="control is-expanded">
                                <div class="select">
                                    <select id="type-selector">
                                        <option>student</option>
                                        <option>staff</option>
                                        <option>community</option>
                                    </select>
                                </div>
                                </p>
                            </div>
                        </div>
                    </div>
                    <form autocomplete="off" action="#" th:object="${student}" method="post">
                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Name:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input id="name" class="input animated" type="text" th:field="*{name}"
                                               placeholder="Patients's Name">
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
                        <div class="field is-horizontal invisible" id="staffId-container" >
                            <div class="field-label is-normal">
                                <label class="label">StaffId:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input id="staffId" class="input animated" type="text" th:field="*{regNo}"
                                               placeholder="12345" >
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal invisible" id="nationalId-container" >
                            <div class="field-label is-normal">
                                <label class="label">National Id:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input id="nationalId" class="input animated" type="number" th:value="2" value="2"
                                               placeholder="34584572" >
                                    </p>
                                                    
                                </div>
                            </div>
                        </div>

                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Gender:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                    <div class="select">
                                        <select th:field="{gender}">
                                            <option th:text="female" th:value="female">female</option>
                                            <option th:text="male" th:value="male">male</option>
                                        </select>
                                    </div>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Visit Type:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                    <div class="select">
                                        <select id="visit">
                                            <option>New</option>
                                            <option>Returning</option>
                                        </select>
                                    </div>
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
                                        <button id="update-button" class="button is-danger invisible" type="submit">
                                            Update Record
                                        </button>
                                    </div>
                                    <div id="submit-buttons">
                                        <div class="control">
                                            <button id="submit-student-button" class="button is-primary" type="submit" value="create-student-record" disabled>
                                                Create Student Record
                                            </button>
                                        </div>

                                        <div class="control">
                                            <button id="submit-staff-button" class="button is-primary invisible"
                                                    type="submit" value="create-staff-record">
                                                Create Staff Record
                                            </button>
                                        </div>
                                        <div class="control">
                                            <button id="submit-community-button" class="button is-primary invisible"
                                                    type="submit" value="create-community-record">
                                                Create Community Record
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

<script src="../static/js/main.js" th:src="@{./js/main.js}"></script>
</body>
</html>

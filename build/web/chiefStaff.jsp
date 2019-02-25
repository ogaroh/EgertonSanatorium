<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <title>Admin</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" media="all" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css"/>
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/main.css" th:href="@{./css/main.css}" />
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/fontawesome.css" th:href="@{./css/fontawesome.css}"
    />
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
        <div class="column is-four-fifths">
            <div class="box">
                <div class="has-text-centered">
                    <h2 class="is-size-3 has-text-weight-light">Admin Content</h2>
                </div>
                <div class="card-content">
                    <div th:each="user: ${users}">
                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">User:</label>
                            </div>
                            <div class="field-body">
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary has-background-primary  is-medium">
                                                Name:
                                            </a>
                                        </p>
                                        <p class="control is-expanded">
                                            <input readonly class="input is-primary has-text-primary is-medium" type="text" th:value="${user.name}">
                                        </p>
                                    </div>
                                </div>
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary has-background-primary  is-medium">
                                                StaffId:
                                            </a>
                                        </p>
                                        <p class="control is-expanded">
                                            <input readonly class="input is-primary has-text-primary is-medium" type="text" th:value="${user.staffId}">
                                        </p>
                                    </div>
                                </div>
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary has-background-primary  is-medium">
                                                ID:
                                            </a>
                                        </p>
                                        <p class="control is-expanded">
                                            <input readonly class="input is-primary has-text-primary is-medium" type="text" th:value="${user.name}">
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Email:</label>
                            </div>
                            <div class="field-body">
                                <div class="field is-expanded">
                                    <div class="field">
                                        <p class="control is-expanded">
                                            <input readonly class="input" type="email" th:value="${user.email}">
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Sex:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                    <div class="select">
                                        <select disabled>
                                            <option th:text="${user.gender}"></option>
                                        </select>
                                    </div>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Role:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input readonly class="input" type="text" th:value="${user.role}">
                                    </p>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>

</html>
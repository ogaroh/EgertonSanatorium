<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <title>Lab</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" media="all" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css"/>
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/main.css" th:href="@{./css/main.css}" />
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/fontawesome.css" th:href="@{./css/fontawesome.css}"
    />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
</head>

<body class="layout-default">
    <section class="hero is-fullheight is-medium doctor-container">
        <div class="columns is-centered">
            <div class="column is-four-fifths">
                <div class="box">
                    <div class="has-text-centered">
                        <h2 class="is-size-3 has-text-weight-light">Pharmacist Content</h2>
                        <p class="help is-danger">Data to be filled carefully and with caution. As accurate as posible</p>
                    </div>
                    <div class="card-content">
                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Patient:</label>
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
                                            <input class="input is-primary has-text-primary is-medium" type="text" value="Patient Name" readonly>
                                        </p>
                                    </div>
                                </div>
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary has-background-primary  is-medium">
                                                Sex:
                                            </a>
                                        </p>
                                        <p class="control is-expanded">
                                            <input class="input is-primary has-text-primary is-medium" type="text" value="Female" readonly>
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
                                            <input class="input is-primary has-text-primary is-medium" type="number" value="1234" readonly>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr>

                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Prescription:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <textarea class="textarea" placeholder="Prescription"></textarea>
                                    </p>
                                </div>                                
                            </div>
                        </div>

                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Pharmacist:</label>
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input class="input is-primary has-text-primary" type="text" value="Pharmacist's Name" readonly>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="field is-horizontal">
                            <div class="field-label">
                                <!-- Left empty for spacing -->
                            </div>
                            <div class="field-body">
                                <div class="field">
                                    <div class="control">
                                        <button class="button is-primary">
                                            Submit patient Details
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>
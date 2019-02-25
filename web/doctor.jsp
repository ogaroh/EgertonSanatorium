<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>

<head>
    <title>Doctor</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <link rel="stylesheet" type="text/css" media="all" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css" />
    <link rel="stylesheet" type="text/css" media="all" href="./static/css/main.css" th:href="@{./css/main.css}" />
    <link rel="stylesheet" type="text/css" media="all" href="./static/css/fontawesome.css" th:href="@{./css/fontawesome.css}" />
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
                        <div class="columns">
                            <div class="column is-one-fifth">
                                <button class="button is-primary"><a href="/EgertonSanatorium/reception">
                                        <span class="icon is-small is-left">
                                            <i class="fas fa-arrow-left"></i>
                                        </span>
                                    </a>
                                </button>
                            </div>
                            <div class="column is-four-fifths">
                                <h2 class="is-size-3 has-text-weight-light">Doctor Content</h2>
                                <p class="help is-danger">Data to be filled carefully and with caution. As accurate as
                                    posible</p>
                            </div>
                        </div>
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
                                            <input class="input is-primary has-text-primary is-medium" type="text"
                                                value="Patient Name" readonly>
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
                                            <input class="input is-primary has-text-primary is-medium" type="text"
                                                value="Female" readonly>
                                        </p>
                                    </div>
                                </div>
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary has-background-primary  is-medium">
                                                Id:
                                            </a>
                                        </p>
                                        <p class="control is-expanded">
                                            <input class="input is-primary has-text-primary is-medium" type="number"
                                                value="1234" readonly>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                                <label class="label">Details:</label>
                            </div>
                            <div class="field-body">
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary">
                                                Age(yrs)
                                            </a>
                                        </p>
                                        <p class="control is-expanded has-icons-right">
                                            <input class="input is-primary has-text-primary" type="number" value="${patient.age}"
                                                readonly>
                                            <span class="icon is-small is-right">
                                                Yrs
                                            </span>
                                        </p>
                                    </div>
                                </div>
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary">
                                                Weight
                                            </a>
                                        </p>
                                        <p class="control is-expanded has-icons-right">
                                            <input class="input is-primary has-text-primary" type="number" value="${patient.weight}"
                                                readonly>
                                            <span class="icon is-small is-right">
                                                Kg
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                            </div>
                            <div class="field-body">
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary">
                                                height(m)
                                            </a>
                                        </p>
                                        <p class="control is-expanded has-icons-right">
                                            <input class="input is-primary has-text-primary" type="number" value="${patient.height}"
                                                readonly>
                                            <span class="icon is-small is-right">
                                                Mtrs
                                            </span>
                                        </p>
                                    </div>
                                </div>
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary">
                                                BMI(Kg/m)
                                            </a>
                                        </p>
                                        <p class="control is-expanded has-icons-right">
                                            <input class="input is-primary has-text-primary" type="number" value="${patient.bmi}"
                                                readonly>
                                            <span class="icon is-small is-right">
                                                Kg/m
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field is-horizontal">
                            <div class="field-label is-normal">
                            </div>
                            <div class="field-body">
                                <div class="field is-expanded">
                                    <div class="field has-addons">
                                        <p class="control">
                                            <a class="button is-primary">
                                                Temperature
                                            </a>
                                        </p>
                                        <p class="control is-expanded has-icons-right">
                                            <input class="input is-primary has-text-primary" type="number" value="${patient.temperature}"
                                                readonly>
                                            <span class="icon is-small is-right">
                                                Deg
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr>
                        <form name="doctor" action="/EgertonSanatorium/doctor" method="POST">
                            <div class="field is-horizontal">
                                <div class="field-label is-normal">
                                    <label class="label">Symptoms:</label>
                                </div>
                                <div class="field-body">
                                    <div class="field">
                                        <div class="control">
                                            <textarea name="symptoms" class="textarea" placeholder="Explain how we can help you"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="field is-horizontal invisible" id="prognosis">
                                <div class="field-label is-normal">
                                    <label class="label">Prognosis:</label>
                                </div>
                                <div class="field-body">
                                    <div class="field">
                                        <div class="control">
                                            <textarea name="prognosis" class="textarea" placeholder="Possible ailments"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="field is-horizontal invisible" id="tests">
                                <div class="field-label is-normal">
                                    <label class="label">Tests:</label>
                                </div>
                                <div class="field-body">
                                    <div class="field">
                                        <div class="control">
                                            <textarea name="tests" class="textarea" placeholder="Recommended tests"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="field is-horizontal invisible" id="diagnosis">
                                <div class="field-label is-normal">
                                    <label class="label">Diagnosis:</label>
                                </div>
                                <div class="field-body">
                                    <div class="field">
                                        <div class="control">
                                            <textarea name="diagnosis" class="textarea" placeholder="Diagnosis"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="field is-horizontal invisible" id="prescription">
                                <div class="field-label is-normal">
                                    <label class="label">Prescription:</label>
                                </div>
                                <div class="field-body">
                                    <div class="field">
                                        <div class="control">
                                            <textarea name="prescription" class="textarea" placeholder="Prescription"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="field is-horizontal" id="btn-container">
                                <div class="field-label is-normal">
                                    <label class="label"></label>
                                </div>
                                <div class="field-body">
                                    <div class="field is-expanded">
                                        <div class="field">
                                            <button id="btnLab" class="button is-primary">
                                                Send to Lab
                                            </button>
                                            <button id="btnPharmacy" class="button is-primary">
                                                Send to Pharmacy
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="field is-horizontal">
                                <div class="field-label is-normal">
                                    <label class="label">Doctor:</label>
                                </div>
                                <div class="field-body">
                                    <div class="field">
                                        <p class="control is-expanded">
                                            <input class="input is-primary has-text-primary" type="text" value="Doctor's Name"
                                                readonly>
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
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

<script src="./static/js/doctor.js"></script>

</html>
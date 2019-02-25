
<!DOCTYPE html>
<html>
<head>
    <title>Chief of Staff</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" media="all" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css"/>
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/main.css" th:href="@{/css/main.css}"/>
    <link rel="stylesheet" type="text/css" media="all" href="../static/css/fontawesome.css"
          th:href="@{./css/fontawesome.css}"    />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    
    <style>
        body{
            padding-top: 50px;
        }
    </style>
    
</head>

<body class="layout-default">
<form class="hero is-fullheight is-medium doctor-container" action="ChiefStaffController" method="GET">
    <div class="columns is-centered">
        <div class="column is-half">
            <div class="box">
                <div class="has-text-centered">
                    <h2 class="is-size-3 has-text-weight-light">Chief of Staff</h2>
                </div>
                <div class="card-content">
                    <div class="field is-horizontal">
                        <div class="field-label is-normal">
                            <label class="label">First Name:</label>
                        </div>
                        <div class="field-body">
                            <div class="field is-expanded">
                                <div class="field">
                                    <p class="control is-expanded">
                                        
                                        <input class="input" type="text" 
                                               name="fname">
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="field is-horizontal">
                        <div class="field-label is-normal">
                            <label class="label">Second Name:</label>
                        </div>
                        <div class="field-body">
                            <div class="field is-expanded">
                                <div class="field">
                                    <p class="control is-expanded">
                                        
                                        <input class="input" type="text" 
                                               name="sname">
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="field is-horizontal">
                        <div class="field-label is-normal">
                            <label class="label">Other Name:</label>
                        </div>
                        <div class="field-body">
                            <div class="field is-expanded">
                                <div class="field">
                                    <p class="control is-expanded">
                                        
                                        <input class="input" type="text" 
                                               name="othername">
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="field is-horizontal">
                        <div class="field-label is-normal">
                            <label class="label">StaffId:</label>
                        </div>
                        <div class="field-body">
                            <div class="field is-expanded">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input class="input" type="text"                                               
                                               name="staffID">
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="field is-horizontal">
                        <div class="field-label is-normal">
                            <label class="label">NationalID:</label>
                        </div>
                        <div class="field-body">
                            <div class="field is-expanded">
                                <div class="field">
                                    <p class="control is-expanded">
                                        <input class="input" type="text"
                                               name="nationalID">
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
                                    <select name="gender">
                                        <option>Female</option>
                                        <option>Male</option>
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
                                    <input class="input" type="text" 
                                           name="role">
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
                                    <button class="button is-primary is-fullwidth">
                                        Save Details
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
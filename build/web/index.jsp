<%--
  ~ Copyright (c) 2019
  ~ Erick Ogaro
  --%>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Reception</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" media="all" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css"/>
    <link rel="stylesheet" type="text/css" media="all"
          href="../static/css/main.css" th:href="@{./css/main.css}"/>
    <link rel="stylesheet" type="text/css" media="all"
          href="../static/css/fontawesome.css" th:href="@{./css/fontawesome.css}"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
    
    <style>
        section{
            padding-top: 50px;
        }
        
        .error{
            display: none;
        }
    </style>
</head>
<body class="layout-default">
<section class="hero is-fullheight is-medium">
    <div class="columns is-centered">
        <div class="column is-two-fifths form-container">
            <div class="box">
                <div class="card-content">
                    <h2 class="is-size-2 has-text-grey-light has-text-weight-light">Login</h2>
                    <p class="error" id="error">Invalid Password or Username</p>
                    <div class="field">
                        <p class="control has-icons-left has-icons-right">
                            <input autocomplete=off class="input is-rounded" type="text" placeholder="Staff Id">
                            <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
    </span>
                        </p>
                    </div>
                    <div class="field">
                        <p class="control has-icons-left">
                            <input class="input is-rounded" type="password" placeholder="Password">
                            <span class="icon is-small is-left">
      <i class="fas fa-lock"></i>
    </span>
                        </p>
                    </div>
                    <div class="field">
                        <p class="control">
                            <button onclick="redirect()" class="button is-rounded is-primary is-medium is-fullwidth">
                                Login
                            </button>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
    
    <script>
        var count = 0;
        var error = document.getElementById('error');
    function redirect(){
        if(count <= 1){
            //show error
            error.style.color = "red";
            error.style.display = "inline-block";
        } else{
        window.location.href = 'http://localhost:8084/EgertonSanatorium/reception.jsp';
        }
        
        count++;
    }
    
</script>
</body>
</html>

<html>
<head>
    <title>Welcome Page</title>
    <link rel="stylesheet" type="text/css" media="all" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css"/>
 
</head>
 <body>
    <section class="hero is-fullheight is-primary is-bold">
         <div class="hero-body">
    <div class="container has-text-centered">
      <h1 class="title">
    <button onclick="redirect()" id="redirect" class="button is-primary is-inverted">Start Trial!</button>
      </h1>
    </div>
  </div>
        </section>
</body>

<script>
    function redirect(){
        window.location.href = 'http://localhost:8084/EgertonSanatorium';
    }
    
</script>
</html>
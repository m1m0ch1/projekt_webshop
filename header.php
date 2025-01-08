<!doctype html>
<html lang="hu" data-bs-theme="dark"   >
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">

    <!-- logo -->
    <a class="navbar-brand" href="#"><img src="logo.png" height="60" ></a>

    <!-- hamburger menu -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- menüpontok -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/">Főoldal</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="#">Kategória</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Kategória2</a>
        </li>
        
      </ul>

      <!-- keresés -->
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Keresés" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Keresés</button>
      </form>
      
    </div>
  </div>
</nav>
[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <form class="row g-3" action="/nova" method="post">
        <div class="col-md-6">
            <label for="name" class="form-label">Jméno a příjmení</label>
            <input type="text" name="jmeno" class="form-control" id="name" placeholder="Jméno a příjmení">
        </div>
        <div class="col-md-6">
            <label for="firma" class="form-label">Firma</label>
            <input type="text" name="firma" class="form-control" id="firma" placeholder="Firma">
        </div>
        <div class="col-md-12">
            <label for="ulice" class="form-label">Ulice</label>
            <input type="text" name="ulice" class="form-control" id="ulice" placeholder="Ulice">
        </div>
        <div class="col-md-6">
            <label for="obecPsc" class="form-label">Obec a psč</label>
            <input type="text" name="obecPsc" class="form-control" id="inputCity" placeholder="Obec a psč">
        </div>
        <div class="col-md-6">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" class="form-control" id="email" placeholder="email">
        </div>
        <div class="col-md-6">
            <label for="telefon" class="form-label">Telefon</label>
            <input type="tel" name="telefon" class="form-control" id="telefon" placeholder="Telefon">
        </div>
        <div class="col-md-6">
            <label for="web" class="form-label">Web</label>
            <input type="text" name="web" class="form-control" id="web" placeholder="Web">
        </div>

        <div class="col-12">
            <button type="submit" class="btn btn-primary">Přidat</button>
        </div>
    </form>
</div>
</body>
</html>
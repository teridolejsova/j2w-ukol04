[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="detail">
    <form class="row g-3" action="/smazat" method="post">
        <button type="submit" class="btn btn-primary">Smazat</button>
        <input type="hidden" name="id" class="form-control" id="web" value="${id}">
    </form>
    <div class="vizitka">
        [#if vizitka.jmeno?has_content]
            <div class="jmeno">${vizitka.jmeno}</div>
        [/#if]
        [#if vizitka.firma?has_content]
            <div class="firma">${vizitka.firma}</div>
        [/#if]
        <div class="udaje">
            <div class="adresa">
                [#if vizitka.ulice?has_content]
                    <div>${vizitka.ulice}</div>
                [/#if]
                [#if vizitka.obecPsc?has_content]
                    <div><span>${vizitka.obecPsc}</span></div>
                [/#if]
            </div>
            <div class="kontakty">
                [#if vizitka.email?has_content]
                    <div><i class="bi bi-at"></i> ${vizitka.email}</div>
                [/#if]
                [#if vizitka.cislo?has_content]
                    <div><i class="bi bi-phone"></i> ${vizitka.cislo}</div>
                [/#if]
                [#if vizitka.web?has_content]
                    <div><i class="bi bi-globe"></i> ${vizitka.web}</div>[/#if]
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${vizitka.celaAdresa}" width="100%"
                height="100%" frameborder="0"></iframe>
    </div>


    <nav>
        <a href="/">◂ zpět na seznam</a>
    </nav>

</div>
</body>
</html>

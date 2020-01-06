<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%-- Camps de les dades personals d'un entrivistat--%>

<h2>Dades personals</h2>

<label for="tractament">Tractament:</label>
<div class="input-group">
    <div id="tractament" class="input-group-prepend">
        <div class="input-group-text">
            <input type="radio" name="tractament" value="Senyor">Senyor
        </div>
        <div class="input-group-text">
            <input type="radio" name="tractament" value="Senyora">Senyora
        </div>
    </div>
</div>


<div class="form-group">
    <label>DNI:</label><input type="text" class="form-control" name="dni" value=""/>
</div>

<div class="form-group">
    <label>Nom:</label><input type="text" class="form-control" name="nom" value=""/>
</div>

<div class="form-group">
    <label>Llinatges:</label><input type="text" class="form-control" name="llinatges" value=""/>
</div>

<div class="form-group">
    <label>Correu:</label><input type="email" class="form-control" name="email" value=""/>
</div>

<div class="form-group">
    <label>Telefon:</label><input type="telefon" class="form-control" name="telefon" value=""/>
</div>
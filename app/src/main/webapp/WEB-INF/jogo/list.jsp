<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Jogos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <!-- Botão para voltar para a home -->
            <a href="https://8080-miguelmella-gamesspring-u3jgptp4psp.ws-us118.gitpod.io/" class="btn btn-secondary mb-3">Voltar para Home</a>
            <br>
            <h1>Jogos</h1>
            <a href="/jogo/insert" class="btn btn-primary">Novo Jogo</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Título</th>
                    <th>Categoria</th>
                    <th>Plataformas</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${jogos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.categoria.nome}</td>
                        <td>
                            <c:forEach var="p" varStatus="s" items="${item.plataformas}">
                                <c:if test="${!s.first}">, </c:if>${p.nome}
                            </c:forEach>
                        </td>
                        <td>
                            <a href="/jogo/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/jogo/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>

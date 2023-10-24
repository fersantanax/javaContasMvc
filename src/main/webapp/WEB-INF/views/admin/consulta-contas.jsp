<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema Contas - Consulta de Contas</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body>
	<!-- componente do menu do sistema -->
	<jsp:include page="/WEB-INF/views/admin/components/menu.jsp"></jsp:include>
	<div class="container mt-3">

		<h4>Consulta de Contas</h4>
		<p>Pesquise as contas cadastradas de acordo com um período de
			datas.</p>

		<form class="mt-2 mb-2">
			<div class="row">
				<div class="col-md-2">
					<label>Data de início:</label> <input type="date"
						class="form-control" />
				</div>
				<div class="col-md-2">
					<label>Data de fim:</label> <input type="date" class="form-control" />
				</div>
				<div class="col-md-8">
					<input type="submit" class="btn btn-success mt-4"
						value="Pesquisar contas" />
				</div>
			</div>
		</form>

		<div class="table-responsive mt-3">
			<table class="table table-sm">
				<thead>
					<tr>
						<th>Data</th>
						<th>Valor</th>
						<th>Tipo</th>
						<th>Nome</th>
						<th>Descrição</th>
						<th>Operações</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><a href="/javaContasMvc/admin/edicao-contas"
							class="btn btn-outline-primary btn-sm me-2"> Editar </a> <a
							href="/javaContasMvc/admin/exclusao-contas"
							class="btn btn-outline-danger btn-sm"> Excluir </a></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6">Quantidade de registros: 0</td>
					</tr>
				</tfoot>
			</table>
		</div>

	</div>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>


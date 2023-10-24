<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema Contas - Cadastro de Contas</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body>
	<!-- componente do menu do sistema -->
	<jsp:include page="/WEB-INF/views/admin/components/menu.jsp"></jsp:include>
	<div class="container mt-3">

		<h4>Cadastro de Contas</h4>
		<p>Preencha os campos para incluir uma conta a pagar ou receber.</p>

		<form class="mt-2 mb-2">

			<div class="row mb-2">

				<div class="col">
					<label>Nome da conta:</label> <input type="text"
						class="form-control" />
				</div>

				<div class="col">
					<label>Data da conta:</label> <input type="date"
						class="form-control" />
				</div>

				<div class="col">
					<label>Valor da conta:</label> <input type="text"
						class="form-control" />
				</div>

				<div class="col">
					<label>Tipo da conta:</label> <select class="form-select">
						<option value="">Selecione uma opção</option>
						<option value="1">Conta a receber</option>
						<option value="2">Conta a pagar</option>
					</select>
				</div>

			</div>

			<div class="row mb-2">
				<div class="col">
					<label>Descrição / observações da conta:</label>
					<textarea class="form-control"></textarea>
				</div>
			</div>

			<div class="row mb-2">
				<div class="col">
					<input type="submit" class="btn btn-success"
						value="Realizar Cadastro" /> <a
						href="/javaContasMvc/admin/consulta-contas" class="btn btn-light">
						Ir para a consulta </a>
				</div>
			</div>

		</form>

	</div>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

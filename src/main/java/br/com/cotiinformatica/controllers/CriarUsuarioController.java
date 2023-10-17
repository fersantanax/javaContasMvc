package br.com.cotiinformatica.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.entities.Usuario;
import br.com.cotiinformatica.repositories.UsuarioRepository;

@Controller
public class CriarUsuarioController {

	/*
	 * Método para abrir a página de cadastro de usuário
	 */
	@RequestMapping(value = "/criar-usuario")
	public ModelAndView criarUsuario() {
		// Abrindo a página no navegador
		// WEB-INF/views/criar-usuario.jsp
		ModelAndView modelAndView = new ModelAndView("criar-usuario");
		return modelAndView;
	}

	/*
	 * Método para capturar o SUBMIT POST do formulário da página de cadastro de
	 * usuário
	 */
	@RequestMapping(value = "/criar-usuario-post", method = RequestMethod.POST)
	public ModelAndView criarUsuarioPost(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView("criar-usuario");

		try {

			Usuario usuario = new Usuario();

			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));

			UsuarioRepository usuarioRepository = new UsuarioRepository();
			usuarioRepository.create(usuario);

			modelAndView.addObject("mensagem", "Parabéns, sua conta de usuário foi criada com sucesso!");
		} catch (Exception e) {
			modelAndView.addObject("mensagem", "Erro: " + e.getMessage());
		}

		return modelAndView;
	}
}

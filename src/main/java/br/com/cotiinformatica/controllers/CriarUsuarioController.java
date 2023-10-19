package br.com.cotiinformatica.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.entities.Usuario;
import br.com.cotiinformatica.helpers.Sha1CryptoHelper;
import br.com.cotiinformatica.repositories.UsuarioRepository;

@Controller
public class CriarUsuarioController {

	@RequestMapping(value = "/criar-usuario")
	public ModelAndView criarUsuario() {
		// Abrindo a página no navegador
		// WEB-INF/views/criar-usuario.jsp
		ModelAndView modelAndView = new ModelAndView("criar-usuario");
		return modelAndView;
	}

	@RequestMapping(value = "/criar-usuario-post", method = RequestMethod.POST)
	public ModelAndView criarUsuarioPost(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView("criar-usuario");

		try {

			Usuario usuario = new Usuario();

			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(Sha1CryptoHelper.getSha1Encrypt(request.getParameter("senha")));

			UsuarioRepository usuarioRepository = new UsuarioRepository();
			
			if(usuarioRepository.find(usuario.getEmail()) != null)
				throw new Exception("O email informado já está cadastrado. Tente outro.");
			
			usuarioRepository.create(usuario);

			modelAndView.addObject("mensagem_sucesso", "Parabéns, sua conta de usuário foi criada com sucesso!");
		} catch (Exception e) {
			modelAndView.addObject("mensagem_erro", "Erro: " + e.getMessage());
		}

		return modelAndView;
	}
}

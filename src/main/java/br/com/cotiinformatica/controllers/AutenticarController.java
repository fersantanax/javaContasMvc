package br.com.cotiinformatica.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AutenticarController {

	//mapeando a URL (rota) para exibir a página
	@RequestMapping(value = "/")
	public ModelAndView autenticar() {
		//definindo o nome da página que será exibida no navegador
		//WEB-INF/views/autenticar.jsp
		ModelAndView modelAndView = new ModelAndView("autenticar");
		return modelAndView;
	}	
}

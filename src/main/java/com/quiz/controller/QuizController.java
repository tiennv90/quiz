package com.quiz.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.quiz.model.Formular;
import com.quiz.model.Operator;
import com.quiz.util.Utils;

@Controller
@RequestMapping("/quiz")
public class QuizController {

	@RequestMapping(method = RequestMethod.GET)
	public String getQuiz(ModelMap model) {

		List<Formular> list = new ArrayList<Formular>();
		Random randomGenerator = new Random();

		for (int idx = 1; idx <= 10; ++idx) {

			int randomInt1 = randomGenerator.nextInt(100);
			int randomInt2 = randomGenerator.nextInt(100);
			int operator = randomGenerator.nextInt(3);

			Formular f = new Formular();
			f.setFirstParam(randomInt1);
			f.setSecondParam(randomInt2);

			f.setOperator(Utils.generateOperator(operator));
			list.add(f);
		}

		model.addAttribute("list", list);
		return "show";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String result(HttpServletRequest request, ModelMap model) {

		String[] firstParams = request.getParameterValues("firstParam");
		String[] secondParams = request.getParameterValues("secondParam");
		String[] operators = request.getParameterValues("operator");
		String[] results = request.getParameterValues("result");

		int i = 0;
		int score = 0;
		List<Formular> formulars = new ArrayList<Formular>();
		
		for (String result : results) {
			
			Formular formular = new Formular(Integer.valueOf(firstParams[i]), Integer.valueOf(secondParams[i]), Operator.getEnum(operators[i]));
			formular.setAnswer(Integer.valueOf(result));
			
			formular.setCorrect(formular.getActualResult() == formular.getAnswer());
			
			if (formular.isCorrect()) {
				score ++;
			}
			
			formulars.add(formular);
			i++;
			
		}
		
		model.addAttribute("formulars", formulars);
		model.addAttribute("score", score);
		
		return "result";
	}
}

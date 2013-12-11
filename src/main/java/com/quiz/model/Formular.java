package com.quiz.model;

import com.quiz.util.Utils;

public class Formular {

	private int firstParam;
	private int secondParam;
	private Operator operator;
	private int answer;
	private boolean correct;
	
	public Formular() {}
	
	public Formular(int first, int second, Operator oper) {
		this.firstParam = first;
		this.secondParam = second;
		this.operator = oper;
	}
	
	public Operator getOperator() {
		return operator;
	}

	public void setOperator(Operator operator) {
		this.operator = operator;
	}

	public int getFirstParam() {
		return firstParam;
	}

	public void setFirstParam(int firstParam) {
		this.firstParam = firstParam;
	}

	public int getSecondParam() {
		return secondParam;
	}

	public void setSecondParam(int secondParam) {
		this.secondParam = secondParam;
	}

	public boolean isCorrect() {
		return correct;
	}

	public void setCorrect(boolean correct) {
		this.correct = correct;
	}

	public int getActualResult() {
		return Utils.getResult(firstParam, secondParam, operator);
	}

	public int getAnswer() {
		return answer;
	}

	public void setAnswer(int answer) {
		this.answer = answer;
	}
}

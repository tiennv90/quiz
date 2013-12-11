package com.quiz.util;

import com.quiz.model.Operator;

public class Utils {
	
	public static Operator generateOperator(int random) {
		switch (random) {
			case 0:
				return Operator.ADDITION;
			case 1:
				return Operator.SUBTRACTION;
			case 2:
				return Operator.MULTIPLICATION;
			case 3:
				return Operator.DIVISION;
			default:
				return null;
		}
	}

	public static int getResult(int first, int second, Operator operator) {
		
		switch (operator) {
			case ADDITION:
				return first + second;
			case SUBTRACTION:
				return first - second;
			case MULTIPLICATION:
				return first * second;
			case DIVISION:
				return first / second;
			default:
				return 0;
		}
	}

	public static int getScore(boolean value) {
		return value ? 1  : 0;
	}
}

package com.quiz.model;

public enum Operator {
	ADDITION ("+"), 
	SUBTRACTION ("-"), 
	MULTIPLICATION ("*"), 
	DIVISION ("/");
	
	private final String value;
	
	Operator(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return this.value;
	}
	
    public static Operator getEnum(String value) {
        if(value == null)
            throw new IllegalArgumentException();
		for (Operator v : values())
            if(value.equalsIgnoreCase(v.getValue())) return v;
        throw new IllegalArgumentException();
    }
}

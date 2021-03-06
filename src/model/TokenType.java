package model;

public enum TokenType {
    INSTRUCTION, REGISTER, CONSTANT, REMAIN_SETTLE,
    FAKE_INSTRUCTION, LABEL, BORDER, ERROR_TOKEN, COMMENT,
    DATA_TYPE, ENDLINE, CONSTANT_STRING;

    @Override
    public String toString() {
        return name();
    }
}
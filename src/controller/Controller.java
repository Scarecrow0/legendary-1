package controller;

import javafx.stage.Stage;

public abstract class Controller {
    protected Stage primaryStage;

    public void setPrimaryStage(Stage primaryStage) {
        this.primaryStage = primaryStage;
    }
}

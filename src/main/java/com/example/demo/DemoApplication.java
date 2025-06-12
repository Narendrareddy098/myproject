package com.example.demo;

import static spark.Spark.*;

public class DemoApplication {
    public static void main(String[] args) {
        port(8080);
        get("/", (req, res) -> "Hello from Java App!");
    }
}

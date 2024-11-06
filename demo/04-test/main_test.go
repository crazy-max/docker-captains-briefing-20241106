package main

import (
	"fmt"
	"net/http"
	"net/http/httptest"
	"testing"
)

func TestHelloGo(t *testing.T) {
	req, err := http.NewRequest("GET", "/", nil)
	if err != nil {
		t.Fatal(err)
	}

	rr := httptest.NewRecorder()
	handler := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, Go!")
	})

	handler.ServeHTTP(rr, req)

	expected := "Hello, Go!"
	if rr.Body.String() != expected {
		t.Errorf("handler returned unexpected body: got %v want %v", rr.Body.String(), expected)
	}
}

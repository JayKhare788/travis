package main

import "testing"

func TestRun(t *testing.T) {
	expected := "Setting up Travis CI for golang projects"
	got := run()
	if expected != got {
		t.Fatalf("expected %v got %v", expected, got)
	}
}

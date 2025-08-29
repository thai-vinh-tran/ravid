package main

import (
    "encoding/json"
    "net/http"
    "os"
)

func main() {
    http.HandleFunc("/healthz", func(w http.ResponseWriter, r *http.Request) {
        w.WriteHeader(http.StatusOK)
        w.Write([]byte("OK"))
    })

    http.HandleFunc("/version", func(w http.ResponseWriter, r *http.Request) {
        version := os.Getenv("GIT_TAG")
        if version == "" {
            version = "unknown"
        }
        resp := map[string]string{"version": version}
        w.Header().Set("Content-Type", "application/json")
        json.NewEncoder(w).Encode(resp)
    })

    http.ListenAndServe(":6699", nil)
}
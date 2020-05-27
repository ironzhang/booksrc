package main

import (
	"fmt"
	"log"
	"net"
	"os"
	"time"
)

func main() {
	addr := "0.0.0.0:8000"
	if len(os.Args) > 1 {
		addr = os.Args[1]
	}

	ln, err := net.Listen("tcp", addr)
	if err != nil {
		log.Fatalf("net listen: %v", err)
	}
	defer ln.Close()

	for {
		conn, err := ln.Accept()
		if err != nil {
			log.Fatalf("listener accept: %v", err)
		}
		handle(conn)
	}
}

func handle(conn net.Conn) {
	defer conn.Close()
	fmt.Fprintf(conn, "%s\r\n", time.Now().Format(time.ANSIC))
}

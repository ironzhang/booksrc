package main

import (
	"fmt"
	"io"
	"log"
	"net"
	"os"
)

func main() {
	addr := "127.0.0.1:8000"
	if len(os.Args) > 1 {
		addr = os.Args[1]
	}

	conn, err := net.Dial("tcp", addr)
	if err != nil {
		log.Fatalf("net dial: %v", err)
	}
	defer conn.Close()

	for {
		var line [4096]byte
		n, err := conn.Read(line[:])
		if err == io.EOF {
			break
		} else if err != nil {
			log.Fatalf("conn read: %v", err)
		}
		fmt.Printf("%s", line[:n])
	}
}

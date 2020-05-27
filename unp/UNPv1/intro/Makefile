include ../Make.defines

PROGS = daytimetcpcli daytimetcpsrv

all: $(PROGS)

daytimetcpcli: daytimetcpcli.go
	$(GO) build ${CFLAGS} $^

daytimetcpsrv: daytimetcpsrv.go
	$(GO) build ${CFLAGS} $^

clean:
	rm -f ${PROGS}

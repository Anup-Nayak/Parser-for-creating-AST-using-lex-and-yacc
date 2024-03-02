.PHONY: clean

all:
	ocamlbuild main.native
	./main.native

clean:
	ocamlbuild -clean
	rm -f main.native
	rm -f _build
COMPILER=ocamlc
 
all: clean md

test: clean

md:
	$(COMPILER) -c md_ast.ml
	ocamlyacc parse.mly
	$(COMPILER) -c parse.mli
	$(COMPILER) -c parse.ml
	ocamllex lex.mll
	$(COMPILER) -o md mips_ast.cmo parse.cmo lex.cmo
	mkdir build
	mv *.cmo *.cmi parse.ml parse.mli lex.ml build

clean:
	rm -rf build/

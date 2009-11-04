all: clean index.html
index.html: integrity.txt
	@cat integrity.txt | ./htmlize > $@
integrity.txt:
	@wget http://github.com/integrity/integrity/raw/master/doc/integrity.txt
clean:
	@rm -f integrity.txt
	@rm -f index.html

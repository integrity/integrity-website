#all: clean index.html
index.html: README.md stylesheet/integrity.css
	@./htmlize README.md > $@
README.md:
	@wget http://github.com/integrity/integrity/raw/8a39afd504b53b39bf873d7c402a266fb69960f2/README.md
stylesheet/integrity.css: integrity.sass
	@sass integrity.sass $@
clean:
	@rm -rf .sass-cache
	@rm -f README.md
	@rm -f index.html
	@rm -f integrity.css

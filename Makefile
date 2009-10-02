#all: clean index.html
index.html: README.md stylesheet/integrity.css
	@./htmlize README.md > $@
README.md:
	@wget http://github.com/integrity/integrity/raw/0ba109e2a7046e5c36c8d9addde7a690cf387e24/README.md
stylesheet/integrity.css: integrity.sass
	@sass integrity.sass $@
clean:
	@rm -rf .sass-cache
	@rm -f README.md
	@rm -f index.html
	@rm -f integrity.css

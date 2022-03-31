.PHONY: image clean distclean

image:
	docker build -t usdo-ahead/mediawiki:latest .

clean:

distclean: clean
	docker rmi usdo-ahead/mediawiki:latest

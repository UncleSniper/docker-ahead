.PHONY: image clean distclean

image:
	docker build -t usdo-ahead/postgres:latest .

clean:

distclean: clean
	docker rmi usdo-ahead/postgres:latest

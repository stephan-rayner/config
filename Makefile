config:
	cd vim; make up
	cd git; make up
	cd fish; make up

clean:
	cd vim; make clean
	cd git; make clean
	cd fish; make clean
update: clean config

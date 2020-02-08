build:
	docker build -t autoscore:1.0 .

run:
	docker run -it -p 81:81 -v /`pwd`:/home/workspace autoscore:1.0 flask run -h 0.0.0.0 -p 81
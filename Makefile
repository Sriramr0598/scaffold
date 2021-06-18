install:
	pip install --upgrade pip &&\
		pip install -r req.txt
		
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello testhello.py
	
all: install lint format test
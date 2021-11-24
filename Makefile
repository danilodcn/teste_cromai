TEST_TARGET=./tests
POETRY=poetry run
FLAKE8_FLAGS=--ignore=W503,E501
ISORT_FLAGS=--profile=black --lines-after-imports=2

## @ install
.PHONY: install-deps install-deps-dev
install-deps:	## install all product dependences
	poetry install --no-dev

install-deps-dev: ## install all developement dependences
	poetry install

install:  install-deps install-deps-dev

## @ run
.PHONY: run
run: ## run the application
	bash app/app.sh 1000 pid

.PHONY: help
help:
	@${POETRY} python help.py

## @ tests
.PHONY: tests coverage stats
tests: ## run the tests
	${POETRY} python -m unittest discover ${TEST_TARGET} -v
coverage: ## run the coverage of tests
	${POETRY} coverage run --source=app -m unittest discover -s tests -v
stats: coverage ## run coverage and show the stats for coverage
	${POETRY} coverage report
	${POETRY} coverage html

## @ analitics
.PHONY: lint_black flake mypy lint_isort analitics
lint_black:
	${POETRY} black --check .
flake: 
	${POETRY} flake8 ${FLAKE8_FLAGS} .
mypy: 
	${POETRY} mypy .
lint_isort:
	${POETRY} isort ${ISORT_FLAGS} --check .
analitics: lint_black flake mypy lint_isort ## run the sintatic analicts: black, flake8, mypy, isort

## @ formatat
.PHONY: black isort format
black:
	${POETRY} black .
isort:
	${POETRY} isort ${ISORT_FLAGS} .
format: isort black ## run the format in files in path using black and isort
MAKEFLAGS += --silent

run:
	# Perform setup, if not already done.
	[ -d .venv ] || make venv
	# Execute main python entrypoint.
	cd src && ./main.py

venv:
	# Create new virtual environment for python, if not already done.
	[ -d .venv ] || python3 -m venv .venv
	# Install python dependencies.
	.venv/bin/pip3 install -r requirements.txt
	# Create directories.
	[ -d tmp ] || mkdir tmp
	[ -d lib ] || mkdir lib

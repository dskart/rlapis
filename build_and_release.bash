#!/bin/bash

python setup.py sdist  
pip wheel --no-index --no-deps --wheel-dir dist dist/*.tar.gz

twine upload -u $RLAPIS_PYPI_USERNAME -p $RLAPIS_PYPI_PASSWORD  dist/*
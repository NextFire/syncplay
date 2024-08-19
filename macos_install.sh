#!/bin/sh -xe
uv venv -p 3.12
uv pip install -r requirements.txt -r requirements_gui.txt pip 'setuptools<71'
uv run python3 buildPy2app.py py2app
rm -rf /Applications/Syncplay.app
mv dist/Syncplay.app /Applications/

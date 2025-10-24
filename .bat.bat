@echo off
title Vitri - Frontend & Backend

REM Frontend (Vite)
cd /d "%~dp0vitriFrontend-semillero"
start /min "Frontend" cmd /k "npm run dev"

REM Abrir navegador automáticamente
start "" http://localhost:5173/

REM Backend (Flask)
cd /d "%~dp0vitriBackend-semillero"
call .venv\Scripts\activate
cd app
set FLASK_APP=app.py
start /min "Backend" cmd /k "flask run --debug"
 
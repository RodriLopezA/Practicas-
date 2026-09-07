@echo off
cd /d "%~dp0"

:: Agrega todos los cambios detectados
git add .

:: Revisa si hay cambios pendientes antes de hacer commit
git diff-index --quiet HEAD
if %errorlevel% neq 0 (
    git commit -m "Auto-guardado automatico: %date% %time%"
    git push origin main
)
@echo off
Title Buscador Personalizado
::Para que formaté en UTF8
chcp 65001 > nul

::Colores de la terminal
::color 0A
color 0E

:: Menú principal
:buscador
cls
echo ========================================
echo ======== Buscador Personalizado ========
echo ========================================
echo.
echo ¿Qué quieres hacer?
echo.
echo 1. Ir a entreunosyceros.
echo.
echo 2. Internet
echo.
echo 3. Temporizador para apagar el equipo.
echo.
echo 4. Mantenimiento del sistema.
echo.
echo 5. Salir del Buscador.
echo.
echo.
echo.

set /p opcion=Escribe el número de opción y pulsa INTRO: 

if "%opcion%"=="1" goto MiWeb
if "%opcion%"=="2" goto Internet
if "%opcion%"=="3" goto Temporizador
if "%opcion%"=="4" goto Mantenimiento
if "%opcion%"=="5" goto Salir
goto error

:MiWeb
cls
start https://entreunosyceros.net/
goto buscador

:Temporizador
cls
echo Elige en cuánto tiempo quieres apagar tu PC.
set /p tiempo=En cuanto tiempo quieres apagar este equipo (en segundos): 
echo Gracias... ahora pulsa cualquier tecla para ver el resultado.
shutdown -s -t %tiempo% -c "Tu PC se va a apagar"
pause >nul
goto buscador

:Salir
cls
exit

::Opción de mantenimiento
:Mantenimiento
cls
echo ===============================
echo == Mantenimiento del sistema ==
echo ===============================
echo.
echo 6. Limpiar archivos temporales.
echo.
echo 7. Verificar y reparar errores del disco.
echo.
echo 8. Actualizar Windows.
echo.
echo 9. Ver la versión de Windows y datos del sistema.
echo.
echo 10. Ver el administrador de dispositivos.
echo.
echo 11. Tareas programadas de Windows.
echo.
echo 12. Configuración rápida de Windows.
echo.
echo 13. Realizar una copia de seguridad del sistema.
echo.
echo 14. Restaurar el sistema a un punto anterior.
echo.
echo 15. Desfragmentar el disco duro.
echo.
echo 16. Realizar un escaneo de seguridad.
echo.
echo 17. Administrar servicios del sistema.
echo.
echo 18. Limpiar el Registro de Windows.
echo.
echo 19. Administrar programas de inicio.
echo.
echo 20. Verificar la integridad de archivos del sistema.
echo.
echo 21. Realizar un análisis de disco en busca de sectores defectuosos.
echo.
echo 22. Volver al Buscador (primera página).
echo.
set /p opcion=Escribe el número de opción y pulsa INTRO: 


if "%opcion%"=="6" goto LimpiarTemp
if "%opcion%"=="7" goto VerificarDisco
if "%opcion%"=="8" goto ActualizarWindows
if "%opcion%"=="9" goto Winver
if "%opcion%"=="10" goto AdmDis
if "%opcion%"=="11" goto TarePro
if "%opcion%"=="12" goto ConfigSys
if "%opcion%"=="13" goto CopiaSeguridad
if "%opcion%"=="14" goto RestaurarSistema
if "%opcion%"=="15" goto Desfragmentar
if "%opcion%"=="16" goto EscaneoSeguridad
if "%opcion%"=="17" goto AdminServicios
if "%opcion%"=="18" goto LimpiarRegistro
if "%opcion%"=="19" goto AdminProgramasInicio
if "%opcion%"=="20" goto VerificarIntegridad
if "%opcion%"=="21" goto AnalisisDisco
if "%opcion%"=="22" goto buscador
goto error

:LimpiarTemp
cls
echo Realizando limpieza de archivos temporales...

rem Comando para limpiar archivos temporales en Windows
echo Limpiando archivos temporales...
del /q /s %TEMP%\*.*

rem Comando para limpiar archivos temporales de Internet Explorer
echo Limpiando archivos temporales de Internet Explorer...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8

rem Comando para limpiar archivos temporales de Windows Update
echo Limpiando archivos temporales de Windows Update...
RunDll32.exe DismApi.dll, DiskCleanup

echo Limpieza de archivos temporales completada.
pause
goto Mantenimiento

:VerificarDisco
cls
echo Verificando y reparando errores del disco...

rem Comando para verificar y reparar errores en el disco C:
echo Verificando y reparando errores en el disco C:
chkdsk C: /f /r /x

rem Comando para verificar y reparar errores en el disco D:
echo Verificando y reparando errores en el disco D:
chkdsk D: /f /r /x

echo Verificación y reparación de errores del disco completada.
pause
goto Mantenimiento

:ActualizarWindows
cls
echo Verificando actualizaciones de Windows...

rem Comando para verificar actualizaciones de Windows
echo Verificando actualizaciones...
wuauclt /detectnow /updatenow

echo Verificación y actualización de Windows completada.
pause
goto Mantenimiento

:Winver
cls
echo Estamos en %CD%
systeminfo
pause
goto Mantenimiento

:AdmDis
cls
diskmgmt.msc 
goto Mantenimiento

:TarePro
cls
control schedtasks
goto Mantenimiento

:ConfigSys
cls
msconfig
goto Mantenimiento

:CopiaSeguridad
cls
echo Realizando copia de seguridad del sistema...

echo Por favor, conecta el disco externo o USB para realizar la copia de seguridad.
echo.
echo Asegúrate de que el disco tenga suficiente espacio disponible y esté formateado correctamente.
echo.
pause

rem Cambia la siguiente línea con el comando necesario para copiar los archivos a la ubicación deseada.
rem xcopy /s /e /c /i /h C:\Datos D:\CopiaSeguridad

echo Copia de seguridad completada.
pause
goto Mantenimiento

:RestaurarSistema
cls
echo Restaurando el sistema a un punto anterior...

rem Coloca aquí los comandos necesarios para restaurar el sistema a un punto anterior
rem systemrestore /restorepoint "Nombre del punto de restauración"

echo Restauración completada.
pause
goto Mantenimiento

:Desfragmentar
cls
echo Desfragmentando el disco duro...

rem Coloca aquí los comandos necesarios para desfragmentar el disco duro
defrag C: /r /w

echo Desfragmentación completada.
pause
goto Mantenimiento

:EscaneoSeguridad
cls
echo Realizando escaneo de seguridad...

rem Coloca aquí los comandos necesarios para realizar un escaneo de seguridad
rem antivirus.exe --scan --full

echo Escaneo de seguridad completado.
pause
goto Mantenimiento

:AdminServicios
cls
echo Administrando servicios del sistema...

rem Coloca aquí los comandos necesarios para administrar los servicios del sistema
rem net start "Nombre del servicio" / net stop "Nombre del servicio" / net restart "Nombre del servicio"

echo Administración de servicios completada.
pause
goto Mantenimiento

:LimpiarRegistro
cls
echo Limpiando el Registro de Windows...

rem Coloca aquí los comandos necesarios para limpiar el Registro de Windows
rem regedit /s "ruta_al_archivo_de_limpieza.reg"

echo Limpieza del Registro completada.
pause
goto Mantenimiento

:AdminProgramasInicio
cls
echo Administrando programas de inicio...

rem Coloca aquí los comandos necesarios para administrar los programas de inicio
msconfig /launch

echo Administración de programas de inicio completada.
pause
goto Mantenimiento

:VerificarIntegridad
cls
echo Verificando la integridad de archivos del sistema...

rem Coloca aquí los comandos necesarios para verificar la integridad de archivos del sistema
sfc /scannow

echo Verificación de integridad completada.
pause
goto Mantenimiento

:AnalisisDisco
cls
echo Realizando análisis de disco en busca de sectores defectuosos...

rem Coloca aquí los comandos necesarios para realizar un análisis de disco
chkdsk C: /f /r /x

echo Análisis de disco completado.
pause
goto Mantenimiento


::Opción de internet
:Internet
cls
echo ==============================
echo ==== Opciones de internet ====
echo ==============================
echo.
echo 23. Buscar en Google.
echo.
echo 24. Buscar Imágenes en Google.
echo.
echo 25. Ver las Noticias en Google.
echo.
echo 26. Ir a Grupos en Google.
echo.
echo 27. Búsqueda de Libros en Google.
echo.
echo 28. Classroom de google.
echo.
echo 29. Volver al Buscador (primera página).
echo.

set /p opcion=Escribe el número de opción y pulsa INTRO: 
 

if "%opcion%"=="23" goto busquedaWeb
if "%opcion%"=="24" goto Imagenes
if "%opcion%"=="25" goto Noticias
if "%opcion%"=="26" goto Grupos
if "%opcion%"=="27" goto Libros
if "%opcion%"=="28" goto Classroom
if "%opcion%"=="29" goto buscador

:busquedaWeb
cls
set /p "criterio=Buscar en Google: "

rem Elimina los espacios adicionales del criterio de búsqueda
set "criterio=%criterio: =%"

if not defined criterio (
    echo El criterio de búsqueda está vacío. Por favor, ingresa un criterio válido.
    pause
    goto Internet
)

echo Abriendo resultados de búsqueda para "%criterio%"...
start "Búsqueda en Google" "https://www.google.com/search?q=%criterio%"

pause
goto Internet

:Imagenes
cls
set /p "criterio=Buscar imágenes en Google: "
if not defined criterio (
    echo El criterio de búsqueda está vacío. Por favor, ingresa un criterio válido.
    pause
    goto Internet
)
echo Abriendo resultados de búsqueda de imágenes para "%criterio%"...
start "Búsqueda de imágenes en Google" "https://www.google.com/search?tbm=isch&q=%criterio%"
goto Internet

:Noticias
cls
set /p "criterio=Buscar noticias en Google: "
if not defined criterio (
    echo El criterio de búsqueda está vacío. Por favor, ingresa un criterio válido.
    pause
    goto Internet
)
echo Abriendo resultados de búsqueda de noticias para "%criterio%"...
start "Noticias en Google" "https://news.google.com/search?q=%criterio%"
goto Internet

:Grupos
cls
set /p "criterio=Buscar grupos en Google: "
if not defined criterio (
    echo El criterio de búsqueda está vacío. Por favor, ingresa un criterio válido.
    pause
    goto Internet
)
echo Abriendo resultados de búsqueda de grupos para "%criterio%"...
start "Grupos en Google" "https://groups.google.com/search?q=%criterio%"
goto Internet

:Libros
cls
set /p "criterio=Buscar libros en Google: "
if not defined criterio (
    echo El criterio de búsqueda está vacío. Por favor, ingresa un criterio válido.
    pause
    goto Internet
)
echo Abriendo resultados de búsqueda de libros para "%criterio%"...
start "Búsqueda de libros en Google" "https://books.google.com/books?q=%criterio%"
goto Internet

:Classroom
cls
start "Google Classroom" "https://classroom.google.com/"
goto Internet

:error
cls
echo La opción elegida no existe. Prueba con otra. Gracias.
pause >nul
goto buscador

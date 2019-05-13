@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  tika startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and TIKA_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\tika-1.0-SNAPSHOT.jar;%APP_HOME%\lib\tika-parsers-1.13.jar;%APP_HOME%\lib\vorbis-java-tika-0.8.jar;%APP_HOME%\lib\tika-core-1.13.jar;%APP_HOME%\lib\jackson-core-2.9.6.jar;%APP_HOME%\lib\slf4j-nop-1.7.25.jar;%APP_HOME%\lib\gson-2.2.4.jar;%APP_HOME%\lib\jackcess-encrypt-2.1.1.jar;%APP_HOME%\lib\jackcess-2.1.3.jar;%APP_HOME%\lib\jmatio-1.0.jar;%APP_HOME%\lib\apache-mime4j-dom-0.7.2.jar;%APP_HOME%\lib\apache-mime4j-core-0.7.2.jar;%APP_HOME%\lib\commons-compress-1.11.jar;%APP_HOME%\lib\xz-1.5.jar;%APP_HOME%\lib\poi-scratchpad-3.15-beta1.jar;%APP_HOME%\lib\poi-ooxml-3.15-beta1.jar;%APP_HOME%\lib\poi-3.15-beta1.jar;%APP_HOME%\lib\netcdf4-4.5.5.jar;%APP_HOME%\lib\grib-4.5.5.jar;%APP_HOME%\lib\cdm-4.5.5.jar;%APP_HOME%\lib\httpservices-4.5.5.jar;%APP_HOME%\lib\httpclient-4.2.6.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\pdfbox-tools-2.0.1.jar;%APP_HOME%\lib\pdfbox-debugger-2.0.1.jar;%APP_HOME%\lib\pdfbox-2.0.1.jar;%APP_HOME%\lib\jempbox-1.8.12.jar;%APP_HOME%\lib\bcmail-jdk15on-1.54.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.54.jar;%APP_HOME%\lib\bcprov-jdk15on-1.54.jar;%APP_HOME%\lib\tagsoup-1.2.1.jar;%APP_HOME%\lib\asm-5.0.4.jar;%APP_HOME%\lib\isoparser-1.1.18.jar;%APP_HOME%\lib\metadata-extractor-2.8.1.jar;%APP_HOME%\lib\boilerpipe-1.1.0.jar;%APP_HOME%\lib\rome-1.5.1.jar;%APP_HOME%\lib\vorbis-java-core-0.8.jar;%APP_HOME%\lib\juniversalchardet-1.0.3.jar;%APP_HOME%\lib\jhighlight-1.0.2.jar;%APP_HOME%\lib\java-libpst-0.8.1.jar;%APP_HOME%\lib\junrar-0.7.jar;%APP_HOME%\lib\cxf-rt-rs-client-3.0.3.jar;%APP_HOME%\lib\opennlp-tools-1.5.3.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\json-simple-1.1.1.jar;%APP_HOME%\lib\json-20140107.jar;%APP_HOME%\lib\commons-csv-1.0.jar;%APP_HOME%\lib\sis-netcdf-0.6.jar;%APP_HOME%\lib\sis-storage-0.6.jar;%APP_HOME%\lib\sis-referencing-0.6.jar;%APP_HOME%\lib\sis-metadata-0.6.jar;%APP_HOME%\lib\sis-utility-0.6.jar;%APP_HOME%\lib\geoapi-3.0.0.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.7.jar;%APP_HOME%\lib\quartz-2.2.0.jar;%APP_HOME%\lib\ehcache-core-2.6.2.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\fontbox-2.0.1.jar;%APP_HOME%\lib\commons-vfs2-2.0.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\poi-ooxml-schemas-3.15-beta1.jar;%APP_HOME%\lib\curvesapi-1.03.jar;%APP_HOME%\lib\xmpcore-5.1.2.jar;%APP_HOME%\lib\rome-utils-1.5.1.jar;%APP_HOME%\lib\commons-logging-api-1.1.jar;%APP_HOME%\lib\cxf-rt-frontend-jaxrs-3.0.3.jar;%APP_HOME%\lib\cxf-rt-transports-http-3.0.3.jar;%APP_HOME%\lib\cxf-core-3.0.3.jar;%APP_HOME%\lib\opennlp-maxent-3.0.3.jar;%APP_HOME%\lib\jwnl-1.3.3.jar;%APP_HOME%\lib\udunits-4.5.5.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\jna-4.1.0.jar;%APP_HOME%\lib\protobuf-java-2.5.0.jar;%APP_HOME%\lib\jdom2-2.0.4.jar;%APP_HOME%\lib\jsoup-1.7.2.jar;%APP_HOME%\lib\jj2000-5.2.jar;%APP_HOME%\lib\bzip2-0.9.1.jar;%APP_HOME%\lib\httpmime-4.2.6.jar;%APP_HOME%\lib\httpcore-4.2.5.jar;%APP_HOME%\lib\joda-time-2.2.jar;%APP_HOME%\lib\guava-17.0.jar;%APP_HOME%\lib\jcommander-1.35.jar;%APP_HOME%\lib\jsr-275-0.9.3.jar;%APP_HOME%\lib\xmlbeans-2.6.0.jar;%APP_HOME%\lib\maven-scm-provider-svnexe-1.4.jar;%APP_HOME%\lib\maven-scm-provider-svn-commons-1.4.jar;%APP_HOME%\lib\maven-scm-api-1.4.jar;%APP_HOME%\lib\woodstox-core-asl-4.4.1.jar;%APP_HOME%\lib\xmlschema-core-2.1.0.jar;%APP_HOME%\lib\javax.ws.rs-api-2.0.1.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\c3p0-0.9.1.1.jar;%APP_HOME%\lib\plexus-utils-1.5.6.jar;%APP_HOME%\lib\regexp-1.3.jar;%APP_HOME%\lib\stax2-api-3.1.4.jar

@rem Execute tika
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %TIKA_OPTS%  -classpath "%CLASSPATH%" tika.App %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable TIKA_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%TIKA_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega

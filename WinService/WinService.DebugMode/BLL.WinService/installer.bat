﻿@echo off

REM The following directory is for .NET 4.0
set dotNetFX4=%SystemRoot%\Microsoft.NET\Framework\v4.0.30319
set installUtil=%dotNetFX4%\InstallUtil.exe
set batchFolder=%~dp0

echo InstallUtil:%installUtil%
echo BatchFolder:%batchFolder%

::pause
::set PATH=%PATH%;%dotNetFX4%
set serviceName=MqSenderService.exe
set servicePatch=%batchFolder%%serviceName%

echo Service:%servicePatch%
echo Installing %serviceName%...
echo ---------------------------------------------------
%installUtil% /i %servicePatch%
echo ---------------------------------------------------
echo Done.
pause
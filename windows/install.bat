@rem echo %~dp0

@rem copy the directory into 
@rem

echo %USERNAME% 
echo %USERPROFILE%
echo %USERPROFILE%

@rem in vim to use :echo expand('%:p') 
@rem to use :echo &rtp to know where to put the files
@rem
xcopy %~dp0\vim\.vimrc    %USERPROFILE%\ /s /i
xcopy %~dp0\vim\.vim\*    %USERPROFILE%\vimfiles /s /i

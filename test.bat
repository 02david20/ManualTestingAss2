g++ main.cpp -o main
cls
     type nul >log.txt
     set testDir=%cd%\testcase\
     set resultDir=%cd%\testcase\result\
     set filetype=.txt
     set /A i = 1
     set /A num = 100
cls
set  flag=true
set state=true
:Loop
     cls
     if %i% == %num% goto endLoop
     Del save.txt && type NUL > save.txt&&set testName=%testDir%test%i%%filetype%&&set resName=%resultDir%res%i%%filetype%
     main.exe testname>save.txt
     cls
     fc save.txt %resName%>>log.txt
     set /A i+=1
     goto Loop
:endLoop 
Del save.txt

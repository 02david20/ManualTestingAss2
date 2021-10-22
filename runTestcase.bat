g++ main.cpp -o main
cls
     set testDir=%cd%\testcase\
     set resultDir=%cd%\testcase\result\
     set filetype=.txt
     set /A i = 1
     set /A num = 100
cls
:Loop
     cls
     if %i% == %num% goto endLoop
     cls
     set testName=%testDir%test%i%%filetype%
     set resName=%resultDir%res%i%%filetype%
     main.exe %testName% > %resName%
     set /A i+=1
     goTo Loop
     cls
:endLoop 
cls
echo done!

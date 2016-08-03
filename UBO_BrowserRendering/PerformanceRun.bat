REM This bat file is used for creating performance reports and log file for UBo project. 
FOR /f %%a IN ('WMIC OS GET LocalDateTime ^| FIND "."') DO SET DTS=%%a
SET DateTime=%DTS:~0,4%-%DTS:~4,2%-%DTS:~6,2%_%DTS:~8,2%-%DTS:~10,2%-%DTS:~12,2%
cd C:\Users\shahc1\Desktop\Performance\apache-jmeter-3.0\bin
jmeter -n -t UBO_performance.jmx -l ubo%DateTime%.log -e -o UBOPerformanceReport%DateTime%
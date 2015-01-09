'function declarations
DECLARE FUNCTION byteSum# (a$)

'error handler
ON ERROR GOTO errs


'main
CLS
COLOR 15
PRINT "File Byte Sum"
COLOR 7
PRINT "-------------"
PRINT
COLOR 14

'get file details
INPUT "File"; file$

'verify it exists
OPEN "I", #1, file$
CLOSE #1

'open for byte sum
OPEN "B", #1, file$

'get file length
length& = LOF(1)
PRINT "File size ="; length&; "bytes"

'prepare for file read
SEEK #1, 1
left& = length&
block& = 4 * 1024

'sum up all bytes
WHILE left& > 0
IF left& >= block& THEN fetch& = block& ELSE fetch& = left&
left& = left& - fetch&
LOCATE 6, 1
PRINT left&; " bytes remaining"; SPACE$(20)
data$ = INPUT$(fetch&, #1)
sum# = sum# + byteSum#(data$)
WEND

'close the file
CLOSE #1

'print checksum
COLOR 12
PRINT "Checksum:"; sum#,
COLOR 11
PRINT "["; HEX$(sum#); "h]"
COLOR 7
SYSTEM

errs:
CLOSE #1
PRINT "File not found."
SYSTEM

FUNCTION byteSum# (a$)
sm# = 0
FOR i% = 1 TO LEN(a$)
sm# = sm# + ASC(MID$(a$, i%, 1))
NEXT
byteSum# = sm#
END FUNCTION


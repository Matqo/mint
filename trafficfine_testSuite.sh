#Testsuite
pass=0
fail=0

#Test Case 1, written by: Martin Futas X00111325
#Inputs:	Limit:30		Speed:25
#Expected Output: EUR 0
#Actual Output: EUR 0
a=$(java trafficfine 25 30)
echo Test Case 1 $a
if [ "$a" = "EUR 0" ];
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

#Test Case 2 written by Glen Dowling X00112791 
#Inputs:	Limit:30		Speed:45
#Expected Output: EUR 80
#Actual Output: EUR 80
b=$(java trafficfine 45 30)
echo Test Case 2 $b
if [ "$b" = "EUR 80" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

#Test Case 3 written by Glen Dowling X00112791 
#Inputs:	Limit:30		Speed:75
#Expected Output: EUR 100
#Actual Output: EUR 100
c=$(java trafficfine 75 30)
echo Test Case 3 $c
if [ "$c" = "EUR 100" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

#Test Case 4, written by: Martin Futas X00111325
#Inputs:	Limit:30		Speed:101
#Expected Output: SUSPEND
#Actual Output: 100
d=$(java trafficfine 101 30) 
echo Test Case 4 $d
if [ "$d" = "SUSPEND" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

#Test Case 5
#Inputs:	Limit:50		Speed:45
#Expected Output: EUR 0
#Actual Output: EUR 0
e=$(java trafficfine 45 50)
echo Test Case 5 $e
if [ "$e" = "EUR 0" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

#Test Case 6 written by Glen Dowling X00112791  
#Inputs:	Limit:50		Speed:70
#Expected Output: EUR 100
#Actual Output: EUR 150
f=$(java trafficfine 70 50)
echo Test Case 6 $f
if [ "$f" = "EUR 100" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

#Test Case 7, written by: Martin Futas X00111325
#Inputs:	Limit:50		Speed:100
#Expected Output: EUR 150
#Actual Output: EUR 150
g=$(java trafficfine 100 50)
echo Test Case 7 $g
if [ "$g" = "EUR 150" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

#Test Case 8
#Inputs:	Limit:50		Speed:121
#Expected Output: SUSPEND
#Actual Output: SUSPEND
h=$(java trafficfine 121 50)
echo Test Case 8 $h
if [ "$h" = "SUSPEND" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

#Test Case 9 ------ GLITCH
#Inputs:	Limit:120		Speed:120
#Expected Output: EUR 0
#Actual Output: EUR 250
i=$(java trafficfine 120 120)
echo Test Case 9 $i
if [ "$i" = "EUR 0" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

#Test Case 10, written by: Martin Futas X00111325
#Inputs:	Limit:140		Speed:140
#Expected Output: Invalid Input
#Actual Output: *NO OUTPUT*
j=$(java trafficfine 140 140)
echo Test Case 10 $j
if [ "$j" = "Invalid Input" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi



echo ========================================================================
echo Test Suite Summary:
echo ========================================================================
echo Passed: $pass
echo Failed: $fail

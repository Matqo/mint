#Testsuite_V2
pass=0
fail=0

#Each Test Case corresponds to each unique path, eg. Test Case 1 = Path no.1

echo Test Case 1
#Inputs:	Limit:30		Speed:105
#Expected Output: SUSPEND
#Actual Output: 
a=$(java trafficfine_v2 105 30)
echo Test Case 1 $a
if [ "$a" = "SUSPEND" ];
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 2
#Inputs:	Limit:30		Speed:75
#Expected Output: EUR 100
#Actual Output: 
b=$(java trafficfine_v2 75 30)
echo Test Case 2 $b
if [ "$b" = "EUR 100" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 3
#Inputs:	Limit:30		Speed:75
#Expected Output: EUR 80
#Actual Output: 
c=$(java trafficfine_v2 40 30)
echo Test Case 3 $c
if [ "$c" = "EUR 80" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 4
#Inputs:	Limit:30		Speed:20
#Expected Output: EUR 0
#Actual Output: 
d=$(java trafficfine_v2 20 30) 
echo Test Case 4 $d
if [ "$d" = "EUR 0" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 5
#Inputs:	Limit:50		Speed:125
#Expected Output: SUSPEND
#Actual Output:
e=$(java trafficfine_v2 125 50)
echo Test Case 5 $e
if [ "$e" = "SUSPEND" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 6
#Inputs:	Limit:50		Speed:90
#Expected Output: EUR 150
#Actual Output:
f=$(java trafficfine_v2 90 50)
echo Test Case 6 $f
if [ "$f" = "EUR 150" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 7
#Inputs:	Limit:50		Speed:70
#Expected Output: EUR 100
#Actual Output: 
g=$(java trafficfine_v2 70 50)
echo Test Case 7 $g
if [ "$g" = "EUR 100" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 8
#Inputs:	Limit:50		Speed:40
#Expected Output: EUR 0
#Actual Output:
h=$(java trafficfine_v2 40 50)
echo Test Case 8 $h
if [ "$h" = "EUR 0" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 9
#Inputs:	Limit:120		Speed:210
#Expected Output: EUR 0
#Actual Output: EUR 250
i=$(java trafficfine_v2 210 120)
echo Test Case 9 $i
if [ "$i" = "SUSPEND" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 10
#Inputs:	Limit:120		Speed:150
#Expected Output: EUR 250
#Actual Output:
j=$(java trafficfine_v2 150 120)
echo Test Case 10 $j
if [ "$j" = "EUR 250" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 11
#Inputs:	Limit:120		Speed:110
#Expected Output: EUR 250
#Actual Output:
k=$(java trafficfine_v2 150 120)
echo Test Case 10 $k
if [ "$k" = "EUR 0" ]
then 
pass=$((pass+1))
else
fail=$((fail+1))
fi

echo Test Case 12
#Inputs:	Limit:140		Speed:150
#Expected Output: Invalid limit specified
#Actual Output:
l=$(java trafficfine_v2 150 140)
echo Test Case 10 $l
if [ "$l" = "Invalid limit specified" ]
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

#Paths
#1: 1,2,3,24
#2: 1,2,4,5,24
#3: 1,2,4,6,7,24
#4: 1,2,4,6,8,24
#5: 1,9,10,11,24
#6: 1,9,10,12,13,24
#7: 1,9,10,12,14,15,24,
#8: 1,9,10,13,14,16,24,
#9: 1,9,17,18,19,24
#10: 1,9,17,18,20,22,24
#11: 1,9,17,18,20,21,24
#12: 1,9,17,23,24

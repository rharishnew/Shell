#!/bin/bash
# <35 fail, <50 first class, <60 second class
# <75 first class 

echo "please enter the marks"
read marks

if [ $marks -lt 33 ]; then
    echo "fail"
elif [ $marks -lt 50 ]; then 
    echo "third class"
elif [ $marks -lt 60 ]; then 
    echo "second class"
elif [ $marks -lt 75 ]; then 
    echo "first class"
else 
    echo "distintion" 
fi
    echo "end"


           
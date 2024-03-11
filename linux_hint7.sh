#!/bin/bash
echo Enter uname
read uname
echo Enter password
read password
if [[( $uname == "admin" && $password == "123" )]];then
echo OK
else
echo FAIL
fi

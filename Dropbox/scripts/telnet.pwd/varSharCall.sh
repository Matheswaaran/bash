#!/bin/bash
call1 () {
echo type something....
read a
}
call2 () {
echo $a
}
call1
call2

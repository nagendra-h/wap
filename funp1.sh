
function f1()
{
	echo $1
	val=$2
	echo $val
	local v1=$1
	echo $v1
}
f1 Hii hello
echo $val
echo $v1

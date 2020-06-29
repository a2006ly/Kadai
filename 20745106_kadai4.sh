#!/bin/bash

# ステータスチェック関数 ========================================
fErrChk(){
	lSts=$1
	lProc=$2
	shift
	
	if [ $lSts -eq 0 ]; then
		echo "[$lProc]SUCCESS sts=[$lSts]"
	else
		echo "[$lProc]ERROR sts=[$lSts]"
		exit ${lSts}
	fi
	return 0	
}

# 最大公約数計算関数 ========================================
gcd() {  
  num_a="$1"  
  num_b="$2"  
  remainder=1
  
  #余り=0 まで余り演算を続ける
  until [ $remainder -eq 0 ]; do
  ((remainder=$num_a % $num_b))
  num_a=$num_b
  num_b=$remainder
  done
 }  
# ========================================================
#メイン処理 
#1.引数の数チェック
#2.自然数チェック
#3.最大公約数計算関数を呼び出す
#4.最大公約数を出力
#=========================================================
param1=$1
param2=$2

#引数チェック===============================================
procName="引数チェック"
if [ $# -eq 2 ];then
	fErrChk $? $procName
else
	fErrChk $? $procName
fi

#自然数チェック===============================================
procName="自然数チェック"
for i in $@
do
	echo $i | grep -E '^[0-9]*$' >&/dev/null
	if [ $? -eq 0 ]; then
		#任意引数が0の場合、最大公約数0を出力する
		if [ $i -eq 0 ];then
			echo "${param1}と${param2}の最大公約数は0"
			exit 0
		fi
		fErrChk $? $procName
	else
		fErrChk $? $procName
	fi
done

#最大公約数計算関数を呼び出す======================================
procName="最大公約数計算"
gcd $param1 $param2
fErrChk $? $procName

#最大公約数を出力================================================
echo "${param1}と${param2}の最大公約数は${num_a}"

#!/bin/bash

set -e
############################################
#
#テストシェル
#
#本体最大公約数演算シェルを呼び出す
#チェックエラーがある場合、メッセージ出力、異常終了させない
#テストシェルは途中に終了、目標は全部のケース網羅します
#
############################################


#case 1 正常系 数字入力
#入力：引数1=15、引数2=5
#想定出力:5
./20745106_kadai4.sh 15 5
if [ $? -ne 0 ];then
    echo -e "CASE1処理エラー"  
else
    echo -e "CASE1正常終了"	
fi
echo -e "\n"

#case 2 正常系 数字入力
#入力：引数1=0、引数2=22
#想定出力:0
./20745106_kadai4.sh 0 22
if [ $? -ne 0 ];then
    echo -e "CASE2処理エラー"  
else
    echo -e "CASE2正常終了"	
fi
echo -e "\n"

#case 3 正常系 数字入力
#入力：引数1=8、引数2=0
#想定出力:0
./20745106_kadai4.sh 8 0
if [ $? -ne 0 ];then
    echo -e "CASE3処理エラー"  
else
    echo -e "CASE3正常終了"	
fi
echo -e "\n"

#case 4 異常系 数字以外
#入力：引数1=a、引数2=42
#想定出力:自然数チェックエラー
./20745106_kadai4.sh a 42 
if [ $? -ne 0 ];then
    echo -e "CASE4処理エラー"  
else
    echo -e "CASE4正常終了"	
fi
echo -e "\n"

#case 5 異常系 数字以外入力
#入力：引数1=8、引数2=b
#想定出力:自然数チェックエラー
./20745106_kadai4.sh 8 b
if [ $? -ne 0 ];then
    echo -e "CASE5処理エラー"  
else
    echo -e "CASE5正常終了"	
fi
echo -e "\n"

#case 6 異常系 数字以外入力
#入力：引数1=c、引数2=d
#想定出力:自然数チェックエラー
./20745106_kadai4.sh c d
if [ $? -ne 0 ];then
    echo -e "CASE6処理エラー"  
else
    echo -e "CASE6正常終了"	
fi
echo -e "\n"

#case 7 異常系 引数空入力
#入力：引数1=、引数2=
#想定出力:引数チェックエラー
./20745106_kadai4.sh
if [ $? -ne 0 ];then
    echo -e "CASE7処理エラー"  

else
    echo -e "CASE7正常終了"	
fi
echo -e "\n"

#case 8 異常系 引数1個入力
#入力：引数1=15、引数2=
#想定出力:引数チェックエラー
./20745106_kadai4.sh
if [ $? -ne 0 ];then
    echo -e "CASE8処理エラー"  

else
    echo -e "CASE8正常終了"	
fi
echo -e "\n"
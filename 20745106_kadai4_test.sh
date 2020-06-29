#!/bin/bash


############################################
#
#テストシェル
#
#本体最大公約数演算シェルを呼び出す
#チェックエラーがある場合、メッセージ出力、異常終了させない
#テストシェルは途中に終了、目標は全部のケース網羅します
#
############################################

#コマンドの返り値が非ゼロのとき停止しないように
set +e

#case 1 正常系 数字入力
#入力：引数1=15、引数2=5
#想定出力:5
./20745106_kadai4.sh 15 5
if [ $? -ne 0 ];then
    echo -e "CASE1処理エラー"  
else
    echo -e "CASE1の実行結果は想定通り"	
fi
echo -e "\n"

#case 2 正常系 数字入力
#入力：引数1=0、引数2=22
#想定出力:0
./20745106_kadai4.sh 0 22
if [ $? -ne 0 ];then
    echo -e "CASE2処理エラー"  
else
    echo -e "CASE2の実行結果は想定通り"	
fi
echo -e "\n"

#case 3 正常系 数字入力
#入力：引数1=8、引数2=0
#想定出力:0
./20745106_kadai4.sh 8 0
if [ $? -ne 0 ];then
    echo -e "CASE3処理エラー"  
else
    echo -e "CASE3の実行結果は想定通り"	
fi
echo -e "\n"

#case 4 異常系 数字以外
#入力：引数1=a、引数2=42
#想定出力:自然数チェックエラー
./20745106_kadai4.sh a 42 
if [ $? -ne 0 ];then
    echo -e "シェル異常終了　CASE4の実行結果は想定通り"    
else
    echo -e "シェル正常終了　CASE4処理エラー"
fi
echo -e "\n"

#case 5 異常系 数字以外入力
#入力：引数1=8、引数2=b
#想定出力:自然数チェックエラー
./20745106_kadai4.sh 8 b
if [ $? -ne 0 ];then
    echo -e "シェル異常終了　CASE5の実行結果は想定通り" 
 else
    echo -e "シェル正常終了　CASE5処理エラー"  

fi
echo -e "\n"

#case 6 異常系 数字以外入力
#入力：引数1=c、引数2=d
#想定出力:自然数チェックエラー
./20745106_kadai4.sh c d
if [ $? -ne 0 ];then
    echo -e "シェル異常終了　CASE6の実行結果は想定通り" 
else
    echo -e "シェル正常終了　CASE6処理エラー" 	
fi
echo -e "\n"

#case 7 異常系 引数空入力
#入力：引数1=、引数2=
#想定出力:引数チェックエラー
./20745106_kadai4.sh
if [ $? -ne 0 ];then
    echo -e "シェル異常終了　CASE7の実行結果は想定通り"  

else
    echo -e "シェル正常終了　CASE7処理エラー" 	
fi
echo -e "\n"

#case 8 異常系 引数1個入力
#入力：引数1=15、引数2=
#想定出力:引数チェックエラー
./20745106_kadai4.sh 15
if [ $? -ne 0 ];then
    echo -e "シェル異常終了　CASE8の実行結果は想定通り"  
else
    echo -e "シェル正常終了　CASE8処理エラー" 
fi
echo -e "\n"
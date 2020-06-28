#!/bin/bash

# 実行結果（同じじゃない場合）
./same.sh a b > /tmp/result-$$
# 出て欲しい出力
echo "error" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

# 実行結果（同じ場合）
./same.sh a a > /tmp/result-$$
# 出て欲しい出力
echo "same" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

echo "complete"

# Autohotkey

#### 要ライブラリ
IME  
TT  
Autohotkey-json  
array  
  
windows 操作をラップします　ほとんどクリスタ用  
csp/csPaintFunc.ahk 機能実装  
csp/flow.json 各フロー設定  
  
### mode/flow概要
#### 作成の経緯
クリスタの機能として、ワークスペースがあります  
ワークスペースは、各ワークスペースごとにショートカットやウィンドウレイアウトが保存できます  
しかし、この機能は修飾キー(modifier key)は全ワークスペース共通であり、ショートカットバインドに制限が多くあります  
また、各ワークスペースごとに部分的にショートカット群の切り替えもできません  
mode/flowはそれらの問題を解決するためのものです  

（注意）ほとんど個人的なものとしてできています
その内、他の人と共用できる形にまとめたいとは思っていますが、参考までに

mode :ワークスペースにぶら下がる形で設定するショートカット・マクロ群  
flow :左手デバイスの数ボタンに限定して、さらに細かく分化したショートカット・マクロ群  

### workspace とmodeの関係
+ paint workspace
  - paint mode（彩色）
    + default flow (彩色)
    + mask (マスク、マスクモードとほぼ同等)
    + sketch (ラフ・ラフモードとほぼ同等)
    + high light (ハイライト彩色用)
  - rough mode(ラフ）
+ line work space
  - line mode(線画・モノクロ漫画)
    + default flow (線画)
    + white flow （ホワイト)
    + mask flow (クイックマスク)
    + effect flow (効果・書き文字)
    + fukidashi flow (吹き出し)
    + tone flow （トーン彩色)
+ mask workspace
  - base mode (色分け)
    + base flow (色分け)
    + sub flow (色分け彩色)

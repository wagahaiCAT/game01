;一番最初に呼び出されるファイル

;改行マクロ
[macro name=5r]
[r][wait time=200]
[endmacro]

;レイヤ変更マクロ
[macro name=change_msg]
[layopt layer=%now visible=false]
[layopt layer=%new visible=true]
[current layer=%new]
[endmacro]

;キャラ登場マクロ
[macro name=hyuin]
[chara_show  name=%chara  face=%face left=1600 time="0" ]
[anim name=%chara left = 850 time="400" effect="easeOutExpo"]
[endmacro]

 
; *Set_Clickable_Mapにジャンプするだけのマクロ [jc] を定義します。(jump clickableの略のつもり)
[macro name="jc"]
[chara_hide  name=%chara time=0 ]
[layopt layer=%now visible=false]
[jump storage=scene2.ks  target="*Set_Clickable_Map"]
[endmacro]


;[title name="天性の盗人"]
[stop_keyconfig]
[plugin name=tempura_ruby]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]





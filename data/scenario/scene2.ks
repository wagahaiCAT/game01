;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[clearstack]
[start_keyconfig]


[bg storage="room.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=false

;キャラクターの名前が表示される文字領域
;[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;キャラクターの表情登録
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]

;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]


;;;;;;;;;;;ここから
;メッセージウィンドウの設定
;文字が表示される領域を調整
[position layer="message0" left=10 top=410 width=900 height=300 page=fore visible=true]
[position layer=message0 frame="conf/frame.png" page=fore margint="90" marginl="70" marginr="20" marginb="20"]

[position layer="message1" left=10 top=410 width=900 height=300 page=fore visible=true]
[position layer=message1 frame="conf/frame1.png" page=fore margint="90" marginl="70" marginr="20" marginb="20"]

[position layer="message2" left=10 top=410 width=900 height=300 page=fore visible=true]
[position layer=message2 frame="conf/frame2.png" page=fore margint="90" marginl="70" marginr="20" marginb="20"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=30 bold=true x=115 y=465]
[ptext name="chara_name_area" layer="message1" color="white" size=30 bold=true x=115 y=465]
[ptext name="chara_name_area" layer="message2" color="white" size=30 bold=true x=115 y=465]


;hina
[chara_new  name="hina" storage="chara/hina/01.png" jname="ツギサラ"  ]
[chara_face name="hina" face="02" storage="chara/hina/02.png"]

;roku
[chara_new  name="roku" storage="chara/roku/01.png" jname="ブチョウ"  ]
[chara_face name="roku" face="02" storage="chara/roku/02.png"]

;kamo
[chara_new  name="kamo" storage="chara/kamo/01.png" jname="カモヤマ"  ]
[chara_face name="kamo" face="02" storage="chara/kamo/02.png"]

;ten
[chara_new  name="ten" storage="chara/ten/01.png" jname="サボウ"  ]
[chara_face name="ten" face="02" storage="chara/ten/02.png"]

[deffont size="30" ][resetfont]
[plugin name=tempura_ruby time=0 ruby_size=15 ruby_offset=-7 ]
[chara_config  talk_focus=brightness]
[eval exp="f.count=0"]



*Set_Clickable_Map
;lickable] クリックすると*Part2に飛ばす領域を作成します。
[clickable x="373" y="56" width="250" height="233" target="*no1" opacity="0" mouseopacity="50" color="0xffffff"]
[clickable x="673" y="56" width="250" height="233" target="*no2" opacity="0" mouseopacity="50" color="0xffffff"]
[clickable x="373" y="306" width="250" height="233" target="*no3" opacity="0" mouseopacity="50" color="0xffffff"]
[clickable x="673" y="306" width="250" height="233" target="*no4" opacity="0" mouseopacity="50" color="0xffffff"]
[s]

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

*no1
[hyuin chara="hina" ]
[layopt layer=message2 visible=true]
[current layer="message2"]
#hina
[font color="0x7fffd4"]
（先輩のいた教卓の上ならさり気ないかな？[5r]
_　シャーペンはこの後も使うだろうし……）
[resetfont]

[glink text="ここに隠す" size=20 width=500 x=30 y=100 color=blue target=no1A ]
[glink text="もう少し考える" size=20 width=500 x=30 y=160 color=blue target=no1B ]
[s]

*no1A
#hina
[font color="0x7fffd4"]
（右見て、左見て、ささささっと。[5r]
_　通り過ぎただけです、私はただの通行人……）[p]
[resetfont]
[jc chara="hina" now=message2]

*no1B
#hina
[font color="0x7fffd4"]
（すぐそこに先輩たちがいるし……、[5r]
_　もう少し他のところも見てみようかな）[p]
[resetfont]
[jc chara="hina" now=message2]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

*no2
[hyuin chara="hina" ]
[layopt layer=message2 visible=true]
[current layer="message2"]
#hina
[font color="0x7fffd4"]
（窓枠のところなんて全然見ないよね。[5r]
_　ここに隠せば見つからないハズ……）
[resetfont]

[glink text="ここに隠す" size=20 width=500 x=30 y=100 color=blue target=no2A ]
[glink text="もう少し考える" size=20 width=500 x=30 y=160 color=blue target=no2B ]
[s]

*no2A
#hina
[font color="0x7fffd4"]
（さりげなーく、そう、さりげなーく。[5r]
_　私は関係ありませんよーっとっと）[p]
[resetfont]
[jc chara="hina" now=message2]

*no2B
[chara_hide  name="hina" time=0 ]
[hyuin chara="hina" face="02"]
#hina
[font color="0x7fffd4"]
（軽率に考えちゃダメダメ。[5r]
_　窓枠にハマっちゃったらダメだもんね）[p]
[resetfont]
[jc chara="hina" now=message2]

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


*no3
[hyuin chara="kamo" ]
[layopt layer=message1 visible=true]
[current layer="message1"]
#kamo
うん？　どうした[ruby text="ツギ"]次[ruby text="サラ"]皿。[5r]
今回とて主役は譲らんぞ？[p]

[chara_hide  name="kamo" time=0 ]
[hyuin chara="hina"]
[change_msg now=message1 new=message2]
#hina
[font color="0x7fffd4"]
（馬鹿だけど、逆に馬鹿だからなんとかなるかも？[5r]
_　馬鹿だから色々不安だけど馬鹿だし……）
[resetfont]

[glink text="カモに渡す" size=20 width=500 x=30 y=100 color=blue target=no3A ]
[glink text="もう少し考える" size=20 width=500 x=30 y=160 color=blue target=no3B ]
[s]

*no3A
[chara_hide  name="hina" time=0 ]
[hyuin chara="kamo"]
[change_msg now=message2 new=message1]
#kamo
え、なになに？[5r]
急にプレゼントなんて困るんだけど～！[p]

[chara_hide  name="kamo" time=0 ]
[hyuin chara="hina"]
[change_msg now=message1 new=message2]
#hina
カモってほんっと馬鹿だよね……。[5r]
[font color="0x7fffd4"]
（どう見ても使いかけのシャーペンじゃん）[p]
[resetfont]
[jc chara="hina" now=message2]

*no3B

#hina
用があるかと思ったけどなくなったよ。[5r]
[font color="0x7fffd4"]
（カモはカモだからなあ……）[p]
[resetfont]

[chara_hide  name="hina" time=0 ]
[hyuin chara="kamo"]
[change_msg now=message2 new=message1]
#kamo
お、それって焦らしプライってやつ？[5r]
お前も頭脳戦するタイプになった系？[p]

[chara_hide  name="kamo" time=0 ]
[hyuin chara="hina"]
[change_msg now=message1 new=message2]
#hina
[font color="0x7fffd4"]
（これが舞台の上だと[ruby text="カ"]加[ruby text="モ"]茂[ruby text="ヤマ"]山くーんって[5r]
_　歓声を浴びるんだから、本当に謎だ……）[p]
[resetfont]
[jc chara="hina" now=message2]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

*no4

[if exp="f.count == 0"]
;f.count が 0　のときに表示される。教卓ヒント
[hyuin chara="ten"]
[layopt layer=message2 visible=true]
[current layer="message2"]
#ten
部長があの教卓にいるのもあと数回かあ。[5r]
[ruby text="ツギ"]次[ruby text="サラ"]皿ちゃん、ちゃんと拝まないとだね～[p]

[chara_hide  name="ten" time=0 ]
[hyuin chara="hina" ]
#hina
お、おがむほどじゃないから、大丈夫だよ！[5r]
[font color="0x7fffd4"]
（先輩のいた教卓……調べてみるのアリかも？）[p]
[resetfont]
[eval exp="f.count=f.count+1"]
[jc chara="hina" now=message2]


[elsif exp="f.count == 1"]
;f.count が 1のときに表示される。窓枠ヒント
[hyuin chara="ten"]
[layopt layer=message2 visible=true]
[current layer="message2"]
#ten
最近晴れ続きで、少し暑いよね～。[5r]
部長たちのためにも換気してもいいかな？[p]

[chara_hide  name="ten" time=0 ]
[hyuin chara="hina" ]
#hina
[font color="0x7fffd4"]
（窓……換気！　なるほど、その手が！）[5r]
[resetfont]
あ、それなら私が窓開けてこよっかなあー！[p]

[eval exp="f.count=f.count+1"]
[jc chara="hina" now=message2]


[elsif exp="f.count == 2"]
;f.count が 2のときに表示される。カモヒント
[hyuin chara="ten"]
[layopt layer=message2 visible=true]
[current layer="message2"]
#ten
カモって、やっぱり今回も主役かな？[5r]
よくあれで毎回台本の内容漏らさないよね～[p]

[chara_hide  name="ten" time=0 ]
[hyuin chara="hina" ]
#hina
そこは……馬鹿のカモヂカラ、なんじゃない？[5r]
[font color="0x7fffd4"]
（案外、人に渡すのも手かもしれないな……）[p]
[resetfont]

[eval exp="f.count=f.count+1"]
[jc chara="hina" now=message2]

[else]
;f.count が 0でも10でもない時に表示される。選択肢出現
[hyuin chara="ten"]
[layopt layer=message2 visible=true]
[current layer="message2"]
#ten
……[ruby text="ツギ"]次[ruby text="サラ"]皿ちゃん、さっきから挙動不審だけど[5r]
何か悩みがあるなら、相談に乗るよ～？[p]

[chara_hide  name="ten" time=0 ]
[hyuin chara="hina" ]
#hina
[font color="0x7fffd4"]
（カモより絶対、[ruby text="サ"]茶[ruby text="ボウ"]房ちゃんの方が信用できる！[5r]
_　でも、もしかしたら持ち主知ってるかも……）
[resetfont]

[glink text="サボウに渡す" size=20 width=500 x=30 y=100 color=blue target=no4A ]
[glink text="もう少し考える" size=20 width=500 x=30 y=160 color=blue target=no4B ]
[s]

*no4A
[chara_hide  name="hina" time=0 ]
[hyuin chara="ten"]
#ten
あれ、部長のボールペンだ。[5r]
[ruby text="ツギ"]次[ruby text="サラ"]皿ちゃん、もしかしてコレ……[p]

[chara_hide  name="ten" time=0 ]
[hyuin chara="hina" ]
#hina
あ、あれー？　これ部長のだったんだー。[5r]
[font color="0x7fffd4"]
（やっぱり知ってた！　でも怪しまないで―！）[p]
[resetfont]

#hina:02
たまたま拾ったけど、誰のか分からなくて……[5r]
そうだ！　[ruby text="サ"]茶[ruby text="ボウ"]房ちゃんから部長に渡しておいてよ！[p]

#hina
私、確信ないから、どうにも渡しづらくて……[5r]
お願い！　このとーり！　私の名前は伏せた上で！[p]

[chara_hide  name="hina" time=0 ]
[hyuin chara="ten"]
#ten
相変わらず緊張しいだよね～。[5r]
いいよ～、任されてあげましょう[p]

[chara_hide  name="ten" time=0 ]
[hyuin chara="hina"]
#hina
ありがとう[ruby text="サ"]茶[ruby text="ボウ"]房ちゃん！[5r]
今度パフェ奢ってあげるからねっ！[p]

[chara_hide  name="hina" time=0 ]
[hyuin chara="ten"]
#ten
うーん、[ruby text="ツギ"]次[ruby text="サラ"]皿ちゃんってほんと……（ぼそっ）[p]

[chara_hide  name="ten" time=0 ]
[hyuin chara="hina"]
#hina
[font color="0x7fffd4"]
（なんだか温かい目で見られている気がする！[5r]
_　でもこれでとりあえず、一安心かな？）[p]
[resetfont]

[jc chara="hina" now=message2]

*no4B

#hina
あー、うん。大丈夫、大したことじゃないから。[5r]
[font color="0x7fffd4"]
（ごめん、もう少しだけ悩ませて……！）[p]
[resetfont]

[chara_hide  name="hina" time=0 ]
[hyuin chara="ten"]
#ten
……そーお？　それならいいけど。[5r]
[ruby text="ツギ"]次[ruby text="サラ"]皿ちゃん、顔に出ないけど動作に出るから……[p]

[chara_hide  name="ten" time=0 ]
[hyuin chara="hina"]
#hina
ううっ、役者としてもう少し精進します……。[5r]
[font color="0x7fffd4"]
（悩みの内容まではバレてない……よね？）[p]
[resetfont]

[jc chara="hina" now=message2]
[endif]



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[s]
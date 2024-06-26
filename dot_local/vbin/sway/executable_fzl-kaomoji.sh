#!/bin/sh
# https://leahneukirchen.org/dotfiles/bin/dkaomoji
# fzl-kaomoji.sh - fuzzel based kaomoji picker

# sources:
# https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/share/goodie/cheat_sheets/json/kaomoji.json
# https://github.com/kxxoling/kaomoji/raw/master/data/jp.json

# GNU cut doesn't grok UTF-8.
EMOJI=$(sed '1,/^exit/d' $0 | fuzzel -d -p "Kaomoji " | grep -Po '^[^\t]*')
if [ "$EMOJI" ]; then
	printf %s "$EMOJI" | wl-copy
	exit
fi
exit 1
( ≧Д≦)	#angry
o(-`д´- ｡)	#angry
((╬ಠิ﹏ಠิ))	#angry
(；￣Д￣）	#angry
ಠ_ರೃ	#angry
(」゜ロ゜)」	#angry
(;¬_¬)	#angry
凸(｀0´)凸	#angry
(*｀へ´*)	#angry
（；¬＿¬)	#angry
-`д´-	#angry
(*≧m≦*)	#angry
(｡+･`ω･´)	#angry
｡゜(｀Д´)゜｡	#angry
(/ﾟДﾟ)/	#angry
(*￣m￣)	#angry
( •̀ω•́ )σ	#angry
(＃｀д´)ﾉ	#angry
(>人<)	#angry
( ꒪Д꒪)ノ	#angry
(#ಠQಠ#)	#angry
(¬_¬)	#angry
(　ﾟДﾟ)＜!!	#angry
(‡▼益▼)	#angry
(¬､¬)	#angry
( ಠ ಠ )	#angry
(´･益･｀*)	#angry
(¬▂¬)	#angry
(･｀ｪ´･)つ	#angry
(´Д｀)	#angry
(⋋▂⋌)	#angry
(,,#ﾟДﾟ)	#angry
(҂⌣̀_⌣́)	#angry
＼(｀0´)／	#angry
(； ｀ｪ´ ；)b三b	#angry
(>_<)	#angry
ヽ(｀⌒´メ)ノ	#angry
(；¬д¬)	#angry
（＞д＜）	#angry
ヽ(●-`Д´-)ノ	#angry
（;≧皿≦）	#angry
(¬д¬。)	#angry
ヽ༼ ಠ益ಠ ༽ﾉ	#angry
(((p(>o<)q)))	#angry
（≧▼≦；)	#angry
(≧σ≦)	#angry
(◣_◢)	#angry
(ᇂ∀ᇂ╬)	#angry
(╬ﾟ◥益◤ﾟ)	#angry
(ू˃̣̣̣̣̣̣︿˂̣̣̣̣̣̣ ू)	#angry
(ノ≧┏Д┓≦)ノ	#angry
(╬⓪益⓪)	#angry
(ू˃̣̣̣̣̣̣o˂̣̣̣̣̣̣ ू)⁼³₌₃	#angry
(ノಠ ∩ಠ)ノ彡( \o°o)\	#angry
(╯°□°）╯︵ ┻━┻	#angry
凸ಠ益ಠ)凸	#angry
(ノಠ益ಠ)ノ	#angry
(╯°Д°）╯︵/(.□ . \)	#angry
凸(⊙▂⊙✖ )	#angry
(ノಠ益ಠ)ノ彡┻━┻	#angry
（▼へ▼メ）	#angry
(ಠ⌣ಠ)	#angry
[○･｀Д´･○]	#angry
(◞≼◉ื≽◟ ;益;◞≼◉ื≽◟)	#angry
(ಥ⌣ಥ)	#angry
{{|└(>o< )┘|}}	#angry
｢(#Φ益 Φo)∩	#angry
＼(・｀(ｪ)・)/	#angry
＼(〇O〇)／	#angry
/( .□.)\ ︵╰(゜益゜)╯︵ /(.□. /)	#angry
＼(＠O＠)／	#angry
┌П┐(►˛◄’!)	#angry
\( #`⌂´)/┌┛	#angry
＼(`O´θ／	#angry
╭(๑¯д¯๑)╮	#angry
＼( ｀.∀´)／	#angry
＼(>o<)ノ	#angry
ヾ( ･`⌓´･)ﾉﾞ	#angry
ヾ(。◣∀◢。)ﾉ	#angry
ヽ(≧Д≦)ノ	#angry
o(≧o≦)o	#angry
ヽ(#`Д´)ﾉ	#angry
ヽ(ｏ`皿′ｏ)ﾉ	#angry
ŎUŎ	#angry
ヽ(#ﾟДﾟ)ﾉ┌┛	#angry
٩(╬ʘ益ʘ╬)۶	#angry
s(・｀ヘ´・；)	#angry
ヽ(#ﾟДﾟ)ﾉ┌┛Σ(ノ´Д`)ノ	#angry
٩(๑`ȏ´๑)۶	#angry
s(・｀ヘ´・;)ゞ	#angry
ヽ(｀◇´)/	#angry
ｏ( ><)o	#angry
θ＼(；￢_￢)	#angry
ヽ(￣д￣;)ノ	#angry
o(>< )o	#angry
Σ(-`Д´-ﾉ；)ﾉ	#angry
Σ(▼□▼メ)	#angry
щ(ºДºщ)	#angry
щ(ಠ益ಠщ)	#angry
щ(ಥДಥщ)	#angry
ლ (#｀ﾛ＾;)>	#angry
ლ(ಠ_ಠლ)	#angry
ლ(ಠ益ಠ)ლ	#angry
ლ(ಠ益ಠლ	#angry
ლಠ益ಠ)ლ	#angry
ಠ_ಠ	#angry
ಠ▃ಠ	#angry
ಥ⌣ಥ	#angry
ᕙ(⇀‸↼‶)ᕗ	#angry
ᕦ(ò_óˇ)ᕤ	#angry
눈_눈	#angry
凸(-0-メ)	#angry
凸(｀⌒´メ)凸	#angry
凸(｀△´＋）	#angry
☜(:♛ฺ;益;♛ฺ;)☞	#angry
૮( ᵒ̌▱๋ᵒ̌ )ა	#angry
(⁎˃ᆺ˂)	#angry
(⁎ૢ⚈ै೧⚈ै⁎ૢ)	#angry
໒(•න꒶̭න•)७	#angry
(ᗒᗣᗕ)՞	#angry
(ꈨຶꎁꈨຶ)۶”	#angry
⁽ƈ ͡ (ुŏ̥̥̥̥םŏ̥̥̥̥) ु	#angry
૮(ꂧ᷆⺫ꂧ᷇)ა	#angry
૮(ꂧꁞꂧ)ა	#angry
 ૮( ᵒ̌ૢཪᵒ̌ૢ )ა	#angry
(,,Ծ‸Ծ,, )	#angry
(ꐦ°᷄д°᷅)	#angry
((╬●∀●)	#angry
(۶ૈ ۜ ᵒ̌▱๋ᵒ̌ )۶ૈ=͟͟͞͞ ⌨	#angry
* ूི-̭͡- ૂ ྀ⁎ꂚᴉᴉᴉ	#angry
(╬ Ò ‸ Ó)	#angry
(๑•ૅㅁ•๑)	#angry
꒰╬•᷅д•᷄╬꒱	#angry
(╬•᷅д•᷄╬)	#angry
ｍ（＿　＿；；ｍ	#apologizing
_:(´□`」 ∠):_	#apologizing
(シ_ _)シ	#apologizing
（ﾉ´д｀）	#apologizing
<(_ _)>	#apologizing
＜(。_。)＞	#apologizing
m(_ _)m	#apologizing
m(._.)m	#apologizing
ｍ（．＿．）ｍ	#apologizing
m(￢0￢)m	#apologizing
“(`(エ)´)ノ	#bears
(/-(ｴ)-＼)	#bears
(｀(エ)´)ﾉ	#bears
(´(エ)｀)	#bears
(✪㉨✪)	#bears
(ó㉨ò)	#bears
・㉨・	#bears
⁝⁞⁝⁞ʕु•̫͡•ʔु☂⁝⁞⁝⁝	#bears
( (ﾐ´ω`ﾐ))	#bears
( ´ิ(ꈊ) ´ิ)	#bears
(｡･ω･｡)	#bears
(*￣(ｴ)￣*)	#bears
(*ノ・ω・）	#bears
(／(ｴ)＼)	#bears
(／￣(ｴ)￣)／	#bears
(^(I)^)	#bears
(^(エ)^)	#bears
(￣(エ)￣)	#bears
(￣(エ)￣)ゞ	#bears
(￣(ｴ)￣)ﾉ	#bears
(∪￣ ㋓ ￣∪)	#bears
(●｀･(ｴ)･´●)	#bears
(●￣(ｴ)￣●)	#bears
(♥ó㉨ò)ﾉ♡	#bears
(✪㉨✪)	#bears
《/(￣(ｴ)￣)ゞ》	#bears
＼(・｀(ｪ)・)/	#bears
°◦=͟͟͞͞ʕ̡̢̡ु•̫͡•ʔ̡̢̡ु ☏	#bears
⊂(・(ェ)・)⊃	#bears
⊂(^(工)^)⊃	#bears
⊂(￣(ｴ)￣)⊃	#bears
⊂(￣(工)￣)⊃	#bears
⊂(◎(工)◎)⊃	#bears
ʕ̡̢̡̡̢̡̡̢̡✩˃̶͈̀ ॢ³˂̴`͈ॢʔ̢̡̢̢̡̢̢̡̢♡⃛	#bears
ʕ̡̢̡̡̢̡̡̢♡ᵒ̴̷͈艸ᵒ̴̷͈॰ʔ̢̡̢̢̡̢̢̡̢✧	#bears
✧ʕ̢̣̣̣̣̩̩̩̩·͡˔·ོɁ̡̣̣̣̣̩̩̩̩✧	#bears
ヾ(T(エ)Tヽ)	#bears
٩ʕ•͡×•ʔ۶	#bears
ヽ(￣(ｴ)￣)ﾉ	#bears
v.ʕʘ‿ʘʔ.v	#bears
ʔ•̫͡•ʔ	#bears
ʕ ⁎❛ั ुꈊ͒ੁ❛ั ु)	#bears
ʕ •́؈•̀ ₎	#bears
ʕ·͡ˑ·ཻʔ	#bears
ʕ”̮ुॽु✚⃞ྉ*✲ﾟ*｡⋆	#bears
ʕ̡̢̡*✪௰✪ૢʔ̢̡̢	#bears
ʕ•͡-•ʔ	#bears
ʕ•͓͡•ʔ-̫͡-ʕ•̫͡•ʔ	#bears
ʕ•̫͡•ʔ♡*:.✧	#bears
ʕ•̫͡•ིʔྀ	#bears
ʕ•͡ɛ•͡ʼʼʔ	#bears
ʕ•͡ω•ʔ	#bears
ʕ•̀ω•́ʔ✧	#bears
ʕ•ӫ̫͡•ʔ	#bears
ʕ•͡દ•ʔ	#bears
ヾ(;￫㉨￩)ﾉ	#bears
ヾ(´(ｴ)｀ﾉﾞ	#bears
ʕʽɞʼʔ	#bears
ʕʘ̅͜ʘ̅ʔ	#bears
ʕु-̫͡-ʔु”	#bears
ʕु•̫͡•ʔु ✧	#bears
ʕु•̫͡•ʔु☂	#bears
ʢٛ•ꇵٛ•ʡ	#bears
Ψ(￣(ｴ)￣)Ψ	#bears
ก็็็็็็็็็็็็็ʕ•͡ᴥ•ʔ ก้้้้้้้้้้้	#bears
ฅʕ•̫͡•ʔฅ	#bears
川´･ω･`川	#bears
┏((＝￣(ｴ)￣=))┛	#bears
⊂(ο･㉨･ο)⊃	#bears
ᶘ ᵒᴥᵒᶅ	#bears
ʕ•̫͡•ʔ →ʕ•̫͡•̫͡•ʔ →ʕ•̫͡•=•̫͡•ʔ →ʕ•̫͡•ʔ ʕ•̫͡•ʔ	#bears
ʕ•ᴥ•ʔ	#bears
ʕ•͡౪•ʔ	#bears
ᵋ₍⚬ɷ⚬₎ᵌ	#bears
ˁ˙˟˙ˀ	#bears
ˁ˙͠˟˙ˀ	#bears
ˁ˙͡˟˙ˀ	#bears
✧(๑•́ᄌ⃝ก̀๑)⋆*ೃ:.	#bears
＼＼\\ ٩(`(エ)´ )و //／／	#bears
(///◔(ｪ)◔///)	#bears
ʕ•͡•ʔ	#bears
ʕ•̫͡•ʔ♬✧	#bears
ʕ·͡ˑ·ཻʔෆ⃛ʕ•̫͡•ོʔ	#bears
ʕ͙•̫͑͡•ʔͦʕͮ•̫ͤ͡•ʔ͙	#bears
ʕ•̫͡•ʕ•̫͡•ʔ•̫͡•ʔ	#bears
ʕ•̼͛͡•ʕ-̺͛͡•ʔ•̮͛͡•ʔ	#bears
ʕ•̭͡•ʕ•̯ͦ͡•ʕ•̻̀•́ʔ	#bears
ʕ•̫͡•ོʔ•̫͡•ཻʕ•̫͡•ʔ•͓͡•ʔ	#bears
ʕ•̫͡•ʔ❣ʕ-̼͡-ʔ	#bears
 ʕु•̫͡•ʔुʔ•̫͡•ཻʕʕु•̫͡•ʔु	#bears
ʕु-̫͡-ʔु”	#bears
=͟͟͞͞ʕ•̫͡•ʔ =͟͟͞͞ʕ•̫͡•ʔ =͟͟͞͞ʕ•̫͡•ʔ =͟͟͞͞ʕ•̫͡•ʔ =͟͟͞͞ʕ•̫͡•ʔ	#bears
ʕ̡̢̡ॢ•̫͡ॢ•ʔ̢̡̢	#bears
ʕ•ૅૄ•ʔ	#bears
ʕ⁎̯͡⁎ʔ༄	#bears
ʕ-͏̶̶̶̯͡-ʔ	#bears
˞͛ʕ̡̢̡๑꒪͒ꇴ꒪͒๑ʔ̢̡̢˞͛	#bears
˞͛ʕ̡̢̡◌･ꄃ･◌ʔ̢̡̢˞͛	#bears
˞͛ʕ̡̢̡⚭◞₀͒◟⚭̀ʔ̢̡̢˞͛	#bears
 ʢ•ꇵ͡•ʡ✩⃛	#bears
ʕ̡̢̡ʘ̅͟͜͡ʘ̲̅ʔ̢̡̢	#bears
ʕ•̫͡•ॽु✚⃞ྉ*✲ﾟ*｡⋆	#bears
˞͛ʕ̡̢̡,,Ծ‸Ծ,, ʔ̢̡̢˞͛	#bears
˞͛ʕ̡̢̡  ͡͝  ືྀ͋ ◡ु ͡͝  ືི͋ ʔ̢̡̢˞͛	#bears
ˁᵒ͡ˑ̉ᵒˀ	#bears
ৎ｡ ॄཻ͡⁎̥̥̥̥̥̥ૂॽ	#bears
（・⊝・）	#birds
（・⊝・∞）	#birds
（・θ・）	#birds
（＠◇＠）	#birds
(•∋•)	#birds
（`･⊝･´ ）	#birds
(`･⊝･´)	#birds
(｀Θ´)	#birds
(°<°)	#birds
（ﾟ∈ﾟ）	#birds
(◉Θ◉)	#birds
(●∈∋●)	#birds
<（ё）>	#birds
~~……ヾლ∩з…….~~	#birds
⊹⋛⋋( ՞ਊ ՞)⋌⋚⊹	#birds
◎▼◎	#birds
 ˏ₍•ɞ•₎ˎ	#birds
ˎ₍•ʚ•₎ˏ	#birds
♡(㋭ ਊ ㋲)♡	#birds
（ΦωΦ）	#cats
( =①ω①=)	#cats
(^-人-^)	#cats
(^・ω・^ )	#cats
(=;ェ;=)	#cats
(=^-ω-^=)	#cats
(=^･ω･^)y＝	#cats
~(=^‥^)_旦~	#cats
ヽ(^‥^=ゞ)	#cats
b(=^‥^=)o	#cats
=＾● ⋏ ●＾=	#cats
=’①。①’=	#cats
｡＾･ｪ･＾｡	#cats
( ^..^)ﾉ	#cats
(・∀・)	#cats
(.=^・ェ・^=)	#cats
((≡^⚲͜^≡))	#cats
((ΦωΦ))	#cats
(*ΦωΦ*)	#cats
(^･o･^)ﾉ”	#cats
(^･o･^)ﾉ”	#cats
(^._.^)ﾉ	#cats
(^人^)	#cats
(=；ェ；=)	#cats
(=｀ω´=)	#cats
(=｀ェ´=)	#cats
（=´∇｀=）	#cats
(=^･^=)	#cats
(=^･ｪ･^=)	#cats
(=^‥^=)	#cats
(=ＴェＴ=)	#cats
(=ｘェｘ=)	#cats
(=ΦｴΦ=)	#cats
(ΦωΦ)	#cats
(ΦзΦ)	#cats
(Ф∀Ф)	#cats
(ФДФ)	#cats
(ㅇㅅㅇ❀)	#cats
（三ФÅФ三）	#cats
＼(=^‥^)/’`	#cats
<(*ΦωΦ*)>	#cats
|ΦωΦ|	#cats
~(=^‥^)/	#cats
~(=^‥^)ノ	#cats
└(=^‥^=)┐	#cats
ヾ(*ΦωΦ)ﾉ	#cats
ヾ(=ﾟ･ﾟ=)ﾉ	#cats
ヽ(=^･ω･^=)丿	#cats
٩(ↀДↀ)۶	#cats
d(=^･ω･^=)b	#cats
o(^・x・^)o	#cats
V(=^･ω･^=)v	#cats
ㅇㅅㅇ	#cats
ミ๏ｖ๏彡	#cats
((≡^⚲͜^≡))	#cats
(⁎˃ᆺ˂)	#cats
(,,◕　⋏　◕,,)	#cats
(*✧×✧*)	#cats
] ‘͇̂•̩̫’͇̂ ͒)ฅ ﾆｬ❣	#cats
(ٛ₌டுͩ ˑ̭ டுͩٛ₌)ฅ	#cats
‘`ﾛｰヽ(⊡ㅂ⊡｡ Ξ ｡⊡ㅂ⊡)ﾉ ‘`ﾛｰ	#cats
₍˄·͈༝·͈˄₎◞ ̑̑ෆ⃛	#cats
₍˄·͈༝·͈˄₎ฅ˒˒	#cats
₍˄ุ.͡˳̫.˄ุ₎ฅ˒˒	#cats
✩⃛( ͒ ु•·̫• ू ͒)	#cats
( ͒ ु- •̫̮ – ू ͒)	#cats
ฅ(⌯͒• ɪ •⌯͒)ฅ❣	#cats
ฅ⃛(⌯͒꒪ั ˑ̫ ꒪ั ⌯͒) ﾆｬｯ❣	#cats
(ะ☫ω☫ะ)	#cats
(ะ☫ω☫ะ)	#cats
(ꀄꀾꀄ)	#cats
(ะ`♔´ะ)	#cats
(ٛ⁎꒪̕ॢ ˙̫ ꒪ٛ̕ॢ⁎)	#cats
( ͒ ˘̩̩̩̩̩̩ꇵ͒˘̩̩̩̩̩̩ ͒)	#cats
ฅ ̂⋒ิ ˑ̫ ⋒ิ ̂ฅ	#cats
ฅ(≚ᄌ≚)	#cats
(≚ᄌ≚)ƶƵ	#cats
(≚ᄌ≚)ℒℴѵℯ❤	#cats
(✦థ ｪ థ)	#cats
(ↀДↀ)✧	#cats
(ↀДↀ)	#cats
(ↀДↀ)⁼³₌₃	#cats
(=ↀωↀ=)✧	#cats
(●ↀωↀ●)✧	#cats
(๑ↀᆺↀ๑)✧	#cats
(=ↀωↀ=)	#cats
(●ↀωↀ●)	#cats
(๑ↀᆺↀ๑)☄	#cats
ლ(=ↀωↀ=)ლ	#cats
ლ(●ↀωↀ●)ლ	#cats
ヽ༼ ಠ益ಠ ༽ﾉ	#characters
(((༼•̫͡•༽)))	#characters
(*ﾟ⚙͠ ∀ ⚙͠)ﾉ❣	#characters
(*ꆤ.̫ꆤ*)	#characters
(ી(΄◞ิ౪◟ิ‵)ʃ)	#characters
༼ ͒ ͓ ͒༽	#characters
༼ ͒ ̶ ͒༽	#characters
༼ ༎ຶ ෴ ༎ຶ༽	#characters
༼ ༏༏ີཻ༾ﾍ ༏༏ີཻ༾༾༽༽	#characters
༼･ิɷ･ิ༽	#characters
༼( ⁍ืེ – ⁍ื༽༽	#characters
༼༼;; ;°;ਊ°;༽	#characters
༼•͟ ͜ •༽	#characters
༼•̃͡ ɷ•̃͡༽	#characters
༼∵༽	#characters
༼≖ɷ≖༽	#characters
༼⍢༽	#characters
༼⍤༽	#characters
༼⍨༽	#characters
༼✷ɷ✷༽	#characters
༼༭ຶཬ༤ຶ༽	#characters
༼ԾɷԾ༽	#characters
༼இɷஇ༽	#characters
༼ꉺˇɷˇꉺ༽	#characters
༼ꉺ✺ꉺ༽	#characters
༼ꉺ౪ꉺ༽	#characters
༼ꉺεꉺ༽	#characters
༼ꉺლꉺ༽	#characters
♡(•ི̛ᴗ•̛)ྀ	#characters
♡*(ू•‧̫•ू⑅)♡⋆*ೃ:.✧	#characters
✌(꒡͡ ો ̼̮ ꒡͡✌)	#characters
ヽ༼ຈل͜ຈ༽ﾉ	#characters
ཥ•̫͡•ཤ	#characters
༼(⁽͇ˊ̑⁾ ἴृ ⁽ˋ̑⁾͇)༽	#characters
૮(ㅍ◞◟ㅍ)ა	#characters
˓ ू༼ ்ͦ॔ཀ ்ͦ॓ू༽	#characters
༼ ु ்ͦ॔ཫ ்ͦ॓༽ु˒˒	#characters
˚✧₊⁎❝᷀ົཽ≀ˍ̮ ❝᷀ົཽ⁎⁺˳✧༚	#characters
(̿▀̿ ̿Ĺ̯̿̿▀̿ ̿)̄	#characters
˞͛꒰๑ऀ •̆ꈊ͒ू•̆๑ऀ꒱	#clouds
♫꒰･‿･๑꒱	#clouds
꒰ *๑•ૅʖ̫•́๑꒱	#clouds
꒰ ॢö৺ö ૢ๑꒱	#clouds
꒰･᷄ु௰･᷅ू꒱	#clouds
꒰｡•`ｪ´•｡꒱۶	#clouds
꒰｡•ॢ◡-ॢ｡꒱	#clouds
꒰·͡ुˑ·ཻू꒱ෆ⃛	#clouds
꒰(@｀꒳´)꒱	#clouds
꒰•ू꒪͒·̫̮꒪͒•ू꒱	#clouds
꒰•ི̫͡ુ•ྀૂ꒱	#clouds
꒰˘̩̩̩⌣˘̩̩̩๑꒱♡	#clouds
꒰⌯͒•̩̩̩́ ˑ̫ •̩̩̩̀⌯͒꒱	#clouds
꒰⌯͒•ɷ•⌯͒꒱	#clouds
꒰⑅•ᴗ•⑅꒱	#clouds
꒰●꒡ ̫ ꒡●꒱	#clouds
꒰♡ˊ͈ ु꒳ ूˋ͈꒱.⑅*♡	#clouds
꒰✘Д✘◍꒱	#clouds
꒰✩’ω`ૢ✩꒱	#clouds
꒰๑ ᷄ω ᷅꒱	#clouds
꒰๑•̮̮́౪•̮̮̀๑꒱	#clouds
꒰๑͒•̀ुꇵ͒•꒱و ̑̑	#clouds
꒰ღ˘‿˘ற꒱❤⃛	#clouds
͛꒰ू ऀ•̥́ꈊ͒ੁ•ૅू॰˳ऀ꒱ ͟͟͞ ̊ ̥ ̥	#clouds
꒰ू•௰ू•๑꒱	#clouds
꒰ෆ❛ั ु▿❛ั ु꒱	#clouds
٩꒰ ̃•ε• ̃๑꒱۶⁼³₌₃	#clouds
٩꒰ ´ᆺ`꒱۶	#clouds
٩꒰ ˘ ³˘꒱۶~♡	#clouds
٩꒰･ัε･ั ꒱۶	#clouds
٩꒰｡•‿•｡꒱۶	#clouds
٩꒰• ε •꒱۶⁼³	#clouds
٩꒰•௰︡๑꒱ु	#clouds
٩꒰ಂ❛ ▿❛ಂ꒱۶♡	#clouds
٩꒰๑ ´∇`๑꒱۶	#clouds
٩꒰๑• ̫•๑꒱۶♡	#clouds
٩꒰๑• ³•๑꒱۶	#clouds
٩꒰ɵ̥̥▿ɵ̥̥●꒱۶	#clouds
٩꒰ʘʚʘ๑꒱۶	#clouds
ू꒰ꇐωꇐ ू꒱	#clouds
ꉂꉂ꒰•̤▿•̤*ૢ꒱	#clouds
ପ꒰⑅°͈꒳°͈꒱੭ु⁾⁾	#clouds
꒰⑅ᵕ༚ᵕ꒱˖♡	#clouds
♡˖꒰ᵕ༚ᵕ⑅꒱	#clouds
꒰⑅ᵕ༚ᵕ꒱˖♡ªʳⁱ૭ªᵗ°♡˖꒰ᵕ༚ᵕ⑅꒱	#clouds
꒰⁎❛⃘ͫ ⍘⃘ ❛⃘ͫ⁎꒱	#clouds
꒰*⑅˃̶͈ ৺˂̶͈⑅꒱੭ु⁾⁾·°	#clouds
꒰•̫͡•ོ꒱	#clouds
٩꒰ ˘ ³˘꒱۶ⒽⓤⒼ♥♡̷♡̷	#clouds
꒰⌯͒•·̫•⌯͒꒱	#clouds
˞͛꒰๑ऀ •̆ꈊ͒ू•̆๑ऀ꒱⁇	#clouds
꒰๑͒ ु•ꇵ͒•`๑͒꒱	#clouds
ᵎᵎᵎ꒰ฅ ͒•ૅꇵ͒•⌯͒꒱ฅ	#clouds
٩꒰´·⌢•｀꒱۶⁼³₌₃	#clouds
꒰╬•᷅д•᷄╬꒱	#clouds
(゜-゜)	#confused
(・_・ヾ	#confused
(•ิ_•ิ)?	#confused
｢(ﾟﾍﾟ)	#confused
(・・。)ゞ	#confused
(｀_´)ゞ	#confused
٩(͡๏̯͡๏)۶	#confused
(?・・)σ	#confused
(´･_･`)	#confused
ಠ_ರೃ	#confused
(。ヘ°)	#confused
(´｀;) ？	#confused
( ؕؔʘ̥̥̥̥ ه ؔؕʘ̥̥̥̥ )?	#confused
(‘◇’)?	#confused
(´−｀) ﾝｰ	#confused
｡(*^▽^*)ゞ	#confused
(」・ω・)」	#confused
(^^ゞ	#confused
( ・◇・)？	#confused
(」゜ロ゜)」	#confused
(^～^;)ゞ	#confused
( ?´_ゝ｀)	#confused
(」ﾟヘﾟ)」	#confused
(￣(エ)￣)ゞ	#confused
( •᷄ὤ•᷅)？	#confused
(」ﾟﾛﾟ)｣	#confused
(￣■￣;)!?	#confused
(-_-)ゞ゛	#confused
(＃⌒∇⌒＃)ゞ	#confused
(゜。゜)	#confused
(⊙_◎)	#confused
(⊙_☉)	#confused
(⊙.☉)7	#confused
（⌒▽⌒ゞ	#confused
(◎_◎;)	#confused
(◎-◎；)	#confused
(●__●)	#confused
(●´ω｀●)ゞ	#confused
(☉_☉)	#confused
(♠_♦)	#confused
(ﾟｰﾟ;	#confused
(C_C)	#confused
(屮゜Д゜)屮	#confused
〈(゜。゜)	#confused
「(°ヘ°)	#confused
【・_・?】	#confused
【・ヘ・?】	#confused
﴾͡๏̯͡๏﴿	#confused
⁀⊙﹏☉⁀	#confused
`(๑ △ ๑)`*	#confused
∑(O_O；)	#confused
●.◉	#confused
ヾ(´･ ･｀｡)ノ”	#confused
ヽ(゜Q。)ノ？	#confused
٩(̾●̮̮̃̾•̃̾)۶	#confused
c( O.O )ɔ	#confused
щ(゜ロ゜щ)	#confused
щ(ºДºщ)	#confused
ლ(ಠ_ಠლ)	#confused
ლಠ益ಠ)ლ	#confused
ఠ_ఠ	#confused
く（＾_・）ゝ	#confused
 Σ(‘◉⌓◉’)	#confused
ლ(ٱ٥ٱლ)	#confused
σ(´し_｀〃)ゞ	#confused
˞͛꒰๑ऀ •̆ꈊ͒ू•̆๑ऀ꒱⁇	#confused
Σ(-᷅_-᷄๑)	#confused
ヘ（。□°）ヘ	#crazy
(。ヘ°)	#crazy
(゜▼゜＊）	#crazy
(゜▽゜;)	#crazy
(⊙﹏⊙✿)	#crazy
(⊙_◎)	#crazy
(☉ε　⊙ﾉ)ﾉ	#crazy
(♠_♦)	#crazy
＼(●o○;)ノ	#crazy
＼(☆o◎)／	#crazy
⁀⊙﹏☉⁀	#crazy
`(๑ △ ๑)`*	#crazy
¯\(°_o)/¯	#crazy
~(๑ñ﹏ ⊙☆)ノ	#crazy
ヾ (✿＞﹏ ⊙〃)ノ	#crazy
ヽ(。_°)ノ	#crazy
ヽ(｡ゝω・｡)ﾉ	#crazy
ヾ(｡ꏿ﹏ꏿ)ﾉﾞ	#crazy
ヽ(‘ ∇‘ )ノ	#crazy
ヾ(@゜∇゜@)ノ	#crazy
ヾ(@°▽°@)ノ	#crazy
ヽ(゜Q。)ノ	#crazy
Σ(♡＠﹏ ＠☆)ﾉ”	#crazy
щ (*ㅇ△ Φ☆)ノ	#crazy
へ(゜∇、°)へ	#crazy
ヘ（゜◇、゜）ノ	#crazy
ヘ(゜Д、゜)ノ	#crazy
ヘ(°◇、°)ノ	#crazy
ミ●﹏☉ミ	#crazy
⁽⁽◝(ˊʂ˴⁎)◞՞	#crazy
( ख़ืིڞ◟྄ख़ืི)	#crazy
(｡☉౪ ⊙｡)	#crazy
(/・・)ノ	#dancing
(o´･_･)っ	#dancing
(ﾉ･ｪ･)ﾉ	#dancing
(ﾉ*ﾟｰﾟ)ﾉ	#dancing
(ノ￣ー￣)ノ	#dancing
＼(^▽^＠)ノ	#dancing
＼(ﾟｰﾟ＼)	#dancing
♪(┌・。・)┌	#dancing
ヽ(･ω･ゞ)	#dancing
ヽ(*ﾟｰﾟ*)ﾉ	#dancing
ヽ(^‥^=ゞ)	#dancing
〜(^∇^〜）	#dancing
〜(￣△￣〜)	#dancing
。(⌒∇⌒。)	#dancing
( ﾉ^ω^)ﾉﾟ	#dancing
（〜^∇^)〜	#dancing
(〜￣△￣)〜	#dancing
(。⌒∇⌒)。	#dancing
₍₍ ◝(・ω・)◟ ⁾⁾	#dancing
((┌|o^▽^o|┘))♪	#dancing
(*ﾉ´□`)ﾉ	#dancing
(ˇ_ˇ”) ƪ(˘⌣˘)┐ ƪ(˘⌣˘)ʃ ┌(˘⌣˘)ʃ	#dancing
(~‾⌣‾)~	#dancing
(~‾▿‾)~	#dancing
(~’.')~	#dancing
(~￣▽￣)~	#dancing
(~˘▾˘)~	#dancing
(┌ﾟдﾟ)┌	#dancing
(o^^)o	#dancing
(ﾉ･o･)ﾉ	#dancing
(ノ‥)ノ	#dancing
(ノ´＿ゝ｀）ノ	#dancing
(ノ^_^)ノ	#dancing
(ノ^o^)ノ	#dancing
(ノ￣ω￣)ノ	#dancing
(ノ°ο°)ノ	#dancing
(ﾉ≧∀≦)ﾉ	#dancing
(ﾉﾟ▽ﾟ)ﾉ	#dancing
〈( ^.^)ノ	#dancing
\(._.\) ƪ(‘-’ ƪ)(ʃ ‘-’)ʃ (/._.)/	#dancing
＼(^ω^＼)	#dancing
~(‾⌣‾~)	#dancing
~(‾▿‾)~	#dancing
~(‾▿‾~)	#dancing
~(‘.’~)	#dancing
~(˘▾˘)~	#dancing
~(˘▾˘~)	#dancing
┌(・。・)┘♪	#dancing
┌(˘⌣˘)ʃ	#dancing
┌（★ｏ☆）┘	#dancing
┌(ﾟдﾟ)┘	#dancing
┌|゜з゜｜┘	#dancing
┌|°з°|┘	#dancing
┌U･ｪ･U┘	#dancing
┏((＝￣(ｴ)￣=))┛	#dancing
┏(｀ー´)┛	#dancing
┏(＾0＾)┛	#dancing
┐(ﾟдﾟ┐)	#dancing
└(^o^)┐	#dancing
└(=^‥^=)┐	#dancing
└（★ｏ★）┐	#dancing
└(ﾟдﾟ)┐	#dancing
└@(･ｪ･)@┐	#dancing
└｜゜ε゜｜┐	#dancing
└|°ε°|┐	#dancing
┗(｀ー´)┓	#dancing
┗(＾0＾)┓	#dancing
♪((└|o^▽^o|┐))	#dancing
ヽ( °◇°)ノ	#dancing
ヾ(-_- )ゞ	#dancing
ヾ(･ω･*)ﾉ	#dancing
ヽ(;^o^ヽ)	#dancing
ヾ(＠^∇^＠)ノ	#dancing
ヾ(*´∇`)ﾉ	#dancing
ヽ(*´Д｀*)ﾉ	#dancing
ヾ（*⌒ヮ⌒*）ゞ	#dancing
ヾ(*д*)ﾉ	#dancing
ヾ(´▽｀;)ゝ	#dancing
ヽ(´ー`)ﾉ	#dancing
ヾ(^ ^ゞ	#dancing
ヾ(^^ゞ)	#dancing
ヽ(°◇° )ノ	#dancing
ヾ(ﾟ∀ﾟゞ)	#dancing
ヾ(⌐■_■)ノ♪	#dancing
ヽ(⌐■_■)ノ♪♬	#dancing
ヽ(ﾟｰﾟ*ヽ)	#dancing
o(^^o)	#dancing
ƪ(‾.‾“)┐	#dancing
ƪ(˘⌣˘)┐	#dancing
ƪ(˘⌣˘)ʃ	#dancing
ヘ(^_^ヘ)	#dancing
ヘ(^o^ヘ)	#dancing
ヘ(￣ー￣ヘ)	#dancing
ヘ(￣ω￣ヘ)	#dancing
 ˓˓(ृ　 ु ॑꒳’)ु(ृ’꒳ ॑ ृ　)ु˒˒˒	#dancing
⌌⌈╹드╹⌉⌏	#dancing
(✖╭╮✖)	#dead
(u_u)	#dead
(ヘ。ヘ)	#dead
ｍ（＿　＿；；ｍ	#dead
(*_*)	#dead
(＊0＊;)	#dead
(#+_+)	#dead
(+_+)	#dead
(×_×;）	#dead
(×_×#	#dead
(=ｘェｘ=)	#dead
(ñ_ñ)	#dead
(o_-)	#dead
(º_º)	#dead
（x_x；）	#dead
（Ω_Ω）	#dead
≖‿≖	#dead
✖‿✖	#dead
꒰✘Д✘◍꒱	#dead
ヾ(×× ) ﾂ	#dead
٩(×̯×)۶	#dead
Σ(๑+⌓ o｡)シ	#dead
へ（>_<へ)	#dead
(｡´✚ฺω✚ฺ｀｡)	#dead
* ूི×̺͡×ू ྀ⁎*☠⁎ꂚ*ᵎᵎᵎ	#dead
(^・(I)・^)	#dogs
(^・x・^)	#dogs
(〓￣(∵エ∵)￣〓)	#dogs
(U・x・U)	#dogs
∪･ω･∪	#dogs
┌U･ｪ･U┘	#dogs
└@(･ｪ･)@┐	#dogs
▼o・ェ・o▼	#dogs
▽・ｗ・▽	#dogs
▽・ω・▽	#dogs
ヾ(●ω●)ノ	#dogs
ｏ（Ｕ・ω・）⊃	#dogs
U ´꓃ ` U	#dogs
U・♀・U	#dogs
U｡･ｪ･｡U	#dogs
U＾ェ＾U	#dogs
Ｕ^皿^Ｕ	#dogs
U￣ｰ￣U	#dogs
Uo･ｪ･oU	#dogs
ＵＴｪＴＵ	#dogs
ｖ・。・Ｖ	#dogs
V●ᴥ●V	#dogs
૮( ꒦ິ࿄꒦ີ)ა	#dogs
૮(•⚈͒࿄⚈͒•)ა	#dogs
૮( ꒦ິ⍣꒦ີ)ა	#dogs
૮( ᵒ̌ૢ௰ᵒ̌ૢ )ა	#dogs
૮(꒦ິཅ꒦ິ)ა	#dogs
૮( ᵒ̌ૢཪᵒ̌ૢ )ა	#dogs
Ψ(●°̥̥̥̥̥̥̥̥ ཅ °̥̥̥̥̥̥̥̥●)Ψ	#dogs
“ψ(｀∇´)ψ	#evil
 (。-`ω´-)	#evil
(=｀(∞)´=)	#evil
(○｀ε´○)／＼(○｀ε´○)	#evil
“ψ(｀∇´)ψ	#evil
( ►_◄ )-c<*_*; )	#evil
(・｀ω´・)	#evil
(｡･｀ω´･｡)	#evil
(*-`ω´- )人	#evil
(*｀▽´)_旦~~	#evil
(｀∀´)Ψ	#evil
（｀ー´）	#evil
(｀ε´)	#evil
(｀Д´*)	#evil
（=｀〜´=）	#evil
(=｀ω´=)	#evil
(=｀ェ´=)	#evil
(◞≼◉ื≽◟ ;益;◞≼◉ื≽◟)Ψ	#evil
(☼Д☼)	#evil
(σ-`д･´)	#evil
(ц｀ω´ц*)	#evil
(ﾒ｀ﾛ´)/	#evil
^(#｀∀´)_Ψ	#evil
^（｀ω´ ）^ψ	#evil
←～（o ｀▽´ )oΨ	#evil
←~∋(｡Ψ▼ｰ▼)∈	#evil
∋━━o(｀∀´oメ）～→	#evil
| ｀Д´|	#evil
꒰(@｀꒳´)꒱	#evil
o(｀ω´*)o	#evil
ƪ(`▿▿▿▿´ƪ)	#evil
ψ(*｀ー´)ψ	#evil
ψ(｀∇´)ψ	#evil
Ψ(｀▽´)Ψ	#evil
Ψ(｀◇´)Ψ	#evil
ಠﭛಠ	#evil
⁞⁝•ֱ̀␣̍•́⁝⁞	#evil
(((o(*ﾟ▽ﾟ*)o)))	#excited
(★^O^★)	#excited
(ﾉ･ｪ･)ﾉ	#excited
＼（＠￣∇￣＠）／	#excited
＼(^▽^＠)ノ	#excited
ヾ(@^▽^@)ノ	#excited
o((*^▽^*))o	#excited
Ｏ(≧▽≦)Ｏ	#excited
(((＼（＠v＠）／)))	#excited
(((o(*ﾟ▽ﾟ*)o)))	#excited
(* >ω<)	#excited
(*≧▽≦)	#excited
(/^▽^)/	#excited
(ﾉ´ヮ´)ﾉ*:･ﾟ✧	#excited
(ﾉ≧∀≦)ﾉ	#excited
(ﾉ◕ヮ◕)ﾉ*:・ﾟ✧	#excited
\( ‘з’)/	#excited
＼(*T▽T*)／	#excited
＼（＾▽＾）／	#excited
＼（Ｔ∇Ｔ）／	#excited
☆*･゜ﾟ･*\(^O^)/*･゜ﾟ･*☆	#excited
☆*:.｡. o(≧▽≦)o .｡.:*☆	#excited
ヽ( ★ω★)ノ	#excited
ヽ(;^o^ヽ)	#excited
ヽ(；▽；)ノ	#excited
ヾ(。◕ฺ∀◕ฺ)ノ	#excited
ヾ(＠† ▽ †＠）ノ	#excited
ヾ(＠^∇^＠)ノ	#excited
ヾ(＠^▽^＠)ﾉ	#excited
ヾ（＠＾▽＾＠）ノ	#excited
ヾ(＠゜▽゜＠）ノ	#excited
ヾ(@°▽°@)ノ	#excited
ヾ(＠°▽°＠)ﾉ	#excited
ヽ(*≧ω≦)ﾉ	#excited
ヽ(*⌒∇⌒*)ﾉ	#excited
ヽ(^。^)丿	#excited
ヽ(＾Д＾)ﾉ	#excited
ヽ(=^･ω･^=)丿	#excited
o(〃＾▽＾〃)o	#excited
o(^▽^)o	#excited
Ｏ(≧∇≦)Ｏ	#excited
o(≧∇≦o)	#excited
о(ж＞▽＜)ｙ ☆	#excited
٩(^ᴗ^)۶	#excited
(๑>ᴗ<๑)	#excited
٩(๑꒦ິȏ꒦ິ๑)۶	#excited
٩(●˙▿˙●)۶…⋆ฺ	#excited
*✲ﾟ*｡✧٩(･ิᴗ･ิ๑)۶*✲ﾟ*｡✧	#excited
σ(≧ε≦ｏ)	#excited
٩(๑ơలơ)۶♡	#excited
(۶ꈨຶꎁꈨຶ )۶ʸᵉᵃʰᵎ	#excited
٩(•̤̀ᵕ•̤́๑)ᵒᵏᵎᵎᵎᵎ	#excited
ミ．．ミ	#fish and sea creatures
（：。）ミ	#fish and sea creatures
(/)(;,,;)(/)	#fish and sea creatures
(゜))<<	#fish and sea creatures
(°))<<	#fish and sea creatures
(°)#))<<	#fish and sea creatures
(◐ o ◑ )	#fish and sea creatures
(Q )) >	#fish and sea creatures
＜コ：ミ	#fish and sea creatures
>_)))彡	#fish and sea creatures
>^)))< ～～	#fish and sea creatures
>゜))))彡	#fish and sea creatures
>=<	#fish and sea creatures
≧〔゜゜〕≦	#fish and sea creatures
Ｃ：。ミ	#fish and sea creatures
V=(° °)=V	#fish and sea creatures
ζ°)))彡	#fish and sea creatures
くコ:彡	#fish and sea creatures
ミ(・・)ミ	#fish and sea creatures
ミ[°°]ミ	#fish and sea creatures
❥᷁)͜͡˒ ⋊	#fish and sea creatures
( -_-)旦~	#food and drink
(*^◇^)_旦	#food and drink
(＃´ー´)旦	#food and drink
(＾-＾)＿日	#food and drink
~(=^‥^)_旦~	#food and drink
~~旦_(･o･;)	#food and drink
(　 ゜Д゜)⊃旦	#food and drink
( ´･ω･`)_且~	#food and drink
( ^-^)_旦””	#food and drink
( ˘▽˘)っ♨	#food and drink
(； ｀ｪ´ ；)b三b	#food and drink
(。・・)_且	#food and drink
(*｀▽´)_旦~~	#food and drink
~旦_(^O^ )	#food and drink
ｏ口(・∀・ )	#food and drink
且_(・_・ )	#food and drink
且_(ﾟ◇ﾟ；)ノﾞ	#food and drink
◥█̆̈◤࿉∥	#food and drink
( 。・_・。)人(。・_・。 )	#friends
( ⌒o⌒)人(⌒-⌒ )v	#friends
(･_･”)/＼(･_･”)	#friends
(*´∀｀*人*´∀｀*)	#friends
（*＾ω＾）人（＾ω＾*）	#friends
(/^-^(^ ^*)/	#friends
(＾○＾)オ(＾▽＾)ハ(＾０＾)ツ～	#friends
(°◇°人°◇°)	#friends
(=´∀`)人(´∀‘=)	#friends
(○｀ε´○)／＼(○｀ε´○)	#friends
└(^o^ )Ｘ( ^o^)┘	#friends
ヘ( ^o^)ノ＼(^_^ )	#friends
｡*:★(´・ω・人・ω・`)｡:゜★｡	#friends
( ｡･_･｡)人(｡･_･｡ )	#friends
（　＾＾）人（＾＾　）	#friends
(・_・”)／＼(・_・”)	#friends
(・_・)〆＼(Ｔ＿Ｔ）	#friends
(((＠°▽°＠)八(＠°▽°＠)))	#friends
(((*°▽°*)八(*°▽°*)))♪	#friends
(*･∀･)／＼(･∀･*)	#friends
(*´･ω･)(･ω･`*)	#friends
(*´°̥̥̥̥̥̥̥̥﹏°̥̥̥̥̥̥̥̥ )人(´°̥̥̥̥̥̥̥̥ω°̥̥̥̥̥̥̥̥｀)	#friends
(*^o^)人(^o^*)	#friends
(〃￣д￣)八( ￣д￣ )八(￣д￣〃)	#friends
(〃⌒▽⌒)八(〃⌒▽⌒〃)八(⌒▽⌒〃)	#friends
(^^)-(^^)-(^^)-(^^)-(^^)	#friends
（＾▽＾）／＼（＾▽＾）	#friends
(◎｀・ω・´)人(´・ω・｀*)	#friends
(ｏ・_・)ノ”(ᴗ_ ᴗ。)	#friends
(Ɔ˘⌣˘)(˘⌣˘)˘⌣˘ C)	#friends
(人-ω-)｡o.ﾟ｡*･★Good Night★･*｡ﾟo｡(-ω-人)	#friends
／(v x v｡)人(｡v x v)＼	#friends
＼(　^o)( ^ 0 ^ )(o^　)／	#friends
＼（＾∀＾）メ（＾∀＾）ノ	#friends
＼（★´−｀）人（´▽｀★）／	#friends
━(○´ｴ｀)(´ｴ｀●)━	#friends
☆-(ノﾟДﾟ)八(ﾟДﾟ )ノ	#friends
♡(*´∀｀*)人(*´∀｀*)♡	#friends
♪ヽ( ⌒o⌒)人(⌒-⌒ )v ♪	#friends
ヽ（　＾＾）人（＾＾　）ノ	#friends
ヽ(^ω^)人(^▽、^)ﾉ	#friends
ヽ(*^ｰ^)人(^ｰ^*)ノ	#friends
ヽ(´Д｀)人(´Д｀)人(´Д｀)ノ	#friends
ヽ(´Д｀)人(´Д｀)人(´Д｀)ノ〜♪	#friends
ヽ(＾▽＾)人(＾▽＾)人(＾▽＾)ﾉ	#friends
ヾ(￣ー￣)X(^∇^)ゞ	#friends
ヽ(∀゜ )人( ゜∀)ノ	#friends
ヽ(○´∀)乂(*´∀`*）乂(∀`●)	#friends
˓˓(ृ　 ु ॑꒳’)ु(ृ’꒳ ॑ ृ　)ु˒˒˒	#friends
♬♩˂₍͔⁽ˆ⁰ˆ⁾₎͔˃ ͟͟͞͞≣͟ ͟͟͞͞˂₍͕⁽ˆ⁰ˆ⁾₎͕˃♪♫	#friends
(⁎·́௰·̀)◞ ͂͂(˒̩̩̥́௰˓̩̩̥̀⁎)	#friends
 *✲ﾟ*｡✧٩(･ิᴗ･ิ๑)۶٩(･ิᴗ･ิ๑)۶*✲ﾟ*｡✧	#friends
(;•͈́༚•͈̀)(•͈́༚•͈̀;)՞༘՞༘՞	#friends
(;-_-)/	#giving up
(oT-T)尸	#giving up
(一。一;;）	#giving up
(　-。-)	#giving up
(-_＼)	#giving up
(;-_-)ノ	#giving up
(;*´Д`)ﾉ	#giving up
（；￣д￣）	#giving up
(。-ω-)ﾉ	#giving up
((-_-))	#giving up
(@_@)	#giving up
(/ _ ; )	#giving up
（￣□￣；）	#giving up
（~～~）	#giving up
（◎ー◎；）	#giving up
（ー△ー；）	#giving up
(o_ _)o	#giving up
(ﾉ_ _)ﾉ	#giving up
(ノ#-_-)ノ	#giving up
(ﾉ´ｰ`)ﾉ	#giving up
(ﾉ￣д￣)ﾉ	#giving up
(￣^￣)尸	#giving up
/(;-_-)	#giving up
＼( ｀.∀´)／	#giving up
＼(-___________-;)／	#giving up
＼（－－）／	#giving up
＼(-o- )	#giving up
~(>_<。)＼	#giving up
ヾ(-_-;)	#giving up
ヽ(｀◇´)/	#giving up
o(-_-;*)	#giving up
o(╥﹏╥)o	#giving up
ƪ(‾_‾)ʃ	#giving up
t(-_-t)	#giving up
y-(~。~；)	#giving up
ヘ(_ _ヘ)	#giving up
ﾍ(;´Д｀ﾍ)	#giving up
ヘ（´ｏ｀）ヘ	#giving up
ﾍ(￣ ￣;ﾍ)	#giving up
ヘ(￣ー￣ヘ)	#giving up
( ´ ▽ ` )ﾉ	#happy
(｡´∀｀)ﾉ	#happy
(((o(*ﾟ▽ﾟ*)o)))	#happy
(*´・ｖ・)	#happy
(*^▽^*)	#happy
(´∇ﾉ｀*)ノ	#happy
(^・ω・^ )	#happy
(^～^)	#happy
（＾凹＾）	#happy
(=^-ω-^=)	#happy
(=^･ω･^)y＝	#happy
(¬‿¬)	#happy
(★^O^★)	#happy
(ノ^∇^)	#happy
＼（＠￣∇￣＠）／	#happy
＼(^▽^＠)ノ	#happy
⊂((・▽・))⊃	#happy
ヽ(；▽；)ノ	#happy
ヾ(@^▽^@)ノ	#happy
o((*^▽^*))o	#happy
Ｏ(≧▽≦)Ｏ	#happy
ლ(⌒▽⌒ლ)	#happy
- =͟͟͞͞ ( ꒪౪꒪)ฅ✧	#happy
-(๑☆‿ ☆#)ᕗ	#happy
〜(^∇^〜）	#happy
〜(￣▽￣〜)	#happy
。(⌒∇⌒。)	#happy
｡^‿^｡	#happy
｡◕‿◕｡	#happy
“ヽ(´▽｀)ノ”	#happy
( ´ ▽ ` )ﾉ	#happy
(　´∀｀)	#happy
( ^_^)／	#happy
(　＾∇＾)	#happy
( ͡° ͜ʖ ͡°)	#happy
( ⋂‿⋂’)	#happy
( ﾟ▽ﾟ)/	#happy
( ﾉ^ω^)ﾉﾟ	#happy
（＿´ω｀）	#happy
(-‿◦☀)	#happy
(-^〇^-)	#happy
（‐＾▽＾‐）	#happy
（〜^∇^)〜	#happy
(〜￣▽￣)〜	#happy
(・∀・)	#happy
(.=^・ェ・^=)	#happy
(・◇・)	#happy
(｡･ω･｡)	#happy
(。⌒∇⌒)。	#happy
(“⌒∇⌒”)	#happy
(((＼（＠v＠）／)))	#happy
(((o(*ﾟ▽ﾟ*)o)))	#happy
((┌|o^▽^o|┘))♪	#happy
(︶ω︶)	#happy
(*‿*✿)	#happy
（*´▽｀*）	#happy
(*＾＾*)	#happy
(*＾▽＾)／	#happy
(*^▽^*)	#happy
(*＾ワ＾*)	#happy
(*¬*)	#happy
(*~▽~)	#happy
(*≧▽≦)	#happy
(*⌒∇⌒*)	#happy
(*⌒▽⌒*)θ～♪	#happy
(/•ิ_•ิ)/	#happy
(/^▽^)/	#happy
(•‿•)	#happy
(•̀ᴗ•́)و ̑̑	#happy
(•ิ_•ิ)	#happy
(｀・ω・´)”	#happy
(´∀`)	#happy
(´⌣`ʃƪ)	#happy
(´▽`ʃƪ)	#happy
(´ω｀★)	#happy
(´ヮ`)	#happy
(^ _ ^)/	#happy
（＾_＾）	#happy
(^-^*)/	#happy
(^(I)^)	#happy
(^(エ)^)	#happy
(^∇^)	#happy
（＾⊆＾）	#happy
(＾▽＾)	#happy
（＾ｖ＾）	#happy
(＾ω＾)	#happy
(￣▽￣)ノ	#happy
(￣▽+￣*)	#happy
（￣ー￣）	#happy
(゜▼゜＊）	#happy
(゜▽゜;)	#happy
(°∀°)b	#happy
（=´∇｀=）	#happy
(=^･^=)	#happy
(＝⌒▽⌒＝)	#happy
（＞ｙ＜）	#happy
(~‾⌣‾)~	#happy
(~￣▽￣)~	#happy
(~˘▾˘)~	#happy
(∩_∩)	#happy
(∩▂∩)	#happy
(∩❛ڡ❛∩)	#happy
(≡^∇^≡)	#happy
(≧∇≦)/	#happy
(⊙ヮ⊙)	#happy
（⌒▽⌒）	#happy
(⌒▽⌒)☆	#happy
（⌒▽⌒ゞ	#happy
(─‿─)	#happy
(▰˘◡˘▰)	#happy
(◍•ᴗ•◍)❤	#happy
(●´∀｀●)	#happy
(●⌒∇⌒●)	#happy
(◐ω◑ )	#happy
(◑‿◐)	#happy
(☆^ー^☆)	#happy
(☆^O^☆)	#happy
(✌ﾟ∀ﾟ)☞	#happy
(✿´‿`)	#happy
(❀◦‿◦)	#happy
(❁´‿`❁)*✲ﾟ*	#happy
(❁´▽`❁)*✲ﾟ*	#happy
(๑^っ^๑)	#happy
(n˘v˘•)¬	#happy
(o^^)o	#happy
(o⌒．⌒o)	#happy
（ｖ＾＿＾）ｖ	#happy
(ღ˘⌣˘ღ)	#happy
(ღ˘⌣˘ღ) ♫･*:.｡. .｡.:*･	#happy
(ॢ˘⌣˘ ॢ⑅)	#happy
~(⁰▿⁰)~	#happy
(ી(΄◞ิ౪◟ิ‵)ʃ)♥	#happy
(ᅌᴗᅌ* )	#happy
(っ˘ڡ˘ς)	#happy
(ノ*゜▽゜*)	#happy
(ﾉ´ヮ´)ﾉ*:･ﾟ✧	#happy
(ノ^_^)ノ	#happy
(ノ＞▽＜。)ノ	#happy
(ﾉﾟ▽ﾟ)ﾉ	#happy
〈( ^.^)ノ	#happy
(•ˇ‿ˇ•)-→	#happy
*(*´∀｀*)☆	#happy
＼(*T▽T*)／	#happy
＼（＾▽＾）／	#happy
＼(^ω^＼)	#happy
＼（Ｔ∇Ｔ）／	#happy
´･ᴗ･`	#happy
^ ͜• ^	#happy
°˖ ✧◝(○ ヮ ○)◜✧˖ °	#happy
°˖✧◝(⁰▿⁰)◜✧˖°	#happy
~(‾⌣‾~)	#happy
~(˘▾˘)~	#happy
~(˘▾˘~)	#happy
~ヾ ＾∇＾	#happy
~ヾ(＾∇＾)	#happy
∩( ・ω・)∩	#happy
∩(︶▽︶)∩	#happy
≖‿≖	#happy
≧(´▽｀)≦	#happy
⊂(^(工)^)⊃	#happy
⊙▽⊙	#happy
⊙ω⊙	#happy
┌(˘⌣˘)ʃ	#happy
╭ (oㅇ‿ o#)ᕗ	#happy
▽・ω・▽	#happy
☆*･゜ﾟ･*\(^O^)/*･゜ﾟ･*☆	#happy
☆*:.｡. o(≧▽≦)o .｡.:*☆	#happy
♪((└|o^▽^o|┐))	#happy
♫꒰･‿･๑꒱	#happy
✖‿✖	#happy
❣◕ ‿ ◕❣	#happy
꒰ღ˘‿˘ற꒱❤⃛	#happy
ー( ´ ▽ ` )ﾉ	#happy
ヽ(･∀･)ﾉ	#happy
ヽ(;^o^ヽ)	#happy
ヽ(；▽；)ノ	#happy
ヾ(｡･ω･｡)	#happy
ヽ(‘ ∇‘ )ノ	#happy
ヾ(＠† ▽ †＠）ノ	#happy
ヾ(＠^∇^＠)ノ	#happy
ヾ(＠^▽^＠)ﾉ	#happy
ヾ（＠＾▽＾＠）ノ	#happy
ヾ(@゜∇゜@)ノ	#happy
ヾ(＠゜▽゜＠）ノ	#happy
ヾ(@°▽°@)ノ	#happy
ヾ(＠⌒ー⌒＠)ノ	#happy
ヽ(*・ω・)ﾉ	#happy
ヽ(*≧ω≦)ﾉ	#happy
ヽ(*⌒∇⌒*)ﾉ	#happy
ヾ（*⌒ヮ⌒*）ゞ	#happy
ヾ(´▽｀;)ゝ	#happy
ヾ(^ ^ゞ	#happy
ヾ(＾-＾)ノ	#happy
ヽ(^。^)丿	#happy
ヾ(＾∇＾)	#happy
ヽ(＾Д＾)ﾉ	#happy
ヽ(=^･ω･^=)丿	#happy
୧( ॑ധ ॑)୨	#happy
٩(^ᴗ^)۶	#happy
d(=^･ω･^=)b	#happy
d=(´▽｀)=b	#happy
o (^‿^✿)	#happy
o(〃＾▽＾〃)o	#happy
o(^^o)	#happy
o(^▽^)o	#happy
Ｏ(≧∇≦)Ｏ	#happy
o(≧∇≦o)	#happy
ｏ（Ｕ・ω・）⊃	#happy
p(*＾-＾*)q	#happy
ƪ(˘⌣˘)┐	#happy
ƪ(˘⌣˘)ʃ	#happy
V(=^･ω･^=)v	#happy
ʘ‿ʘ	#happy
о(ж＞▽＜)ｙ ☆	#happy
ლ(́◉◞౪◟◉‵ლ)	#happy
ಥ‿ಥ	#happy
ヘ(^_^ヘ)	#happy
ヘ(^o^ヘ)	#happy
へ(゜∇、°)へ	#happy
川´･ω･`川	#happy
(◡‿◡✿)	#happy
(✿◠‿◠)	#happy
(◕‿◕✿)	#happy
(๑>ᴗ<๑)	#happy
ლ(๏‿๏ ◝ლ)	#happy
(⁎⚈᷀᷁ᴗ⚈᷀᷁⁎)	#happy
(⁎⁍̴ڡ⁍̴⁎)	#happy
♝ཻ༨͜♝ཻ)✩⃛	#happy
꒪̆౪̮꒪̆	#happy
(ⓥꇳⓥ*)	#happy
＼＼\\ ٩(`(エ)´ )و //／／	#happy
(๑✧◡✧๑)	#happy
(๑>◡<๑)	#happy
*✧₊✪͡◡ू✪͡	#happy
♪(๑ᴖ◡ᴖ๑)♪	#happy
(•ૢꆤ ˙̫̮ ꆤ•ૢ)	#happy
((ඏ.̫ඏ*))	#happy
(•ؔʶ̷ ˡ̲̮ ؔʶ̷)✧	#happy
(｡◝‿◜｡)	#happy
(。≖ˇ∀ˇ≖。)	#happy
(๑^ں^๑)	#happy
(*′☉.̫☉)	#happy
(*´꒳`*)	#happy
ȏ.̮ȏ	#happy
( ்ͦˏ౦͜ˎ ்ͦ)	#happy
✾꒡ .̮ ꒡✾	#happy
☆*✲ﾟ*｡(((´♡‿♡`+)))｡*ﾟ✲*☆	#happy
((ꉺꈊꉺ)ꀢ༣	#happy
(ෆ ͒•∘̬• ͒)◞	#happy
∩˙▿˙∩	#happy
ॱ॰⋆(˶ॢ‾᷄﹃‾᷅˵ॢ)ӵᵘᵐᵐᵞ♡♡♡	#happy
(•⚗৺⚗•)	#happy
(⊃‿⊂)	#hiding
|_・)	#hiding
|･ω･｀)	#hiding
｜−・;）	#hiding
|ω・）	#hiding
|ω･)و ̑̑༉	#hiding
|д꒪ͧ)…	#hiding
┬┴┬┴┤(･_├┬┴┬┴	#hiding
ﾍ(･_|	#hiding
|₋ॢọ̶̶̷̥᷅๑)‧˚⁺	#hiding
川o･-･)ﾉ	#hiding
┻┳|･ω･)	#hiding
┻┳|･ω･)ﾉ	#hiding
ᒄ₍⁽ˆ⁰ˆ⁾₎ᒃ♪♬	#holidays
⁝⁝⸃₍⁽΄˙̥΄ ⁾₎⸜☂	#holidays
˭̡̞(◞⁎˃ᆺ˂)◞₎₎=͟͟͞͞˳˚॰°ₒ৹๐	#holidays
ʕ”̮ुॽु✚⃞ྉ*✲ﾟ*｡⋆	#holidays
ʕ”̮ुॽु✚⃞ྉ	#holidays
ʕ•̫͡•ॽु✚⃞ྉ*✲ﾟ*｡⋆	#holidays
(◞ꈍ∇ꈍ)◞⋆**✚⃞ྉ	#holidays
⊂((・▽・))⊃	#hugging
(>^_^)><(^o^<)	#hugging
(Ɔ˘⌣˘)(˘⌣˘)˘⌣˘ C)	#hugging
(づ｡◕‿‿◕｡)づ	#hugging
(づ￣ ³￣)づ	#hugging
(っ˘̩╭╮˘̩)っ	#hugging
＼(^o^)／	#hugging
d=(´▽｀)=b	#hugging
ლ(́◉◞౪◟◉‵ლ)	#hugging
٩꒰ ˘ ³˘꒱۶ⒽⓤⒼ♥♡̷♡̷	#hugging
٩(๑•◡-๑)۶ⒽⓤⒼ❤	#hugging
ヘ（。□°）ヘ	#hurt
（。_°☆＼(- – )	#hurt
(。_＋)＼	#hurt
((((*｡_｡)_	#hurt
(xLx)ヾ	#hurt
(ノ>ノ)	#hurt
｢(＝＞o≦＝)ﾉ	#hurt
/(*ι*)ヾ	#hurt
／(x~x)＼	#hurt
~(>_<~)	#hurt
┗( ●-﹏ ｀｡)づ	#hurt
◎☆（♯××）┘	#hurt
☆￣(＞。☆)	#hurt
☆⌒(＞。≪)	#hurt
ヘ(>_<ヘ)	#hurt
(╯3╰)	#kissing
( ˘ ³˘)♥	#kissing
( c//”-}{-*\x)	#kissing
(-ε- )	#kissing
(TεT)	#kissing
ლ(´◉❥◉｀ლ)	#kissing
( ˘ ³˘)❤	#kissing
( ⋆•ิ ᴈ-ิ(ᵕ❥ ᵕ⁎ ॢ)	#kissing
( ु ॕ ӟ ॕ)ु	#kissing
（＿ε＿）	#kissing
(｡・//ε//・｡)	#kissing
（。ˇ ⊖ˇ）	#kissing
(‘ε’)	#kissing
（＠ーεー＠）	#kissing
（*＾3＾）	#kissing
（*＾3＾）/～☆	#kissing
（*＾3＾）/～♡	#kissing
(*￣з￣)	#kissing
(#^.^#)	#kissing
（´・｀ ）♡	#kissing
(´ε｀ )♡	#kissing
(´ε｀*)	#kissing
（￣ε￣＠）	#kissing
(~￣³￣)~	#kissing
(○´3｀)ﾉ	#kissing
（○゜ε＾○）	#kissing
(☆´3｀)	#kissing
(ɔˆ ³(ˆ⌣ˆc)	#kissing
(ʃƪ ˘ ³˘)	#kissing
(ʃƪ˘ﻬ˘)	#kissing
(ΘεΘ;)	#kissing
(ΦзΦ)	#kissing
(ु*´З`)ू❣	#kissing
(づ｡◕‿‿◕｡)づ	#kissing
(づ￣ ³￣)づ	#kissing
(っ˘з(˘⌣˘ )	#kissing
*ଘ( ॢᵕ꒶̮ᵕ(꒡ᵋ ꒡ღ)	#kissing
|(￣3￣)|	#kissing
|°з°|	#kissing
～(^з^)-☆	#kissing
～(^з^)-♡	#kissing
ヽ(*´з｀*)ﾉ	#kissing
ϵ( ‘Θ’ )϶	#kissing
ლ(|||⌒εー|||)ლ	#kissing
*ଘ( ॢᵕ꒶̮ᵕ(꒡ᵋ ꒡ღ)zZ‥	#kissing
(≡ε≡；)	#kissing
(。´✷ฺЗ✷ฺ)・;゛.:’;、	#kissing
(。≖ˇ3ˇ≖｡)	#kissing
(っ˘зʕ•̫͡•ʔcнϋෆ*	#kissing
σ(≧ε≦ｏ)	#kissing
(*´艸`*)	#laughing
(●´艸`)	#laughing
｡ﾟ(TヮT)ﾟ｡	#laughing
“ψ(｀∇´)ψ	#laughing
（　´∀｀）	#laughing
( ´艸｀)	#laughing
（・∀・）	#laughing
(；-◞౪◟-)	#laughing
(｡ >艸<)	#laughing
(*・艸・)	#laughing
(*≧▽≦)ﾉｼ))	#laughing
(*≧艸≦)	#laughing
（＾ｖ＾）	#laughing
（＞ｙ＜）	#laughing
（⌒▽⌒）	#laughing
(◎ヮ◎)	#laughing
(ノ＞▽＜。)ノ	#laughing
ʕ̡̢̡̡̢̡̡̢♡ᵒ̴̷͈艸ᵒ̴̷͈॰ʔ̢̡̢̢̡̢̢̡̢✧	#laughing
Σ (੭ु ຶਊ ຶ)੭ु⁾⁾	#laughing
ꉂ (ᵔ̴̶̤᷄ꇴ ॣᵔ̴̶̤᷅⌯))л̵ʱªʱª⁎*.＊	#laughing
(* ˚᷄ 艸 ˚᷅ *)	#laughing
(੭ु˙꒳​˙)੭ु⁾⁾	#laughing
(˵¯̴͒ꇴ¯̴͒˵)	#laughing
Σ(꒪ॢ∀꒪;)՞л̵ʱªʱª	#laughing
ꋧ(⁎ˊ̭ સˆ̀)◞₎̵₎	#laughing
꒰*⑅˃̶͈ ৺˂̶͈⑅꒱੭ु⁾⁾·°	#laughing
((ꉺꈊꉺ)ꀢ༣	#laughing
 (⌯꒪͒ ૢ∀ ૢ꒪͒) ੭ੇ	#laughing
( c//”-}{-*\x)	#love
(｡-_-｡ )人( ｡-_-｡)	#love
(‘∀’●)♡	#love
(*´∀｀*人*´∀｀*)	#love
(/^-^(^ ^*)/	#love
(´ ▽｀).。ｏ♡	#love
(´∀｀)♡	#love
(●´□`)♡	#love
(●♡∀♡)	#love
ლ(´◉❥◉｀ლ)	#love
( ´͈ ॢꇴ `͈ॢ)･*♡	#love
( ＾◡＾)っ✂❤	#love
( ˘ ³˘)♥	#love
( ˘ ³˘)❤	#love
( ⋆•ิ ᴈ-ิ(ᵕ❥ ᵕ⁎ ॢ)	#love
(・_・)❤(-_-)	#love
(｡・//ε//・｡)	#love
(｡･ω･｡)ﾉ♡	#love
(｡’▽’｡)♡	#love
（。ˇ ⊖ˇ）♡	#love
(｡♥‿♥｡)	#love
(* ˘⌣˘)◞[_]♥[_]ヽ(•‿• )	#love
（*´▽｀*）	#love
（*＾3＾）/～♡	#love
(*°∀°)=3	#love
(⁎⁍̴̛͂▿⁍̴̛͂⁎)*✲ﾟ*｡⋆♡	#love
(/∇＼*)｡o○♡	#love
（〃・ω・〃）	#love
（´・｀ ）♡	#love
(´▽`ʃƪ)♡	#love
(´ε｀ )♡	#love
（´ω｀♡%）	#love
(˘▼˘>ԅ( ˘⌣ƪ)	#love
(ˆˇˆ)-c<˘ˑ˘)	#love
(>’o')> ♥ <(‘o’<)	#love
(>^_^)><(^o^<)	#love
(∩˃o˂∩)♡	#love
(∿°○°)∿ ︵ ǝʌol	#love
(◍•ᴗ•◍)❤	#love
（●´∀｀）ノ♡	#love
(◞ꈍ∇ꈍ)◞⋆**✚⃞ྉ	#love
(♡ᵉ̷͈ัॢωᵉ̷͈ัॢ )‧₊°♡	#love
(♥ó㉨ò)ﾉ♡	#love
(♥ω♥ ) ~♪	#love
(♥ω♥*)	#love
(✿ ♥‿♥)	#love
(๑・ω-)～♥”	#love
(๑°꒵°๑)･*♡	#love
(Ɔ ˘⌣˘)♥(˘⌣˘ C)	#love
(ɔˆ ³(ˆ⌣ˆc)	#love
(ʃƪ ˘ ³˘)	#love
(ʃƪ˘ﻬ˘)	#love
(ღ˘⌣˘ღ)	#love
(ી(΄◞ิ౪◟ิ‵)ʃ)♥	#love
(づ￣ ³￣)づ	#love
(っ˘з(˘⌣˘ )	#love
(人-ω-)｡o.ﾟ｡*･♡Good Night♡･*｡ﾟo｡(-ω-人)	#love
（人´∀`*）	#love
*ଘ( ॢᵕ꒶̮ᵕ(꒡ᵋ ꒡ღ)	#love
～(^з^)-♡	#love
♡〜٩(^▿^)۶〜♡	#love
♡｡ﾟ.(*♡´‿` 人´‿` ♡*)ﾟ♡ °・	#love
♡(*´･ω･)(･ω･`*)♡	#love
♡(*´∀｀*)人(*´∀｀*)♡	#love
♡(˃͈ દ ˂͈ ༶ )	#love
♡´･ᴗ･`♡	#love
♡＾▽＾♡	#love
♡꒰*･ω･人･ω･*꒱♡	#love
♡o｡.(✿ฺ｡ ✿ฺ)	#love
♡o｡(๑๏‿ฺ๏๑)｡o♡	#love
♥(ˆ⌣ˆԅ)	#love
♥(✿ฺ´∀`✿ฺ)ﾉ	#love
♥（ﾉ´∀`）	#love
♥～(‘▽^人)	#love
♥╣[-_-]╠♥	#love
✿♥‿♥✿	#love
꒰˘̩̩̩⌣˘̩̩̩๑꒱♡	#love
꒰♡ˊ͈ ु꒳ ूˋ͈꒱.⑅*♡	#love
ヾ(◍’౪`◍)ﾉﾞ♡	#love
ヽ(愛´∀｀愛)ノ	#love
٩꒰ ˘ ³˘꒱۶~♡	#love
ʚ♡⃛ɞ(ू•ᴗ•ू❁)	#love
ƪ(♥ﻬ♥)ʃ	#love
ლ(|||⌒εー|||)ლ	#love
ლ(́◉◞౪◟◉‵ლ)	#love
웃+웃=❤	#love
乂❤‿❤乂	#love
*ଯ( ॢᵕ꒶̮ᵕ)ॢഒ*♡	#love
*ଘ( ॢᵕ꒶̮ᵕ(꒡ᵋ ꒡ღ)zZ‥	#love
(๑ˊ͈ ॢꇴ ˋ͈)〜♡॰ॱ	#love
꒰⑅ᵕ༚ᵕ꒱˖♡	#love
♡˖꒰ᵕ༚ᵕ⑅꒱	#love
◟( ˊ̱˂˃ˋ̱ )◞♡⃛◟( ˊ̱˂˃ˋ̱ )◞	#love
( ᵒ̴̶̷̤̀ुωᵒ̴̶̷̤́ू )❤”	#love
♡ლ(-༗‿༗-)ლ♡	#love
☆*✲ﾟ*｡(((´♡‿♡`+)))｡*ﾟ✲*☆	#love
٩(๑ơలơ)۶♡	#love
♡ლζ(♛ε♛*ζლ♡	#love
(ෆ ͒•∘̬• ͒)◞	#love
ॱ॰⋆(˶ॢ‾᷄﹃‾᷅˵ॢ)ӵᵘᵐᵐᵞ♡♡♡	#love
♡(㋭ ਊ ㋲)♡	#love
੯ूᵕ̤ू U॒॒॒॒॒୭ℒℴѵℯ❤	#love
Ϛ⃘๑•͡ .̫•๑꒜ℒℴѵℯ❤	#love
(≚ᄌ≚)ℒℴѵℯ❤	#love
(⑅ ॣ•͈ᴗ•͈ ॣ)∟ᵒᵛᵉ૫૦∪	#love
ପ(๑•̀ᴗ-♡ॢ)fෆr yෆu*೨⋆*✩	#love
٩(๑•◡-๑)۶ⒽⓤⒼ❤	#love
¯\_(ツ)_/¯	#meh
ƪ(‾ε‾“)ʃ	#meh
（＾～＾）	#meh
（ｖ＾＿＾）ｖ	#meh
＼(;´□｀)/	#meh
＼（〇_ｏ）／	#meh
＼⍩⃝／	#meh
¯\(°_o)/¯	#meh
┐(‘～`；)┌	#meh
┐(￣ー￣)┌	#meh
┐(￣ヮ￣)┌	#meh
┗(･ω･;)┛	#meh
┗┃・ ■ ・┃┛	#meh
┗┐ヽ(′Д、`*)ﾉ┌┛	#meh
╮ (. ❛ ᴗ ❛.) ╭	#meh
╮ (☆-_ ⊙;)ゞ	#meh
╮(•˘︿ ˘•)╭	#meh
╮(＾▽＾)╭	#meh
╮(─▽─)╭	#meh
╮(╯▽╰)╭	#meh
╰(　´◔　ω　◔ `)╯	#meh
ヽ( ´¬`)ノ	#meh
ヽ(　￣д￣;)ノ	#meh
ヽ（・＿・；)ノ	#meh
ヽ(。_°)ノ	#meh
ヽ(‘ー`)ノ	#meh
ヾ(*´ー`)ノ	#meh
ヽ（*ω。）ノ	#meh
ヾ(´￢｀)ﾉ	#meh
ヽ(´～｀；）	#meh
ヽ（´ー｀）┌	#meh
ヽ(´ー`)ﾉ	#meh
ヾ(´A｀)ノﾟ	#meh
ヽ(ー_ー )ノ	#meh
ヾ(ｏ･ω･)ﾉ	#meh
٩(-̮̮̃-̃)۶	#meh
٩(-̮̮̃•̃)۶	#meh
o͡͡͡͡͡͡╮꒰♡∇♡*꒱╭o͡͡͡͡͡͡	#meh
p(´⌒｀｡q)	#meh
ƪ(Ơ̴̴̴̴̴̴͡.̮Ơ̴̴͡)ʃ	#meh
ʅ(｡◔‸◔｡)ʃ	#meh
ʅ(｡Ő౪Ő｡)ʃ	#meh
t(ツ)_/¯	#meh
ƪ(•̃͡ε•̃͡)∫ʃ	#meh
ɿ(｡･ɜ･)ɾⓌⓗⓨ?	#meh
༽΄◞ิ౪◟ิ‵༼	#meh
((๑✧ꈊ✧๑))	#monkeys
@・ꈊ・@	#monkeys
@( o･ω･)@	#monkeys
@( o･ｪ･)@	#monkeys
@( o･ꎴ･)@	#monkeys
@( oóωò)@	#monkeys
@( oóꎴò)@	#monkeys
@(｡･o･)@	#monkeys
@(*^ｪ^)@	#monkeys
@(/o･ｪ･o)@/	#monkeys
@(o･ｪ･)@	#monkeys
@(o・ェ・)@ノ	#monkeys
@(o･ｪ･o)@	#monkeys
⊂((・⊥・))⊃	#monkeys
⊂((*＞⊥σ))⊃	#monkeys
⊂((*σ⊥σ*))⊃	#monkeys
⊂((〃￣⊥￣〃))⊃	#monkeys
⊂((∂⊥<*))⊃	#monkeys
⊂((＞⊥＜))⊃	#monkeys
⊂((≧⊥≦))⊃	#monkeys
⊂((δ⊥δ))⊃	#monkeys
⊂((υ⊥υ))⊃	#monkeys
⊂((о∂⊥∂о))⊃	#monkeys
└@(･ｪ･)@┐	#monkeys
✧.*◌·͡˔·ོ◌*·✧	#monkeys
(((ლ(͏ ͒ • ꈊ • ͒)ლ)))♡	#monkeys
¶(⁄•˅̭•∖)⁋	#monkeys
(๑• .̫ •๑)	#monkeys
Ϛ⃘๑•͡ .̫•๑꒜	#monkeys
Ϛ⃘๑•͡ .̫•๑꒜✧	#monkeys
Ϛ⃘;•͡ .̫•๑꒜྆྆	#monkeys
Ϛ⃘๑•͡ ི.ྀ̫•๑꒜	#monkeys
Ϛ⃘๑•͡ ི.ྀ̫•๑꒜✧	#monkeys
Ϛ⃘๑•͡ .̫•๑꒜ღ⃛	#monkeys
Ϛ⃘๑•͡ ི.ྀ̫•๑꒜ღ⃛	#monkeys
Ⴚტ◕‿◕ტჂ	#monkeys
Ϛ⃘๑•͡ .̫•๑꒜♬♫	#monkeys
Ϛ⃘๑•͡ .̫•๑꒜	#monkeys
Ϛ⃘๑•͡ .̫•๑꒜ℒℴѵℯ❤	#monkeys
⁝⁞⁝⁞Ϛ⃘๑•͡ .̫•๑꒜☂⁝⁞⁝⁝	#monkeys
⁝⁞⁝⁞Ϛ⃘๑•͡ ི.ྀ̫•๑꒜☂⁝⁞⁝⁝	#monkeys
Ϛ•͇ꇵ͒•ོ͇Ͻ	#monkeys
“ヽ(´▽｀)ノ”	#music
(；◔ิз◔ิ)～♪♬	#music
(((*°▽°*)八(*°▽°*)))♪	#music
（*´▽｀*）	#music
(*￣0￣)θ～♪	#music
(*゜▽゜ノノ゛☆	#music
(*⌒▽⌒*)θ～♪	#music
(\˳˘ ɜ˘)˳ ♬♪♫	#music
(´△｀)♪	#music
(´▽｀)ノ♪	#music
(´0ﾉ｀*)	#music
（^[]＾）／♪	#music
（＾3＾♪	#music
（＾Ｏ＾☆♪	#music
(ღ˘⌣˘ღ) ♫･*:.｡. .｡.:*･	#music
(ﾉ´▽｀)ﾉ♪	#music
(ﾉ> ◇ <)ﾉ♪	#music
｢(;´Σ ｀〃)ヘ	#music
＼(^o^)／	#music
˳/(˘ε ˘)♬♪♫	#music
≧(´▽｀)≦	#music
┐(・。・┐) ♪	#music
♪( ´θ｀)ノ	#music
♪(´ε｀ )	#music
♪(o^0^)o♪	#music
♪₊(˘ᵋॢ ˘ॢ⌯)*·♫	#music
♪～(´ε｀　)	#music
♪♪(o*゜∇゜)o～♪♪	#music
♪♪)>ш=(^。^ )	#music
♪ヽ( ⌒o⌒)人(⌒-⌒ )v ♪	#music
♬♪♫ ヾ(*・。・)ﾉ ♬♪♫	#music
♬♫♪◖(●。●)◗♪♫♬	#music
ヾ(・◇・)ﾉθ～♪	#music
ヽ(*´з｀*)ﾉ	#music
ヽ(´・｀)ﾉ	#music
ヾ(´□｀* )ノ	#music
ヽ(´▽｀；)/♪	#music
ヾ(´▽｀;)ゝ	#music
ヾ(´〇｀)ﾉ	#music
ヾ(´ρ｀)〃	#music
ヽ(´Д｀)人(´Д｀)人(´Д｀)ノ	#music
ヽ(´Д｀ヽ	#music
ヽ(○´∀`)ﾉ♪	#music
ヽ｀、ヽ｀ヽ(*￣o￣*)>ヽ｀、ヽ｀	#music
♪♫ ◟¶(⁄•˅̥•∖)⁋ ♪♬	#music
₍₍¶(ू⁄›˅̮‹ू∖)⁋₎₎ ♪♬	#music
♬♩˂₍͔⁽ˆ⁰ˆ⁾₎͔˃ ͟͟͞͞≣͟ ͟͟͞͞˂₍͕⁽ˆ⁰ˆ⁾₎͕˃♪♫	#music
ᒄ₍⁽ˆ⁰ˆ⁾₎ᒃ♪♬	#music
♪(๑ᴖ◡ᴖ๑)♪	#music
( ︶⌢︶ ‘’) ⊰ ♬ ⊱ ( ⌣  ⌣)	#music
ʕ•̫͡•ʔ♬✧	#music
Ϛ⃘๑•͡ .̫•๑꒜♬♫	#music
(*´∀｀)ﾉ☊ฺ ▂ฺ ▃ฺ ▄ฺ ▅ฺ ▆ฺ ▇ฺ █	#music
( ￣┏＿┓￣)	#mustaches
(´┏･┓｀)	#mustaches
(´┏o┓｀)	#mustaches
(´o・┏ω┓・o｀)	#mustaches
(￣┏∞┓￣)	#mustaches
(￣┏Д┓￣ )	#mustaches
(￣┏Д┓￣°*)	#mustaches
(ಠ .̫.̫ ಠ)	#mustaches
(ノ≧┏Д┓≦)ノ	#mustaches
ﾐ(´┏ω┓｀)/	#mustaches
(•̴̑⁎̵̭•̴̆)	#mustaches
( •_•) ( •_•)>⌐■-■ (⌐■_■)	#other actions
( ∙_∙) ( ∙_∙)>⌐■-■ (⌐■_■)	#other actions
(／_^)／ 　　　　　　●　＼(^_＼)	#other actions
(☞ﾟ∀ﾟ)☞	#other actions
＼(ﾟｰﾟ＼)	#other actions
v(｡-_-｡)v	#other actions
＿|￣| ⍤⃝	#other actions
＿|￣| ⍨⃝	#other actions
―(T_T)→	#other actions
( • )( • )ԅ(‾⌣‾ԅ)	#other actions
( •_•) ( •_•)>⌐■ (⌐■_•)	#other actions
( •̀ω•́ )σ	#other actions
( •̀ω•́ )σ ( . Y . )	#other actions
(*・)σσσ(*゜Д゜*)	#other actions
( `_)乂(_’ )	#other actions
Ｏ( ｀_´)乂(｀_´ )Ｏ	#other actions
（　＾）／占~~~~~	#other actions
( ＾◡＾)っ✂╰⋃╯	#other actions
( ^o)ρ┳┻┳°σ(o^ )	#other actions
ヽ(^o^)ρ┳┻┳°σ(^o^)/	#other actions
( ﾟ∀(・－・)	#other actions
( ►_◄ )-c<*_*; )	#other actions
( ु⚈᷁௰⚈᷁ ू)	#other actions
੭•̀ω•́)੭̸*✩⁺˚	#other actions
(-^-^)p_____|_o____q(^-^ )	#other actions
(?・・)σ	#other actions
（。_°☆＼(- – )	#other actions
((((*｡_｡)_	#other actions
(*・_・)ノ⌒*	#other actions
（*＾＾）/~~~~~~~~~~◎	#other actions
(*゜▽゜)*。_。)*゜▽゜)*。_。)	#other actions
(*ﾟﾉOﾟ)	#other actions
(／o^)/ °⊥ ＼(^o＼)	#other actions
(•̀o•́)ง	#other actions
(`･ω･´)ゞ	#other actions
(￣^￣)ゞ	#other actions
(´ q ` ” )	#other actions
(＾་།＾)	#other actions
ʅ(´◉◞.̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̸̨̨̨̨̨̨̨̨̨̨̨̨.̸̸̨̨◟◉) ʃ	#other actions
(-́◞८͙༙◟-̀)	#other actions
(˘▼˘>ԅ( ˘⌣ƪ)	#other actions
(¬_¬”)-cԅ(‾⌣‾ԅ)	#other actions
(˘ʃƪ˘)	#other actions
(҂‾ ▵‾)︻デ═一 \(˚▽˚’!)/	#other actions
(∩❛ڡ❛∩)	#other actions
(っ˘ڡ˘ς)	#other actions
ლ(´ڡ`ლ)	#other actions
(⁎⁍̴ڡ⁍̴⁎)	#other actions
(⊃‿⊂) ⊂(⋂ヮ⋂)⊃	#other actions
(╯°□°）╯︵ ┻━┻	#other actions
┬──┬◡ﾉ(° -°ﾉ)	#other actions
(╯°Д°）╯︵/(.□ . \)	#other actions
(ノಠ益ಠ)ノ彡┻━┻	#other actions
(ノಠ ∩ಠ)ノ彡( \o°o)\	#other actions
(╯°□°)╯︵ ʞooqǝɔɐℲ	#other actions
(●ゝω)ノヽ(∀＜●)	#other actions
(◞ꈍ∇ꈍ)◞⋆**✚⃞ྉ	#other actions
(ｏ・_・)ノ”(ノ_＜。)	#other actions
(ง •̀_•́)ง	#other actions
(っ ‘o’)ﾉ⌒ ~ ː̗̀☀̤̣̈̇ː̖́.•	#other actions
〈(•ˇ‿ˇ•)-→	#other actions
┗(•ˇ_ˇ•)―→	#other actions
【　TV　】　　　　-o(.￣　)	#other actions
/( .□.)\ ︵╰(゜益゜)╯︵ /(.□. /)	#other actions
\( #`⌂´)/┌┛	#other actions
Σ(ﾟ∀´(┗┐ヽ(･∀･ )ﾉ	#other actions
๏[-ิ_•ิ]๏	#other actions
＝( ^o^)ノ ．．．…___ｏ	#other actions
￢o(￣-￣ﾒ)	#other actions
♥(ˆ⌣ˆԅ)	#other actions
ー═┻┳︻▄ξ(✿ ❛‿❛)ξ▄︻┻┳═一	#other actions
ヽ(#ﾟДﾟ)ﾉ┌┛Σ(ノ´Д`)ノ	#other actions
ヽ(｀Д´)ノ　(д´ノ)　ヽ(　　　)ノ　(ヽ´△) ヽ(´△`)ﾉ	#other actions
ヽ｀、ヽ｀ヽ(*￣o￣*)>ヽ｀、ヽ｀	#other actions
d(-_^)	#other actions
p(*＾-＾*)q	#other actions
ƪ(`▿▿▿▿´ƪ)	#other actions
ԅ(≖‿≖ԅ)	#other actions
ᕙ( ͡° ͜ʖ ͡°)ᕗ	#other actions
ᕙ(⇀‸↼‶)ᕗ	#other actions
ᕦ(ò_óˇ)ᕤ	#other actions
ᕦ(ò_óˇ)ᕤ “	#other actions
˛˛ꉂ ೭(˵¯̴͒ꇴ¯̴͒˵)౨”	#other actions
ノ┬─┬ノ ︵ ( \o°o)\	#other actions
八(＾□＾*)	#other actions
凸(⊙▂⊙✖ )	#other actions
(⋆ˋ⑉̈ˊ)൭൭⁼³₌₃	#other actions
ෆ⃛(ٛ ˃ ु⍘⃘ ٛ˂) ु˓˓ٍ❀⃝	#other actions
◟( ྃ༎͞ ྃ)◞	#other actions
˭̡̞(◞⁎˃ᆺ˂)◞₎₎=͟͟͞͞˳˚॰°ₒ৹๐	#other actions
‘`ﾛｰヽ(⊡ㅂ⊡｡ Ξ ｡⊡ㅂ⊡)ﾉ ‘`ﾛｰ	#other actions
 ＿|￣| ⍤⃝	#other actions
╭ (o^o#)ᕗ-(-w-)	#other actions
(۶ૈ ۜ ᵒ̌▱๋ᵒ̌ )۶ૈ=͟͟͞͞ ⌨	#other actions
˛˛ꉂ ◞•̀д•́)◞⚔◟(•̀д•́◟ )	#other actions
(๑•॒̀ ູ॒•́๑)	#other actions
(。-`ω´-)	#other animals
(｡+･`ω･´)	#other animals
(*´ω｀)o	#other animals
(´・ω・)ﾉ	#other animals
(=ﾟωﾟ)ノ	#other animals
(∵)	#other animals
(ﾉ･ω･)ﾉﾞ	#other animals
ヽ(･ω･｡)ﾉ	#other animals
ヽ(･ω･ゞ)	#other animals
ヽ(´･ω･`)､	#other animals
Σ( ﾟωﾟ；≡⊃	#other animals
,=,e	#other animals
.=.e	#other animals
…ᘛ⁐̤ᕐᐷ	#other animals
( •̀ ω•́ )	#other animals
( ͒꒪̛ཅ꒪̛ ͒)	#other animals
（-Φ-）	#other animals
(･｀ｪ´･)つ	#other animals
(・ω・；)	#other animals
（’∽’）	#other animals
(((;꒪ꈊ꒪;)))	#other animals
(* >ω<)	#other animals
(*-ω-)	#other animals
(*･ω･)	#other animals
(//°ꈊ°//)	#other animals
(•̀௰•́ )	#other animals
(´-ω-｀)	#other animals
(´・ω・`)	#other animals
(´o・┏ω┓・o｀)	#other animals
(=ﾟωﾟ)ﾉ	#other animals
(∩ё∩)	#other animals
（≡・　x　・≡）	#other animals
（⊂((・⊥・))⊃）	#other animals
(͒⑅′࿉‵⑅)͒ෆ*	#other animals
(○’ω’○)	#other animals
(͒●❛ੇ࿉❛̛●)͒	#other animals
[´・ω・`]	#other animals
]＾：山	#other animals
｛・ω-*}	#other animals
༼ (`・ㅅ ・´) ༽	#other animals
༼ (´・ω・`) ༽	#other animals
༼ (´・ｪ・`) ༽	#other animals
༼´◓ɷ◔`༽	#other animals
＞°）m～～～∈	#other animals
~(-仝-)~	#other animals
～>`)～～～	#other animals
～>゜）～～～～	#other animals
～＞°）mニニニニ＝～	#other animals
≫(‘♀’)≪	#other animals
≺⋏￣ㅅ￣⋏≻	#other animals
⊂((〃’⊥’〃))⊃	#other animals
⊂^j^⊃	#other animals
⊆（⌒◎⌒）⊇	#other animals
┗(･ω･;)┛	#other animals
○(・x・)	#other animals
ヾ(･ω･`｡)	#other animals
ヾ(・ω・ｏ)	#other animals
ヾ(｡･ω･｡)	#other animals
ヽ(｡ゝω・｡)ﾉ	#other animals
ヾ(ｏ･ω･)ﾉ	#other animals
ヾﾉ｡ÒㅅÓ)ﾉｼ	#other animals
w(´･ω･`)w	#other animals
Ƹ̵̡Ӝ̵̨̄Ʒ	#other animals
Σ(・ω・`|||)	#other animals
੯ू•́ू ໒꒱⁼³₌₃	#other animals
੯ू❛ัू ໒꒱	#other animals
ฅ ̳͒•ˑ̫• ̳͒ฅ	#other animals
⍝◜῁●⌔⃝●῁◝⍝₌₃	#other animals
ि०॰͡०ी	#other animals
(০გ০)	#other animals
Ψ(●◜ ཅ ◝●)Ψ	#other animals
૮(ꆚꁝꆚ)ა	#other animals
(≖` _̆ ′≖⑉)	#other animals
* ूི-̭͡- ૂ ྀ⁎ꂚᴉᴉᴉ	#other animals
੯ू❛ัू ໒⑅꒱	#other animals
੯ू•́ू ໒وو꒱	#other animals
੯ू•́ू ໒꒱Ꮅ	#other animals
੯ू•́ूཻ ໒꒱Ꮅ”	#other animals
੯ू‵ू ໒꒱	#other animals
੯ूᵕू ໒꒱ƶƵ	#other animals
੯ू•̀ ໒꒱⁼³₌₃	#other animals
੯ू❛ัूཻ ໒꒱⁼³₌₃	#other animals
੯ूᵕ̤ू U॒॒॒॒॒୭ℒℴѵℯ❤	#other animals
ʢ்ꇵ்͒ʡ	#other animals
ʢ்́ꇵ்͒̀ʡ	#other animals
ʢ்̽ꇵ்͒̽ʡ	#other animals
 ૂི•̮͡• ૂ ྀ	#other animals
 ᵋ* ूི-̭͡- ૂ ྀᵌ	#other animals
ෆ͙⃛* ི•̮͡ુ -ુ ྀᵒᵏ❣⃛	#other animals
* ूི×̺͡×ू ྀ⁎*☠⁎ꂚ*ᵎᵎᵎ	#other animals
६ൠ͠३	#other animals
 ( ఠൠఠ )	#other animals
‹(•¿•)›	#other emoticons
(^ц^ )	#other emoticons
( 　ﾟ,_ゝﾟ)	#other emoticons
( ･_･)*――――――∞C< /― _-)/	#other emoticons
( ･ัω･ั; )	#other emoticons
（　(≪●≫)　）Д（　(≪●≫)　）	#other emoticons
( ͡° ͜ʖ ͡°)	#other emoticons
( °٢° )	#other emoticons
( ≧ Д ≦) (✿☯.☯) (♥ω♥ ) ~♪	#other emoticons
( ◐ω◐ )	#other emoticons
(・о・)	#other emoticons
（;;￣Д￣）ノヾ((((；゜д゜))__	#other emoticons
（;´_ヘ;）	#other emoticons
(((; ఠ ਉ ఠ))	#other emoticons
(((ლ(͏ ͒ • ꈊ • ͒)ლ)))	#other emoticons
(*′☉.̫☉)	#other emoticons
(´⌣`ʃƪ)	#other emoticons
(◐▂◑)	#other emoticons
(✿☯.☯)	#other emoticons
（ゝ。∂）	#other emoticons
（＄０＄）	#other emoticons
(੭ु˙꒳˙)੭ु⁾⁾*✭	#other emoticons
(V)o\o;;(V)	#other emoticons
*~●＞＾）	#other emoticons
\,,/(òÓ,)\,,/	#other emoticons
`*:;,．★ ～☆・:.,;*	#other emoticons
━━☆＞＾）	#other emoticons
☆.。.:*・°☆.。.:*・°☆.。.:*・°☆.。.:*・°☆	#other emoticons
☆⌒(*＾-°)v	#other emoticons
☆⌒（＊＾∇゜）v	#other emoticons
☆彡　　★彡　　☆彡　　★彡	#other emoticons
☆彡★彡☆彡★彡	#other emoticons
❛ॕ̀ੇ≀ ̼❛ॕ̀ੇ˵	#other emoticons
૧(ꂹີ࿄ꂹີૂ)	#other emoticons
੭व(๑• .̫ •๑) ✧	#other emoticons
m{oYo}屮	#other emoticons
o(‧”’‧)	#other emoticons
ʘ̥ꀾʘ̥	#other emoticons
థ౪థ	#other emoticons
ಠ_ರೃ	#other emoticons
웃+웃=❤	#other emoticons
⌒ﾟ(❀>◞౪◟<)ﾟ⌒	#other emoticons
( θོثθོ )	#other emoticons
₍₍ヾ͜(໐ຶັົ໋௰໐ຶັົ໋๑)ﾉｼ₎₎	#other emoticons
⚈้̤͡ ˌ̫̮ ⚈้̤͡	#other emoticons
(∮UvU◆χ)	#other emoticons
₍‧ꀈ˙⁾՜	#other emoticons
(:D)┼─┤	#other emoticons
(｡･ˇ⊆ˇ･｡)	#other emoticons
(亝ω亝｡)	#other emoticons
ପ( ຶཽ ˚̼̮ ຶཽ)ଓ✧	#other emoticons
⑅❛⌔❛(❛ั▿ ❛ั ⋈	#other emoticons
₍꒵꒱ꂶ ˙̫ ꂶ꒰꒵₎⌕	#other emoticons
₍₍◟(໐ຶັົ໋௰໐ຶັົ໋๑)◞₎₎	#other emoticons
(<●>ω<●>)✧	#other emoticons
(•‾॒̑ ູ॒‾̑•)	#other emoticons
((⚆·̫⚆‧̣̥̇ ))	#other emoticons
〈 ●ˡ̑ ̫ ̫̊ ̫ˡ͂● 〉	#other emoticons
｡ﾟ(ﾟ´(00)`ﾟ)ﾟ｡	#pigs
(；ﾟ(OO)ﾟ)	#pigs
(*´(00)`)’	#pigs
(￣（∞）￣)	#pigs
(￣(▽▽)￣)	#pigs
(=｀(∞)´=)	#pigs
ヽ(*’(OO)’)ﾉﾟ	#pigs
q(￣(oo)￣)p	#pigs
( ´(00)`)	#pigs
(*’(OO)’*)	#pigs
(｀(●●) ´)	#pigs
(￣(oo)￣)ﾉ	#pigs
(○｀（●●）´○)ﾉ	#pigs
ヾ(；ﾟ(OO)ﾟ)ﾉ	#pigs
ヾ(＠＾(∞)＾＠)ノ	#pigs
ヽ(*’(OO)’)ﾉ	#pigs
૮⍝◜•⚇•◝⍝ა	#pigs
(͒⚈ै⚇༵⚈ै)͒	#pigs
U・x・U	#rabbits
U｡･.･｡U	#rabbits
U=･ x ･=U	#rabbits
U=๏ x ๏=U	#rabbits
(,,๏ ⋏ ๏,,)	#rabbits
(•ㅅ•)	#rabbits
(๏ᆺ๏υ)	#rabbits
(ㅇㅅㅇ❀)	#rabbits
／(･ × ･)＼	#rabbits
／(^ x ^)＼	#rabbits
／(^ x ^=)＼	#rabbits
／(=๏ x ๏=)＼	#rabbits
／(=´x`=)＼	#rabbits
／(=∵=)＼	#rabbits
／(=⌒x⌒=)＼	#rabbits
／(=✪ x ✪=)＼	#rabbits
／(≡・ x ・≡)＼	#rabbits
／(≧ x ≦)＼	#rabbits
／(v x v｡)人(｡v x v)＼	#rabbits
／(v x v)＼	#rabbits
⌒(・x・)⌒	#rabbits
⌒(｡･.･｡)⌒	#rabbits
⌒(=･ x ･=)⌒	#rabbits
⌒(=๏ x ๏=)⌒	#rabbits
U ´꓃ ` U	#rabbits
⁽⁽˙˟˙⁾⁾	#rabbits
( °̥̥̥̥̥̥̥̥˟°̥̥̥̥̥̥̥̥ )	#rabbits
(⁎˃ᆺ˂)	#rabbits
૮⍝◜•˕̮•◝⍝ა	#rabbits
૮( ᵒ̌ૢ௰ᵒ̌ૢ )ა	#rabbits
૮(⋆❛ہ❛⋆)ა	#rabbits
( ்̓˟்̓)	#rabbits
t(〃⊙౪ ∩＝)/	#random
-(๑☆‿ ☆#)ᕗ	#random
((☆＾⌓ ＾☆)╭	#random
((o⊙Σ ⊙｡)m	#random
｢(;´Σ ｀〃)ヘ	#random
｢(#Φ益 Φo)∩	#random
｢(＝＞o≦＝)ﾉ	#random
~(｡☉︵ ಠ@)>	#random
~(๑ñ﹏ ⊙☆)ノ	#random
⊂(o•ิ▂ ñ*)づ	#random
┗( ●-﹏ ｀｡)づ	#random
╭ (oㅇ‿ o#)ᕗ	#random
╮ (☆-_ ⊙;)ゞ	#random
╰(๑＾⌓ ＾＝)ᕗ	#random
ヾ (;・﹏ •̀☆)b	#random
ヾ (✿＞﹏ ⊙〃)ノ	#random
ヽ(♡≧m´｡)っ	#random
m(★⊙¬ ㅇ ●)ლ	#random
Ｏ(*＠д o#)づ	#random
Ｏ(o＾O ｀;)人	#random
Σ(@°xº♡)/	#random
Σ(♡＠﹏ ＠☆)ﾉ”	#random
Σ(๑+⌓ o｡)シ	#random
φ( ●⌒へ ⌒〃)o	#random
ψ(๑∩⌓ ∩ ●)y	#random
щ (*ㅇ△ Φ☆)ノ	#random
ლ (#｀ﾛ＾;)>	#random
ᕙ (;｀⊥ ＾★)┐	#random
ᕙ (✿⊙へ ⊙〃)	#random
ᕙ (❁^д ^*)っ	#random
ᕦ(;*Σ ⌒❁)ᕗ	#random
へ( ●｀ㅅ ｀☆)ლ	#random
へ(｡•ิ‿ -〃)	#random
ε=ε=ε=ε=ε=┌(；　・＿・)┘	#running
⊂(‘ω’⊂ )))Σ≡=─༄༅༄༅༄༅༄༅༄༅	#running
☆ﾐ(o*･ω･)ﾉ	#running
ε===(っ≧ω≦)っ	#running
ε=ε=┏( >_<)┛	#running
ε=ε=ε=┌(๑ʘ∀ʘ)┘	#running
ε=ε=ε=ε=┏(;￣▽￣)┛	#running
°◦=͟͟͞͞ʕ̡̢̡ु•̫͡•ʔ̡̢̡ु ☏	#running
- =͟͟͞͞ =͟͟͞͞ ﾍ( ´Д`)ﾉ	#running
─=≡Σ((( つ•̀ω•́)つ	#running
 C= C= C= C= C= C= C= C= C= ┌(;・ω・)┘	#running
͛꒰ू ऀ•̥́ꈊ͒ੁ•ૅू॰˳ऀ꒱ ͟͟͞ ̊ ̥ ̥	#running
੯ू•́ू ໒꒱⁼³₌₃	#running
 =͟͟͞͞( ∩ ‘ヮ’=͟͟͞͞) ੭ु⁾⁾	#running
ε=ε=ε=ε=ε=ε=┌(๑ʘ∀ʘ)┘	#running
৫(”ړ৫)˒˒˒˒	#running
=͟͟͞͞ ➵=͟͟͞͞⁽⁽◞(꒪ͦ ˈ̫̮ ꒪ͦ=͟͟͞͞ ꒪ͦ ˈ̫̮ ꒪ͦ)◟⁾⁾➴	#running
ε=ε=(っ*´□`)っ	#running
ε=ε=(怒ﾟДﾟ)ﾉ	#running
ヽ(￣д￣;)ノ=3=3=3	#running
=͟͟͞͞ʕ•̫͡•ʔ =͟͟͞͞ʕ•̫͡•ʔ =͟͟͞͞ʕ•̫͡•ʔ =͟͟͞͞ʕ•̫͡•ʔ =͟͟͞͞ʕ•̫͡•ʔ	#running
(ↀДↀ)⁼³₌₃	#running
=͟͟͞͞(๑•̀=͟͟͞͞(๑•̀д•́=͟͟͞͞(๑•̀д•́๑)=͟͟͞͞(๑•̀д•́)))	#running
٩꒰´·⌢•｀꒱۶⁼³₌₃	#running
( ≧Д≦)	#sad
( p_q)	#sad
(;*△*;)	#sad
((´д｀))	#sad
(´°̥̥̥̥̥̥̥̥ω°̥̥̥̥̥̥̥̥｀)	#sad
(ﾟ´Д｀ﾟ)ﾟ	#sad
(∩︵∩)	#sad
(╯︵╰,)	#sad
(▰˘︹˘▰)	#sad
(✖╭╮✖)	#sad
{{p´Д｀q}}	#sad
ヽ(´□｀。)ﾉ	#sad
・(/Д`)・	#sad
・゜・(ノД`)	#sad
.・゜゜・（／。＼）・゜゜・．	#sad
.·´¯`(>▂<)´¯`·.	#sad
｡･ﾟﾟ･(>д<)･ﾟﾟ･｡	#sad
｡：ﾟ(｡ﾉω＼｡)ﾟ･｡	#sad
。：゜(；´∩｀；)゜：。	#sad
｡ﾟ( ﾟஇ‸இﾟ)ﾟ｡	#sad
。ﾟ(ﾟﾉД｀ﾟ)ﾟ｡	#sad
｡゜(｀Д´)゜｡	#sad
(ू˃̣̣̣̣̣̣︿˂̣̣̣̣̣̣ ू)	#angry facing left
(　ﾟДﾟ)＜!!	#angry facing right
ヽ(≧Д≦)ノ	#arms raised in anger
ヾ(@^▽^@)ノ	#arms up from excitement
(◎_◎;)	#blank look
( ┐΄✹ਊ✹)┐	#craziness
(｡☉౪ ⊙｡)	#crazy eyes
ヘ（。□°）ヘ	#crazy flailing arms
(*≧∀≦*)	#excited
╰(✧∇✧╰)	#excited facing left
(/^▽^)/	#excited facing right
٩(๑∂▿∂๑)۶♡	#excited love
٩(๑`ȏ´๑)۶	#fists raised in anger
凸(｀0´)凸	#flipping the bird
(*^▽^*)	#happy
– =͟͟͞͞ ( ꒪౪꒪)ฅ✧	#happy with high energy
v(۝)v	#hungry
Σ_(꒪ཀ꒪」∠)_	#hungry drooling
⊱(*⁍ ڡ ⁍*)⊰	#hungry licking lips
(๑′ᴗ‵๑)Ｉ Lᵒᵛᵉᵧₒᵤ♥	#I love you
乁( ◔ ౪◔)ㄏ	#indifferent
(* ^ ω ^)	#joy
(♡°▽°♡)	#love
(∩˃o˂∩)♡	#love
(｡♥‿♥｡)	#love eyes
ʅ（‾◡◝）ʃ	#meh
ヘ（。□°）ヘ	#pain
ಠ_ರೃ	#quizzical look
(︶︹︺)	#sad
(个_个)	#sad with tears
໒( ⇀ ‸ ↼ )७	#shaking an arm
¯\_(ツ)_/¯	#shrug
(#^.^#)	#shy
(⸝⸝⍢⸝⸝) ෆ	#shy love
(๑-﹏-๑)	#sickness
( ⋂‿⋂’)	#smile
.·´¯`(>▂<)´¯`·.	#sobbing
( •̀ᄇ• ́)ﻭ✧	#success fist
（・□・；）	#surprise
╮(＾▽＾)╭	#whatever!
ლ(ಠ_ಠლ)	#Why?!
(•᷉ुε ू•᷈,)	#intrigued
๑•́ㅿ•̀๑) ᔆᵒʳʳᵞ	#apologizing
m(_ _)m	#bowing
（*´∀｀）つ＝＝＝＝＝＝＝＝●ⅲⅲⅲ	#bowling
(／_^)／ 　　　　　　●　＼(^_＼)	#catch ball
( -_-)>c[_]	#coffee
(~‾▿‾)~	#dancing
(－‸ლ)	#facepalm
(∩ ͡ ° ʖ ͡ °) ⊃-(===>	#fight with swords
(҂‾ ▵‾)︻デ═一 (˚▽˚’!)/	#fight with weapons
(╯°□°）╯︵ ┻━┻	#flipping a table over
〜(^∇^〜）	#happiness dance
｢(ﾟﾍﾟ)	#head scratching
ﾍ(･_|	#hiding
(⊃｡•́‿•̀｡)⊃	#hugging
(¬‿¬)	#I see what you did there
( #`⌂´)/┌┛	#kicking and punching
( ˘ ³˘)♥	#kissing
(ᗒᗜᗕ)՛̵̖	#laughing
(๑´▿｀๑)♫•*¨*•.¸¸♪✧	#music
( ^o)ρ┳┻┳°σ(o^ )	#ping pong
ε=ε=ε=┌(๑ʘ∀ʘ)┘	#running
∠(*ﾟ∇ﾟ*)	#saluting
（；¬＿¬)	#seriously?
(*￣0￣)θ～♪	#singing
(-, – )…zzzZZZ	#sleeping
(*´艸`*)	#stifling laughter
ᕙ(⇀‸↼‶)ᕗ	#stretching
人人人人　へ( ﾟｪﾟ)＿ 人人人人	#swimming
(´ ▽｀).。ｏ♡	#thinking about love
Σ(-᷅_-᷄๑)	#thinking real hard
( ･O･)ﾉ⌒●~*	#throwing a bomb
(ﾟ×ﾟlll)	#throwing up
(￣^￣)尸	#waving flag of surrender
(˳˘ ɜ˘)˳ ♬♪♫	#whistling
(^_-)	#winking
＿〆(。。)	#writing
（-＾〇＾-）	#yawning
/|\( ;,;)/|\	#bat
ʕ•͡-•ʔ	#bear
(°<°)	#bird
ヾ(〓￣(∵エ∵)￣〓)	#bulldog
(=^･ｪ･^=)	#cat
ฅ^•ﻌ•^ฅ	#cat with paws
( ఠൠఠ )	#cow
V=(° °)=V	#crab
∪･ω･∪	#dog
 ˏ₍•ɞ•₎ˎ	#fat bird
(°))<<	#fish
₍˄·͈༝·͈˄₎ฅ˒˒	#fluffy cat
ૂི•̮͡• ૂ ྀ	#insect
@:≈	#jellyfish
⊹⋛⋋( ՞ਊ ՞)⋌⋚⊹	#laughing bird
༼ (`・ㅅ ・´) ༽	#llama
⊂((・⊥・))⊃	#monkey
ᶘ ᵒᴥᵒᶅ	#pedo bear
( ´(00)`)	#pig
:: (•ᴥ• )́`́’́`́’⻍	#porcupine
／(^ x ^)＼	#rabbit
(◕ᴥ◕)	#seal
Ꮚ˘ꈊ˘Ꮚ	#sheep
～>`)～～～	#snake
/╲/\(╭•̀ﮧ •́╮)/\╱\	#spider
＜コ：ミ	#squid
.=.e	#turtle
. ><\{\{\{o ______)	#whale
ʕ •́؈•̀ ₎ 	#Winnie the Pooh

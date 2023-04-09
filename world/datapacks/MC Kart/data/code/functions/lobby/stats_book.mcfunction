item replace block -430 16 70 container.0 with written_book{display:{Name:'{"text":"STATISTICS","color":"blue","bold":true}',Lore:['{"text":"------------","color":"dark_aqua"}','{"text":"Everything you need","color":"gray"}','{"text":"to know about yourself!","color":"gray"}']},title:"",author:"",pages:['[{"text":"  -- Statistics --","color":"blue","bold":true},{"text":"\\n\\nThis book shows you every detail about you and your career as a professional racer on this server!","color":"dark_aqua","bold":false,"underlined":false},{"text":"\\n----------------","color":"gray","bold":true,"underlined":false},{"text":"You will find:","color":"dark_aqua","bold":true},{"text":"\\n\\n  -Best times","color":"blue","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to jump\\nto page 2!","color":"gray","italic":true}]},"clickEvent":{"action":"change_page","value":"2"}},{"text":"\\n  -Your placings","color":"blue","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to jump\\nto page 3!","color":"gray","italic":true}]},"clickEvent":{"action":"change_page","value":"3"}},{"text":"\\n  -Item statistics","color":"blue","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to jump\\nto page 4!","color":"gray","italic":true}]},"clickEvent":{"action":"change_page","value":"4"}},{"text":"\\n  -Community stats","color":"blue","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to jump\\nto page 5!","color":"gray","italic":true}]},"clickEvent":{"action":"change_page","value":"5"}}]']} 1
data merge block -431 16 70 {Color:"-1",Text1:'[{"text":"[Back]","color":"blue","bold":false,"clickEvent":{"action":"change_page","value":"1"}},{"text":"\\n\\n  Your best times!","bold":true},{"text":"\\n\\nBustle Bay:","color":"dark_aqua","bold":false},{"text":"\\n- ","color":"dark_gray","bold":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:1}].Min","entity":"@a[tag=b]","color":"dark_gray","bold":true},{"text":" Min ","color":"dark_gray","bold":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:1}].Sec","entity":"@a[tag=b]","color":"dark_gray","bold":true},{"text":",","color":"dark_gray","bold":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:1}].10Sec","entity":"@a[tag=b]","color":"dark_gray","bold":true},{"text":" Sec","color":"dark_gray","bold":false},{"text":"\\n\\nViable Valley:","color":"dark_aqua","bold":false},{"text":"\\n- ","color":"dark_gray","bold":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:2}].Min","entity":"@a[tag=b]","color":"dark_gray","bold":true},{"text":" Min ","color":"dark_gray","bold":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:2}].Sec","entity":"@a[tag=b]","color":"dark_gray","bold":true},{"text":",","color":"dark_gray","bold":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:2}].10Sec","entity":"@a[tag=b]","color":"dark_gray","bold":true},{"text":" Sec","color":"dark_gray","bold":false},{"text":"\\n\\nCursed Caverns:","color":"dark_aqua","bold":false},{"text":"\\n- ","color":"dark_gray","bold":true},{"nbt":"EnderItems[0].tag.Times[{Strecke:3}].Min","entity":"@a[tag=b]","color":"dark_gray","bold":true},{"text":" Min ","color":"dark_gray","bold":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:3}].Sec","entity":"@a[tag=b]","color":"dark_gray","bold":true},{"text":",","color":"dark_gray","bold":false},{"nbt":"EnderItems[0].tag.Times[{Strecke:3}].10Sec","entity":"@a[tag=b]","color":"dark_gray","bold":true},{"text":" Sec","color":"dark_gray","bold":false}]'}
data modify block -430 16 70 Items[0].tag.pages append from block -431 16 70 Text1
data merge block -431 16 70 {Color:"-1",Text1:'[{"text":"[Back]","color":"blue","bold":false,"clickEvent":{"action":"change_page","value":"1"}},{"text":"\\n\\n   Your placings!","color":"blue","bold":true},{"text":"\\n\\nFirst place: ","color":"dark_aqua","bold":true},{"score":{"name":"@a[tag=b]","objective":"mkr_stat6"},"color":"dark_gray"},{"text":"x","color":"gray"},{"text":"\\n\\nTop 3: ","color":"dark_aqua","bold":true},{"score":{"name":"@a[tag=b]","objective":"mkr_stat5"},"color":"dark_gray"},{"text":"x","color":"gray"},{"text":"\\n\\n4. - 9. place: ","color":"dark_aqua","bold":true},{"score":{"name":"@a[tag=b]","objective":"mkr_stat7"},"color":"dark_gray"},{"text":"x","color":"gray"},{"text":"\\n\\n----------------","color":"gray"},{"text":"\\n\\nGames played: ","color":"dark_aqua","bold":true},{"score":{"name":"@a[tag=b]","objective":"mkr_stat8"},"color":"dark_gray"},{"text":"x","color":"gray"}]'}
data modify block -430 16 70 Items[0].tag.pages append from block -431 16 70 Text1
data merge block -431 16 70 {Color:"-1",Text1:'[{"text":"[Back]","color":"blue","bold":false,"clickEvent":{"action":"change_page","value":"1"}},{"text":"\\n\\nYour item statistic!","color":"blue","bold":true},{"text":"\\n\\n----------------","color":"gray"},{"text":"\\n\\nShrooms used: ","color":"dark_aqua"},{"score":{"name":"@a[tag=b]","objective":"mkr_stat1"},"color":"dark_gray"},{"text":"\\n\\nItems collected: ","color":"dark_aqua"},{"score":{"name":"@a[tag=b]","objective":"mkr_stat2"},"color":"dark_gray"},{"text":"\\n\\nCoins collected: ","color":"dark_aqua"},{"score":{"name":"@a[tag=b]","objective":"mkr_stat4"},"color":"dark_gray"},{"text":"\\n\\nGot stunned: ","color":"dark_aqua"},{"score":{"name":"@a[tag=b]","objective":"mkr_stat3"},"color":"dark_gray"}]'}
data modify block -430 16 70 Items[0].tag.pages append from block -431 16 70 Text1
summon armor_stand 0 1 0 {CustomNameVisible:1b,Tags:["shep"],CustomName:'{"text":"-Empty-"}'}
data modify entity @e[tag=shep,limit=1] CustomName set from storage minecraft:best name
data merge block -431 16 70 {Color:"-1",Text1:'[{"text":"[Back]","color":"blue","bold":false,"clickEvent":{"action":"change_page","value":"1"}},{"text":"\\n\\n  Community stats!","color":"blue","bold":true},{"text":"\\nShrooms used: ","color":"dark_aqua"},{"score":{"name":"community","objective":"mkr_stat1"},"color":"dark_gray"},{"text":"\\nCoins collected: ","color":"dark_aqua"},{"score":{"name":"community","objective":"mkr_stat4"},"color":"dark_gray"},{"text":"\\nGames started: ","color":"dark_aqua"},{"score":{"name":"community","objective":"mkr_stat8"},"color":"dark_gray"},{"text":"\\n\\nBest Player:\\n","color":"dark_aqua","bold":true},{"selector":"@e[tag=shep]","color":"dark_gray","bold":false},{"text":"\\nWins: ","color":"dark_aqua"},{"score":{"name":"community","objective":"mkr_stat6"},"color":"dark_gray","bold":false}]'}
kill @e[tag=shep]
data modify block -430 16 70 Items[0].tag.pages append from block -431 16 70 Text1
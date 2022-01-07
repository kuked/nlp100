CATEGORY = /\[\[Category:(?<category>.+?)\]\]/
SECTION = /(?<level>==+)(?<section>.+?)(==+)/
PRE_MEDIA = /\[\[ファイル:.+?\]\]/
MEDIA = /\[\[ファイル:(?<media>.+?)(\|.+)*\]\]/
TEMPLATE = /{{基礎情報.*?\n(?:|.*?\n)*}}/
FIELD = /\|(?<key>.+?)=(?<value>.+)\n/
EM = /''+(.+?)''+/
LINK = /\[\[(.+?)\]\]/

#language: ja

機能: https://gunosy.com/categories/3にアクセスしてリンク先の本文とイメージを集められる

	シナリオ:　コミュ障改善のために話題サーチをする
	グノシーのおもしろカテゴリにアクセスして先頭トピックのリンク先に遷移し、本文とイメージを取得する
	前提 "https://gunosy.com/categories/3"を表示する
	もし "item-category__title"クラスがある
	ならば 先頭のリンク先をクリックする
	ならば 遷移したURLがリンクのそれと同じである
	かつ "article"クラスのテキストを表示する

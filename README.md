# Recipe

## インストール

Ruby をインストールします。(Ruby 2.1.2 で動作確認しています)

- https://github.com/sstephenson/rbenv#installation

## 実行

### すべてのレシピ

    ruby -Ilib lib/recipe.rb

### レシピ指定

recipe index に 0..2 のインデックスを指定する

    ruby -Ilib lib/recipe.rb <recipe index>

## テストの実行

    ruby -Ilib test/<test_file_name>.rb

## データファイル

フォーマットは YAML 形式です。data/ ディレクトリ配下に置いてください。

### 内容のサンプル

```yaml
---
- :title: "オムライス"
  :url: "http://cookpad.com/recipe/2653946"
- :title: "親子丼"
  :url: "http://cookpad.com/recipe/2657882"
- :title: "杏仁豆腐"
  :url: "http://cookpad.com/recipe/2654398"
```

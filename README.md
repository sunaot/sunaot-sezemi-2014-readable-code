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
- :title: "親子丼"
- :title: "杏仁豆腐"
```

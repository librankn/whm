# README

## 概要

車椅子が借りられる施設を投稿してもらうサービス 施設を保存する事が出来ます

## コンセプト

分かりやすいサイト構造

## バージョン

Ruby 2.45 Rails 5.1.6

## 機能設計

- ログイン機能
  - ツイッター・フェイスブック・グーグルのアカウントでログイン可能
- ユーザー登録機能
  - 名前、パスワードは必須
- パスワード再設定機能
- 施設一覧表示機能
  - 一覧の最大表示件数は 10 件
  - 10 件以上はページ送り
- 施設投稿機能
  - 施設名と場所は必須
- 施設編集機能
- 施設削除機能
  - 投稿・編集・削除はログインユーザーのみ可能
  - 閲覧はログインしていなくとも可能
- 施設検索機能
  - 検索キーワードは施設名

## カタログ設計

https://docs.google.com/spreadsheets/d/1DSV6FPeM9KQA2oyUjPC5yX-6HcDLQOYv-tZgrCW3zlE/edit?usp=sharing

## テーブル定義

https://docs.google.com/spreadsheets/d/1YsY-K88r2PUaekPbDUBinlopzzo6mXNwVPCKFFHn4L0/edit?usp=sharing

## 画面遷移図

https://drive.google.com/file/d/1LQyR8YqdKOSTuNHdaKv6gDELkb84DvRs/view?usp=sharing

## 画面ワイヤーフレーム

https://docs.google.com/spreadsheets/d/1r4vHDZLniqEuJ4HuDjMHsAfIf25yvxtuah0zhbCxzVI/edit?usp=sharing

## 使用予定 Gem

- devise
- ransack
- kaminari
- CarrierWave
- ImageMagick
- bcrypt
- jquery-rails

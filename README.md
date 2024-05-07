# data-platform-brand-sql 

data-platform-brand-sql は、データ連携基盤において、ブランドデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-brand-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-brand-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-brand-sql-header-data.sql（データ連携基盤 ブランド - ヘッダデータ）
* data-platform-brand-sql-header-doc-data.sql（データ連携基盤 ブランド - ヘッダ文書データ）
* data-platform-brand-sql-partner-data.sql（データ連携基盤 ブランド - パートナデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  

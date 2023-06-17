# sample_todo_app

- Todoアプリとなっていますが、やっぱりアウトプット兼技術検証用のリポジトリとして活用します
- なので、Todoアプリにならないかもしれないです（なるべくTodoアプリ作りながら検証とか進めていきます）

## 下準備

### 環境分け

- 個人開発でも開発環境と本番環境くらいは分けたいので、`dev`と`prod`の２種類を用意（ステージング環境まではいらないと判断）
- [【Flutter 3.7以上】Dart-define-from-fileを使って開発環境と本番環境を分ける](<https://zenn.dev/altiveinc/articles/separating-environments-in-flutter#ios%E3%82%A2%E3%83%97%E3%83%AA%E3%81%AB%E7%92%B0%E5%A2%83%E3%82%92%E5%8F%8D%E6%98%A0%E3%81%95%E3%81%9B%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E3%81%93%E3%81%A8>)を参考に環境分け

- Firebaseも`dev`と`prod`でそれぞれ用意

### main.dartとapp.dart

- main.dartはアプリ起動時の初期化くらいの役割を持たせる
  - Firebaseの初期化
  - プロバイダースコープの宣言

- main.dartでログイン判定とかする

## 画面遷移

- [go_router](https://pub.dev/packages/go_router)で制御する

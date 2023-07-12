class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  #データを追加、保存する
  def create
    #データを受け取り新規登録するためのインスタンス作成
    book =Book.new(book_params)

    #データをデータベースに保存するためのsaveメソッド実行
    book.save


    redirect_to book_path(book.id)
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])  #データを1件取得
    book.destroy #データを削除
    redirect_to '/books'
  end

private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

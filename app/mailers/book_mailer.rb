class BookMailer < ApplicationMailer

  def book_send(book)
    @book = book
    mail(to: user_email, subject: "Your subject")
  end
end

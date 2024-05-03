import 'dart:io';
class Book {
  int? book_id;
  String? title;
  String? author;
    Book(){
      book_id = 101;
      title = "Dart Programming";
      author = "AMAN";
    }
    Book.defaultDetails(int book_id, String title, String author) {
      this.book_id = book_id;
      this.title = title;
      this.author = author;
    }
    void displayDetails() {
      print("Book ID: ${this.book_id}");
      print("Title: ${this.title}");
      print("Author: ${this.author}");
    }
}
void main() {
  Book defaultBook = Book();
  print("Default Book Details : ");
  defaultBook.displayDetails();
  Book customBook = Book.defaultDetails(102, "Flutter Developing ", "AMAN");
  print("Custom Book Details : ");
  customBook.displayDetails();
}
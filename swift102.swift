import Foundation

/*
Swift102 course project 
*/ 

class Book{
  var id : Int
  var title : String
  var author : String
  var price : Double?
  var quantity : Int?

  init (id: Int, title: String, author: String, price: Double?, quantity: Int?){
    self.id = id
    self.title = title
    self.author = author
    self.price = price ?? 0.0
    self.quantity = quantity ?? 0
  }

  func toString() -> String {
    return "id: \(self.id), title: \(self.title), author: \(self.author), price: \(self.price ?? 0), quantity: \(self.quantity ?? 0),"
  }

}

var books = [
  Book(id: 1, title: "Start with why", author: "Simon Sinek", price: 80.0, quantity: 13),
  Book(id: 2, title: "But How Do it Know", author: "J. Clark Scott", price: 59.9, quantity: 22),
  Book(id: 3, title: "Clean Code", author: "Robert Cecil", price: 50.0, quantity: 5),
  Book(id: 4, title: "Zero to One", author: "Peter Thiel", price: 45.0, quantity: 12),
  Book(id: 5, title: "You don't know JS", author: "Kyle Simpson", price: 39.9, quantity: 9)
]

/* Q1: يمكن من خلال البرنامج الاستعلام عن كتاب عن طريق:
رقم الكتاب Book Id.
عنوان الكتاب Title.
اسم المؤلف Author.
*/
// Q1.1 Book Id.
print("Q1.1: Book Id.")
for book in books {
  print(book.toString())
}

// Q1.2
print("Q1.2: Title.")


// Q1.3
print("Q1.2: Author.")


// Q2.1
print("Q2.1: التحقق من وجود كمية كافية من الكتاب المُراد بيعه في المخزن.")


//Q2.2
print("Q2.2: في حال وجود كمية كافية، يتم إنقاص المخزون وفقًا للكمية المطلوبة في الفاتورة.")

import Foundation

/*
Swift102 course project 
*/ 

class Book{
  let id : Int
  let title : String
  let author : String
  let price : Double?
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

  func isQuantityEnough(order: Int) -> Bool {
    if (order <= 0 ){
      return false
    }
    if (self.quantity! >= order){
      return true
    }
    return false
  }

  func orderBooks(quantity: Int) -> Int{
    if (isQuantityEnough(order: quantity)){
      self.quantity! -= quantity
      print("Thanks for your order! There is \(self.quantity!) books left in storage.")
      return self.quantity!
    }
    print("Sorry, your order cannot be fullfiled! either we don't have enough book or your order is not valid.")
    return -1
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
print("\nQ1.1: Book ID = 1")
func getBookByID(id: Int){
  for book in books{
    if(book.id == id){
      print(book.toString())
      break
    }
  }
}
getBookByID(id: 1)

// Q1.2
print("\nQ1.2: Title = Clean Code")
func getBookByTitle(title: String){
  for book in books{
    if(book.title == title){
      print(book.toString())
      break
    }
  }
}
getBookByTitle(title: "Clean Code")


// Q1.3
print("\nQ1.3: Author = Kyle Simpson")
func getBookByAuthor(author: String){
  for book in books{
    if(book.author == author){
      print(book.toString())
      break
    }
  }
}
getBookByAuthor(author: "Kyle Simpson")


// Q2.1
print("\nQ2.1: check enough quantity exist in storage")
let order = (book: books[0], quantity: 10)
print("Is there \(order.quantity) (\(order.book.title)) books in storage? ")
let isOrderValid = order.book.isQuantityEnough(order: order.quantity)
print( isOrderValid ? "yes, there are enough" : "No, we don't have enough books")

//Q2.2
print("\nQ2.2: In case there is enough quantity of books, reduce it by the order amount")
print("Ordering \(order.quantity) (\(order.book.title)) ")
order.book.orderBooks(quantity: order.quantity)

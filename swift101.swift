import Foundation

/*
Swift101 course project 
*/ 

struct Film{
  var name : String
  var rate : Float
  var categories : [String]

  private func printCategories() -> String{
    var output = ""
    for category in self.categories{
        output += category + ", "
    }
    return output
  }

  func getInfo() -> String {
    return "name: \(self.name), rate: \(self.rate), category: \(printCategories())"
  }

  func isInCategory( category: String ) -> Bool {
    for item in self.categories{
        if (category == item){
          return true
        }
    }
    return false
  }

  func isInRateRange( minRate: Float, maxRate: Float ) -> Bool {
    if (self.rate <= maxRate && self.rate >= minRate){
      return true
    }
    return false
  }
}

var films = [
  Film(name: "A Beautiful Mind", rate: 8.2, categories: ["Biography", "Drama"]),
  Film(name: "Finding Nemo", rate: 8.1, categories: ["Animation", "Adventure", "Comedy"]),
  Film(name: "When a Stranger Calls", rate: 5.1, categories: ["Horror", "Thriller"]),
  Film(name: "the pursuit of happyness", rate: 8, categories: ["Biography", "Drama"]),
  Film(name: "Inside Out", rate: 8.2, categories: ["Animation", "Adventure", "Comedy"]),
  Film(name: "Inception", rate: 9, categories: ["Drama", "Action", "Adventure"])
]

// Q1
print("Q1: اسم الفيلم → سيقوم بتزويدنا بمعلومات الفيلم.")
func getFilmByName(name: String){
  for film in films{
    if(film.name == name){
      print(film.getInfo())
      break
    }
  }
}
getFilmByName( name: "Inside Out" )

//Q2
print("Q2: الفئة → ستقوم بتزويدنا بجميع الأفلام التي تندرج تحت هذه الفئة.")
func getFilmsByCategory(category: String){
  for film in films{
    if(film.isInCategory(category: category)){
      print(film.getInfo())
    }
  }
}
getFilmsByCategory( category: "Animation" )

//Q3
print("Q3: نطاق التقييم → ستقوم بتزويدنا بجميع الأفلام التي يكون تقييمها ضمن النطاق المعطى.")
func getFilmsByRateRange(minRate: Float, maxRate: Float){
  for film in films{
    if(film.isInRateRange( minRate: minRate, maxRate: maxRate )){
      print(film.getInfo())
    }
  }
}
getFilmsByRateRange(minRate: 5, maxRate: 8)



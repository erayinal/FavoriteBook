//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Eray İnal on 25.03.2024.
//

import Foundation

struct FavoriteModel : Identifiable {      //2 Burada bunu identifiable yaparak, önceki projemizde List yazdırırken id vermiştik, burada ona gerek kalmamasını sağladık
    
    var id = UUID()     //.2 Identifiable yaptığımız her struct'ta bir tane 'id' değişkenin olması lazım
    var title : String
    var elements : [FavoriteElements]     //..2 elementelerin hem resmi hem başlığı hem metni falan olacka o yüzden bunun için ayrı bir model oluşturalım ve ondan sonra tanımlayalım
    
}

struct FavoriteElements: Identifiable{
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}


let var1 = FavoriteElements(name: "G63", imagename: "g63", description: "Amazing car that I love")
let var2 = FavoriteElements(name: "BMW M4", imagename: "bmwM4", description: "Amazing car")

let FavoriteCars = FavoriteModel(title: "Favorite Cars", elements: [var1, var2])


let var3 = FavoriteElements(name: "Black List", imagename: "blackList", description: "10 Season")
let var4 = FavoriteElements(name: "Dark", imagename: "dark", description: "3 Season")
let var5 = FavoriteElements(name: "Vikings", imagename: "vikings", description: "6 Season")
let var6 = FavoriteElements(name: "Narcos", imagename: "narcos", description: "3 Season")

let FavoriteSeries = FavoriteModel(title: "Favorite Series", elements: [var3, var4, var5, var6])


let myFavorites = [FavoriteCars, FavoriteSeries]

//3 Şimdi ContentView içerisine dönelim

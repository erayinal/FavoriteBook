//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Eray İnal on 25.03.2024.
//

//1 Öncelikle 'New File..' kısmından bir tane 'Swift' olarak bir dosya oluşturalım ve oraya gidelim. Dikkat edelim SwiftUI değil, Swift dosyası açıyoruz

// Şimdi navigasyon nasıl yapılır ona bir bakalım:

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{ //.4 Öncelikle tüm sayfayı NavigationView içerisinde yapmam gerekiyor
            
            List{
                ForEach(myFavorites){favorite in
                    Section(header: Text(favorite.title)) { //.3 Section sayesinde böyle başlık ve içerik elde edebiliyoruz
                        ForEach(favorite.elements){ element in
                            
                            //..4 Navigation
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                            
                            
                        }
                    }
                }
                
            }.navigationTitle("Favorite Book") //...4 Burada da En üste yazılacak başlığı bu şekilde ekleyebiliriz
        }
        
        //5 Şimdi DetailsView'e geçelim
        
    }
}

#Preview {
    ContentView()
}

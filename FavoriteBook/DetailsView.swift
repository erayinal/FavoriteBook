//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Eray İnal on 30.03.2024.
//

import SwiftUI


struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements //.5
    
    var body: some View {
        
        //...5:
        VStack{
            Image(chosenFavoriteElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical)
            Text(chosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            
            Text(chosenFavoriteElement.description)
                .padding(.horizontal)
        }
        
    }
}

#Preview {
    DetailsView(chosenFavoriteElement: var1)    //..5
}

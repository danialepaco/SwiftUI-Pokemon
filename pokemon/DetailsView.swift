//
//  DetailsView.swift
//  pokemon
//
//  Created by Camilo Ortegon on 8/05/20.
//  Copyright © 2020 daniel parra. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct DetailsView: View {

    @State var isFavorite : Bool = false
    var pokemon : Pokemon

    var body: some View {
        VStack {
            KFImage(URL(string: pokemon.image ?? ""))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.3, height: 100)
            Text(pokemon.name)
                .lineLimit(1)
                .font(.headline)
                .padding(.trailing, 20)
            Toggle("Favorite: ", isOn: $isFavorite)
        }
    }
}

struct DetailsView_Preview: PreviewProvider {
    static var previews: some View {
        DetailsView(pokemon: Pokemon(name: "Bulbasaur", image: "https://pokeres.bastionbot.org/images/pokemon/1.png"))
    }
}

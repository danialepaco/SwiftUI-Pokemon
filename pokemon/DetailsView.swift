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

    var pokemon = Pokemon(name: "Bulbasaur", image: "https://pokeres.bastionbot.org/images/pokemon/1.png")

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
        }
    }
}

struct DetailsView_Preview: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}

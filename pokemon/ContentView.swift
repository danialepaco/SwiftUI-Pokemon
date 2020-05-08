//
//  ContentView.swift
//  pokemon
//
//  Created by daniel parra on 29/04/20.
//  Copyright © 2020 daniel parra. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct ContentView: View {

    @ObservedObject var model = PokemonsViewModel()

    init() {
        model.getPokemons()
    }

    var body: some View {
        List {
            ForEach(model.pokemon, id: \.self.name) { poke in
                HStack {
                    KFImage(URL(string: poke.image ?? ""))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: 100)
                    Spacer()
                    Text(poke.name)
                        .lineLimit(1)
                        .font(.headline)
                        .padding(.trailing, 20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

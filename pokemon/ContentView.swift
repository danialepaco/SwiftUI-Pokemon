//
//  ContentView.swift
//  pokemon
//
//  Created by daniel parra on 29/04/20.
//  Copyright © 2020 daniel parra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var list = PokemonList()
    
    var body: some View {
        List {
            ForEach(list.pokemon, id: \.self) { poke in
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: 100)
                    Spacer()
                    Text(poke)
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

class PokemonList {
    var pokemon: [String] = ["Bulbasaur","squirtle","Charmander","Pikachu"]
}

//
//  PokemonsViewModel.swift
//  pokemon
//
//  Created by Camilo Ortegon on 8/05/20.
//  Copyright © 2020 daniel parra. All rights reserved.
//

import Foundation
import Alamofire

class PokemonsViewModel : ObservableObject {

    var pokemon: [Pokemon] = [
        Pokemon(name: "Bulbasaur", image: ""),
        Pokemon(name: "Squirtle", image: ""),
        Pokemon(name: "Charmander", image: ""),
        Pokemon(name: "Pikachu", image: "")
    ]

    func getPokemons() {
    }

}

struct Pokemon {
    var name : String
    var image : String
}

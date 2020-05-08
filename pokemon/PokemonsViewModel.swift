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

    @Published var pokemon: [Pokemon] = []

    func getPokemons() {
        AF.request("https://pokeapi.co/api/v2/pokemon", method: .get).responseJSON { response in
            
            let decoder = JSONDecoder()
            guard let data = response.data else { return }
            
            do {
                
                let pokemonsResponse = try decoder.decode(PokemonsResponse.self, from: data)
                self.pokemon = pokemonsResponse.results
                    .enumerated()
                    .map { item in
                        var pokemon = item.element
                        pokemon.image = "https://pokeres.bastionbot.org/images/pokemon/\(item.offset+1).png"
                        return pokemon
                }
                
            } catch {
                print(error)
            }
            
        }
    }

}

struct PokemonsResponse : Decodable {
    var count: Int
    var results : [Pokemon]
}

struct Pokemon : Decodable {
    var name : String
    var image : String?
}

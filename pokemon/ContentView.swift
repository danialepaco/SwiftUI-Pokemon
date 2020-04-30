//
//  ContentView.swift
//  pokemon
//
//  Created by daniel parra on 29/04/20.
//  Copyright © 2020 daniel parra. All rights reserved.
//

import SwiftUI

//MARK: List shows all the views as cells
//MARK: List's container always align horizontally as a HStack

struct ContentView: View {
    
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        List(colors, id: \.self) { color in
            //Imaginary HStack {}
                Text(color.description.capitalized)
                    .padding()
                    .background(color)
            //Imaginary HStack {}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

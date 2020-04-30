//
//  ContentView.swift
//  pokemon
//
//  Created by daniel parra on 29/04/20.
//  Copyright © 2020 daniel parra. All rights reserved.
//

import SwiftUI

//MARK: ForEach shows all the views similar to a VStack in this particular case

struct ContentView: View {
    
    let colors: [Color] = [.red, .green, .blue]

    var body: some View {
        ForEach(colors, id: \.self) { color in
            Text(color.description.capitalized)
                .padding()
                .background(color)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

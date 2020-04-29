//
//  ContentView.swift
//  pokemon
//
//  Created by daniel parra on 29/04/20.
//  Copyright © 2020 daniel parra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "star.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.5)
            .foregroundColor(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

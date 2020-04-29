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
        HStack {
            Rectangle()
                .fill(Color.red)
                .cornerRadius(15)
                .frame(width: 150, height: 150)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 150, height: 150)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

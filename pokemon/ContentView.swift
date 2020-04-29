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
        VStack(spacing: 10) {
            Text("This is my 1st")
                .bold()
                .italic()
                .foregroundColor(Color.gray)
            Text("Hello World!")
                .font(.largeTitle)
            Text("@SwiftUI")
                .font(.title)
                .foregroundColor(Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

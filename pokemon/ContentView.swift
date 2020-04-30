//
//  ContentView.swift
//  pokemon
//
//  Created by daniel parra on 29/04/20.
//  Copyright © 2020 daniel parra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter")
                .font(.headline)
                .padding(.leading, 20)
            TextField("Placeholder", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.leading, .trailing], 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

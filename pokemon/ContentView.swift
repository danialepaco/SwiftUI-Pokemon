//
//  ContentView.swift
//  pokemon
//
//  Created by daniel parra on 29/04/20.
//  Copyright © 2020 daniel parra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive = false
    
    var body: some View {
        VStack {
            Toggle("This a label", isOn: $isActive)
                .padding()
            Toggle("", isOn: $isActive)
                .labelsHidden()// Best practice to hide label
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

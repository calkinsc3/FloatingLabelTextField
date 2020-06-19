//
//  ContentView.swift
//  FloatingLabelTextField
//
//  Created by William Calkins on 6/19/20.
//  Copyright © 2020 Calkins Computer Consulting. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let lables = ["First Name", "Last Name", "Email or UserID", "Password"]
    @State private var values = Array(repeating: "", count: 4)
    
    var body: some View {
        List(0 ..< 4) { index in
            FloatingTextField(title: self.lables[index], text: self.$values[index])
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

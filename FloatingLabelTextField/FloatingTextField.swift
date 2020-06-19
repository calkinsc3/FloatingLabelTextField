//
//  FloatingTextField.swift
//  FloatingLabelTextField
//
//  Created by William Calkins on 6/19/20.
//  Copyright © 2020 Calkins Computer Consulting. All rights reserved.
//

import SwiftUI

struct FloatingTextField: View {
    
    let title: String
    let text: Binding<String>
    
    var body: some View {
        ZStack(alignment: .leading) {
            Text(title)
                .foregroundColor(text.wrappedValue.isEmpty ? Color(.placeholderText) : .accentColor)
                .offset(y: text.wrappedValue.isEmpty ? 0 : -25)
                .scaleEffect(text.wrappedValue.isEmpty ? 1 : 0.75, anchor: .leading)
            TextField("", text: text)
        }
        .padding(.top, 15)
        .animation(.spring(response: 0.4, dampingFraction: 0.3))
    }
}

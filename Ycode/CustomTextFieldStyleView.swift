//
//  CustomTextFieldStyleView.swift
//  Ycode
//
//  Created by Yhanco Grey Esteban on 1/31/23.
//

import SwiftUI

struct CustomTextFieldStyleView: View {
    @State private var text: String = ""
    
    var body: some View {
        TextField("Write here", text: $text)
            .textFieldStyle(.outline)
    }
}

struct OutlineTextFieldStyle: TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.accentColor, lineWidth: 1))
    }
}

extension TextFieldStyle where Self == OutlineTextFieldStyle {
    static var outline: Self { .init() }
}

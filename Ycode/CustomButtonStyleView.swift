//
//  ButtonStyleView.swift
//  Ycode
//
//  Created by Yhanco Grey Esteban on 1/31/23.
//

import SwiftUI

struct CustomButtonStyleView: View {
    
    var body: some View {
        Button("Press Me!") {
            // do nothing
        }
        .buttonStyle(.roundedRectangle)
    }
}

struct RoundedRectangleButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .padding()
            .foregroundColor(.primary)
            .background(configuration.isPressed ? Color.accentColor : Color.indigo)
            .clipShape(RoundedRectangle(cornerRadius: configuration.isPressed ? 30 : 10))
    }
}

extension ButtonStyle where Self == RoundedRectangleButtonStyle {
    static var roundedRectangle: Self { .init() }
}


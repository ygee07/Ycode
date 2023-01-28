//
//  ContentView.swift
//  Ycode
//
//  Created by Yhanco Grey Esteban on 1/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0
    
    var body: some View {
        VStack(spacing: 20) {
            
            VStack {
                Image(systemName: "arrowshape.right.fill")
                    .imageScale(.large)
                Text("Hello, world!")
            }
            .padding(50)
            .background(Color.secondary)
            .rotation3DEffect(Angle(degrees: rotation), axis: (x: 0, y: 1, z: 0))
            .rotation3DEffect(Angle(degrees: rotation), axis: (x: 0, y: 1, z: 0))
            
            
            Button("Rotate") {
                withAnimation {
                    rotation += 180
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

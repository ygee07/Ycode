//
//  RespondToMotion.swift
//  Ycode
//
//  Created by Yhanco Grey Esteban on 1/31/23.
//

import SwiftUI
import CoreMotion

class MotionManager: ObservableObject {
    private let motionManager = CMMotionManager()
    @Published var x = 0.0
    @Published var y = 0.0
    
    init() {
        motionManager.startDeviceMotionUpdates(to: .main) { [weak self] data, error in
            guard let motion = data?.attitude else { return }
            self?.x = motion.roll
            self?.y = motion.pitch
        }
    }
}

struct RespondToMotionView: View {
    @ObservedObject private var motion = MotionManager()
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .resizable()
            .frame(width: 300, height: 300)
            .offset(x: motion.x * 30, y: motion.y * 30)
    }
}

//
//  ContentView.swift
//  airpods-sensor-logging
//
//  Created by rei.nakaoka on 2022/05/27.
//

import SwiftUI

struct ContentView: View {
    let motionManager = MotionManager()

    var body: some View {
        Button(action: {motionManager.startStream()}) {
            Text("start")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

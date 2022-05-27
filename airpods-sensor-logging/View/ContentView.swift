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
        VStack {
            Button(action: {motionManager.startStream()}) {
                Text("start")
            }
            LineChartsView()
                .frame(height: 200)
            LineChartsView()
                .frame(height: 200)
        }
    }
}

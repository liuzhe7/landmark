//
//  landmarksApp.swift
//  landmarks
//
//  Created by solar on 2024/8/16.
//

import SwiftUI

@main
struct landmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}

//
//  ContentView.swift
//  landmarks
//
//  Created by solar on 2024/8/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())

}

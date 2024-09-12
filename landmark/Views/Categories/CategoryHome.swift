//
//  CategoryHome.swift
//  landmark
//
//  Created by solar on 2024/9/8.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("hello world")
                .navigationTitle("Featured")

        } detail: {
            Text("Select a Landmark")

        }            

    }
}

#Preview {
    CategoryHome()
}

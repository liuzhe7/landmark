//
//  ProfileHost.swift
//  landmark
//
//  Created by solar on 2024/9/17.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    
    
    var body: some View {
        VStack(alignment: .leading, content: {
        })
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}

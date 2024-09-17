//
//  ProfileHost.swift
//  landmark
//
//  Created by solar on 2024/9/17.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode

    @State private var draftProfile = Profile.default
    
    @Environment(ModelData.self) var modelData

    
    var body: some View {
        VStack(alignment: .leading, content: {
            HStack {
                
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        })
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}

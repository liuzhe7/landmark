//
//  ProfileSummary.swift
//  landmark
//
//  Created by solar on 2024/9/17.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 10, content: {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")            })
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)

            
            
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
}

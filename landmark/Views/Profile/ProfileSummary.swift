//
//  ProfileSummary.swift
//  landmark
//
//  Created by solar on 2024/9/17.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData

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

                Divider()
            
            VStack(alignment: .leading) {
                Text("Completed Badges")
                    .font(.headline)


                ScrollView(.horizontal) {
                    HStack {
                        HikeBadge(name: "First Hike")
                        HikeBadge(name: "Earth Day")
                            .hueRotation(Angle(degrees: 90))
                        HikeBadge(name: "Tenth Hike")
                            .grayscale(0.5)
                            .hueRotation(Angle(degrees: 45))
                    }
                    .padding(.bottom)
                }
            }
            Divider()
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)


                HikeView(hike: modelData.hikes[0])
            }
            
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}

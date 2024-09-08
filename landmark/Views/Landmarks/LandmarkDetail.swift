//
//  LandmarkDetail.swift
//  landmarks
//
//  Created by solar on 2024/8/20.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData

    var landmark: Landmark
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData

        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .padding(.bottom, -130.0)
                .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-130.0/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
                
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)}

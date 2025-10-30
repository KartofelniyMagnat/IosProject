//
//  ContentView.swift
//  SampleProject
//
//  Created by Таир  Баимбетов on 29.10.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white],
                           startPoint: .topTrailing,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70,
                                      weight:.medium))
                        .foregroundColor(.white)
                    
                }
                Spacer()
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temperature: 76)
                    
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        
        
        VStack(spacing: 5){
            Text(dayOfWeek)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            Text("\(temperature)")
                .font(.system(size: 24,
                              weight:.medium))
                .foregroundColor(.white)
            
        }
    }
}

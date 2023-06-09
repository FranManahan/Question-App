//
//  ContentView.swift
//  Question App
//
//  Created by scholar on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var breakfast = ""
    @State private var text = ""
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color(red: 0.952, green: 0.658, blue: 0.227)
                    .ignoresSafeArea()
                

                
                VStack {
                    
                    Text("What's the best breakfast food?")
                        .tint(.white)
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                    
                    Image("breakfast")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                    HStack {
                        
                        Button("Pancakes") {
                            breakfast = "🥞"
                            text = "My opinion: Best with pancakes, but waffles are better!"
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                        
                        Button("Waffles") {
                            breakfast = "🧇"
                            text = "My opinion: Waffles are clearly superior to pancakes. I respect your choice."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                        
                        Button("Toast") {
                            breakfast = "🍞"
                            text = "My opinion: To be good, toast needs to have something on it. Butter or peanut butter are the best options."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                        
                    }
                    HStack {
                        
                        Button("Eggs") {
                            breakfast = "🍳"
                            text = "My opinion: Hmm...personally I don't like scrambled ones, but most other forms of eggs are okay."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                        
                        Button("Cereal") {
                            breakfast = "🥣"
                            text = "My opinion: You HAVE to put the cereal first before the milk, otherwise you're ruining your life. Also Cinnamon Toast Crunch is superior."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                        
                        Button("Muffin") {
                            breakfast = "🧁"
                            text = "My opinion: Kinda heavy depending on how big the muffin is? Also too sweet sometimes...and yes, this is the closest I could get to finding a muffin. Come on, Apple."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.orange)
                        
                    }
                    
                    Text(breakfast)
                        .font(.system(size: 50))
                    Text(text)
                        .font(.title3)
                    
                    
                }
                .padding()
                .background(Rectangle() .foregroundColor(.white))
                .cornerRadius(5)
                .shadow(radius: 3)
                .padding()
            }
            
            .toolbar {
                NavigationLink(destination: secondQuestion()) {
                    Text("Next!")
                }
            }
            
            .navigationTitle("First Question")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

//
//  thirdQuestion.swift
//  Question App
//
//  Created by scholar on 6/9/23.
//

import SwiftUI

struct fourthQuestion: View {
    
    @State private var dessert = ""
    @State private var text = ""
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(red: 0.317, green: 0.811, blue: 0.752)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Let's talk dessert!")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                    
                    Image("dinner")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                    HStack {
                        
                        Button("Ice cream") {
                            dessert = "🍦"
                            text = "My opinion: Pizza is great, but there are some toppings that are just nasty. Stack as much cheese and pepperoni as you want, but personally sausage and olives are NASTY. Pineapples are acceptable."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.teal)
                        
                        Button("Chocolate") {
                            dessert = "🍫"
                            text = "Are you going out to eat? Great! Just don't go to McDonalds."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.teal)
                        
                        Button("Donut") {
                            dessert = "🍩"
                            text = "YESSSSS There's nothing wrong with tacos. Put whatever you want on there. Tacos are obviously the best food and you've obviously won this whole quiz congratulations"
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.teal)
                        
                    }
                    
                    HStack {
                        Button("Pie") {
                            dessert = "🥧"
                            text = "My opinion: HI FELLOW PERSON OF SPANISH DESCENT"
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.teal)
                        
                        Button("Cake") {
                            dessert = "🍰"
                            text = "My opinion: Only good in certain scenarios like BBQs or generally anywhere outside, but other than that I don't like eating them."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.teal)
                        
                        Button("Flavored Ice") {
                            dessert = "🍧"
                            text = "My opinion: fried > grilled any day of the week!"
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.teal)
                        
                    }
                    
                    Text(dessert)
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
                NavigationLink(destination: ContentView()) {
                    Text("Start over?")
                    
                    
                        .navigationTitle("Fourth Question")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(false)
                    
                }
            }
        }
        
    }
    
}

struct fourthQuestion_Previews: PreviewProvider {
    static var previews: some View {
        thirdQuestion()
    }
}


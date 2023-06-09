//
//  secondQuestion.swift
//  Question App
//
//  Created by scholar on 6/9/23.
//

import SwiftUI

struct secondQuestion: View {
    
    @State private var lunch = ""
    @State private var text = ""
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color(red: 0.603, green: 0.803, blue: 0.196)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("Well, what about lunch?")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                    
                    Image("lunch")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                    HStack {
                        
                        Button("Sandwich") {
                            lunch = "🥪"
                            text = "My opinion: Pretty basic, but I respect it. The toppings make or break the sandwich, as well as the condiments."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                        
                        Button("Sushi") {
                            lunch = "🍱"
                            text = "My opinion: Nothing wrong with this. Very yummy."
                        }
                        .tint(.green)
                        .buttonStyle(.borderedProminent)
                        
                        Button("Salad") {
                            lunch = "🥗"
                            text = "My opinion: A lot of salads are too plain and need to include more. Anything but bell peppers because they make me sick."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                        
                        
                    }
                    
                    HStack {
                        
                        Button("Falafel") {
                            lunch = "🧆"
                            text = "My opinion: Dang, you go to KWK don't you? Falafel is good when it's not spicy."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                        
                        Button("Plain veggies") {
                            lunch = "🥒"
                            text = "My opinion: Like a salad, but with less steps. I would rather eat it as a snack than lunch. Still good though!"
                        }
                        .tint(.green)
                        .buttonStyle(.borderedProminent)
                        
                        
                    }
                    
                    Text(lunch)
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
                NavigationLink(destination: thirdQuestion()) {
                    Text("Next!")
                    
                    
                        .navigationTitle("Second Question")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(false)
                    
                }
                
            }
        }
        
    }
    
    struct secondQuestion_Previews: PreviewProvider {
        static var previews: some View {
            secondQuestion()
        }
    }
}

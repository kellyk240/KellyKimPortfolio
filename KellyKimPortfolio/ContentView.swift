//
//  ContentView.swift
//  KellyKimPortfolio
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
        ZStack {
            
            VStack {
                Text("Kelly Kim")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color(hue: 0.962, saturation: 0.622, brightness: 0.971))
            
                Image("Kelly")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 230, height: 300)
                    .border(.pink, width: 5)
                    .padding()
                    .imageScale(.small)
                    .foregroundColor(.accentColor)
                
                VStack {
                    Text("Do you want to learn more about me?")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.279, saturation: 0.946, brightness: 0.494))
                        .multilineTextAlignment(.center)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(hue: 0.258, saturation: 0.702, brightness: 0.817), lineWidth: 2)
                        )
                    
                    Button("Yes") {
                        self.showDetails = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.pink)
                    .cornerRadius(1)
                    .padding()
                }
            }//end of Vstack
        }//end of ZStack

    }//end of body
}//end of struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

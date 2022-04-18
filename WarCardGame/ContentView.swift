//
//  ContentView.swift
//  WarCardGame
//
//  Created by Or Zino on 17/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 150.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150.0)
                Spacer()
                HStack {
                    Spacer()
                    Image("c2")
                        .resizable(resizingMode: .stretch)
                        .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image("c3")
                        .resizable(resizingMode: .stretch)
                        .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                Spacer()
                Image("play")
                    .resizable(resizingMode: .stretch)
                    .frame(width: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
            
                Spacer()
            HStack{
                Spacer()
                VStack{
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                    Text("0")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                }
                Spacer()
                VStack{
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Text("0")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                }
                Spacer()
                
            }
                Spacer()
            }
//
//            Spacer()
//

//        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

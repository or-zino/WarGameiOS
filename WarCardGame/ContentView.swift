//
//  ContentView.swift
//  WarCardGame
//
//  Created by Or Zino on 17/04/2022.
//

import SwiftUI



struct ContentView: View {
    

    
    @State var playerCard  = "c15"
    @State var cpuCard     = "c15"
    @State var playerScore = 0
    @State var cpuScore    = 0
    @State var numGames    = 0
    @State var logo        = "logo"
    @State var winner      = ""
    @State var btn         = "play"
    @State var startOver   = false
    @State var running     = false
    @State var counter     = 0
    var timer = Timer()
    
    
    
    var body: some View {
        
        

            
        ZStack{
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                VStack {
                Image(logo)
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0)
                            
                
                Text(winner)
                        .font(.largeTitle)
                        .foregroundColor(Color.yellow)
                        .padding(.bottom)
                }
                HStack {
                    Text(String(numGames))
                        .font(.largeTitle)
                        .padding(.bottom)
                    Text("/ 15")
                        .font(.largeTitle)
                        .padding(.bottom)
                }
                
                HStack {
                    Spacer()
                    Image(playerCard)
                        .resizable(resizingMode: .stretch)
                        .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image(cpuCard)
                        .resizable(resizingMode: .stretch)
                        .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                Spacer()
                
                Button(action:{
                    
                    if(numGames < 15){
                        btn = "wait2"
                    Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in
                            
                        if(counter == 15){
                            timer.invalidate()
                        }
                        else{
                            startGame()
                            counter+=1

                           }
                        }
                    }else{
                        counter     = 0
                        playerScore = 0
                        cpuScore    = 0
                        numGames    = 0
                        logo        = "logo"
                        btn         = "play"
                        winner      = ""
                        playerCard  = "c15"
                        cpuCard     = "c15"
                                    
                               }
                },
                       label:{
                    Image(btn)
                        .resizable(resizingMode: .stretch)
                        .frame(width: 150.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/150.0)
                } )
                
                Spacer()
            HStack{
                Spacer()
                VStack{
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                    Text(String(playerScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                }
                Spacer()
                VStack{
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Text(String(cpuScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                }
                Spacer()
                
            }
                Spacer()
                


        }

        }

        
    }
    func startGame(){
            let randNum1 = Int.random(in:2...14)
            let randNum2 = Int.random(in:2...14)
            playerCard = "c" + String(randNum1)
            cpuCard    = "c" + String(randNum2)
            if(randNum1 > randNum2){
            playerScore += 1
            }
            else if(randNum2 > randNum1){
                cpuScore += 1
                }
                numGames += 1
                
                if(numGames == 15){
                //startOver = true
                logo = "winner"
                btn = "reload"
    
                if(playerScore > cpuScore){
                    winner = "Player Win!!!"
                    }
                else if(cpuScore > playerScore){
                    winner = "CPU Win!!!"
                    }
                    else{
                        winner = "It's a Tie!!!"
                    }
    
        
                }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

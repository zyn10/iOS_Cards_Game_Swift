//
//  ContentView.swift
//  warGame
//
//  Created by Zain 👻 on 25/07/2021.
//

import SwiftUI

struct ContentView: View
{
    
    @State  var CpuScore    = 0
    @State  var PlayerScore = 0
    @State  var CpuCard     = "card14"
    @State  var PlayerCard  = "card5"
     
    
    var body: some View
    {
        ZStack
        {
            
            VStack()
            {
                Spacer()
                Image("logo")
                Spacer()
                
            HStack()
            {
                Spacer()
                Image(CpuCard)
                Spacer()
                Image(PlayerCard)
                Spacer()
            }
                
                Spacer()
   
                
                
                Button (action:
                {
                  //generate the random numbers between 2 and 14
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom    = Int.random(in: 2...14)
                    
                 // Update the Card
                    PlayerCard = "card" + String(playerRandom)
                    CpuCard    = "card" + String(cpuRandom)
                     
                    if playerRandom > cpuRandom
                    { PlayerScore += playerRandom }
                    else if cpuRandom > playerRandom
                    { CpuScore    += cpuRandom }
                 
                
                }
                ,label :
                {
                    Image("dealbutton")
                    .aspectRatio(22, contentMode: .fit)
                }
                )
                
                
                Spacer()
            HStack(alignment: .center)
            {  Spacer()
                VStack(alignment: .center)
                {
                Text("CPU")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .bold()
                    
                Text(String(CpuScore))
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .bold()
                .padding(.top, 10.0)
                    
                }.padding()
                
                Spacer()
                
                VStack(alignment: .center)
                {
                Text("Player")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .bold()
                    
                Text(String(PlayerScore))
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .bold()
                .padding(.top, 10.0)
                }.padding()
                Spacer()
            }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                Spacer()
            }.background(Image("backback"))
            //.background(Color.accentColor).ignoresSafeArea()
    }
  }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

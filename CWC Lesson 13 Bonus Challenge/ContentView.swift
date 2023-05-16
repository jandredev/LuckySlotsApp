// Lucky Slots App
//
// Created by Ioannis Andreoulakis on 8/5/23.
//

import SwiftUI

struct ContentView: View {
    
    private var pictures = ["apple", "cherry", "star"]
    @State private var number = [1, 2, 0]
    @State private var credits = 1000
    private var betAmount = 5
      
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(Color(red:200/255, green:143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                    
                    Text("Lucky Slots!")
                        .font(.largeTitle)
                        .padding(.all, 10)
                        .foregroundColor(.white)
                        .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                
                Text("Credits: " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                    .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                                                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Image(pictures[number[0]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                        .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                    
                    Image(pictures[number[1]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                        .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                    
                    Image(pictures[number[2]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                        .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    self.number[0] = Int.random(in:0...pictures.count - 1 )
                    
                    self.number[1] = Int.random(in:0...pictures.count - 1 )
                    
                    self.number[2] = Int.random(in:0...pictures.count - 1 )
                    
                    if self.number[0] == self.number[1] &&
                        self.number[1] == self.number[2] {
                        
                        self.credits += self.betAmount * 10
                   
                    }
                    else {
                        self.credits -= self.betAmount
                    }

                    
                },
                       label: {
                    Text("Spin")
                        .shadow(radius: 3)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 43)
                        .background(Color.pink)
                        .cornerRadius(20)
    
                    }
                ) .shadow(radius: 3)
                
                Spacer()
                
                Button(action: {
                    
                    credits = 500
                    
                },
                       label: {
                    Text("Restart")
                        .shadow(radius: 3)
                        .bold()
                        .foregroundColor(Color.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.orange)
                        .cornerRadius(20)
                    }
                ) .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            }
            
            Spacer()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

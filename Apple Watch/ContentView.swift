//
//  ContentView.swift
//  Apple Watch
//
//  Created by User11 on 2022/9/21.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        ZStack(alignment: .bottom) {
            Color.black
                .ignoresSafeArea()
            
        
            VStack()
            {
                Text("Good Afternoon")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Spacer().frame(height :10)
                
                Text("If you have an Apple Watch, you can pair it")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Text("with your phone here.")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Spacer().frame(height :20)
                
                Link(destination: URL(string: "https://support.apple.com/guide/watch/welcome/watchos")!) {
                    VStack {
                        Text("Learn more about Apple Watch")
                            .accentColor(Color.orange)
                        
                    }
                }
                Spacer().frame(height : 25)
                Image("apple")
                    .resizable()
                    .frame(width: 330, height: 330, alignment: .center)
                
                Spacer().frame(height : 25)
                
                VStack{
                    Button(action: {
                    }, label: {
                        Text("Start Pairing")
                            .font(.headline)
                    })
                    .frame(minWidth: 0, maxWidth: 350, minHeight: 0 , maxHeight: 50)
                    .background(Color.gray)
                    .accentColor(Color.white)
                    .cornerRadius(15)
                }
                .padding(.bottom , 120)
            }
            
            HStack{
                Button(action: {
                },label:{
                    VStack {
                        Image("watch")
                        Text("My Watch")
                            .fontWeight(.light)
                            .font(.caption)
                    }
                    .foregroundColor(.orange)
                })
                
                Button(action: {
                }) {
                    VStack {
                        Image("face")
                        Text("Face Gallery")
                            .fontWeight(.light)
                            .font(.caption)
                    }
                    .padding(.horizontal, 70)
                    .foregroundColor(.white)
                }
                
                Button(action: {
                }) {
                    VStack {
                        Image("dis")
                        Text("Discover")
                            .fontWeight(.light)
                            .font(.caption)
                    }
                    .cornerRadius(10)
                    .foregroundColor(.white)
                }
            }
            .background(Color.black)
        }
        }
        
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

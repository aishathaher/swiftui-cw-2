//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI


struct Exercise1: View {
    @State var name = ""
    @State var age = 0
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
              
                    
                        VStack {
                            TextField("Type your name here", text: $name)
                            
                            Stepper("كم بطلا من الماء ستشرب؟:",  value: $age, in: 1...122)
                                .padding()
                            Text("اتعهد انا \(name)")
                            
                            
                        }
//                        Stepper("كم بطلا من الماء تتعهد ان تشرب؟" ،value: "$WaterAmount")
                        
                        Spacer()
                            .padding()
                    }
                }
            }
        }
        
        struct Exercise1_Previews: PreviewProvider {
            static var previews: some View {
                Exercise1()
            }
        }

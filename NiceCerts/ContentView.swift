//
//  ContentView.swift
//  NiceCerts
//
//  Created by Matthew Jones on 2019-07-17.
//  Copyright © 2019 Matthew Jones. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        ZStack {
            
            TitleView()
                .blur(radius: 20)
            
            CardBottomView()
                .blur(radius: 20)
            
            CardView()
                .offset(x: 0, y: -40)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: 15))
                .rotation3DEffect(Angle(degrees: 50), axis: (x: 10.0, y: 10.0, z: 10.0))
                .blendMode(.hardLight)
            CardView()
                .offset(x: 0, y: -20)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: 10))
                .rotation3DEffect(Angle(degrees: 40), axis: (x: 10.0, y: 10.0, z: 10.0))
                .blendMode(.hardLight)
            CertificateView()
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: 5))
                .rotation3DEffect(Angle(degrees: 30), axis: (x: 10.0, y: 10.0, z: 10.0))
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct CardView : View {
    var body: some View {
        return VStack {
            Text("Card Back")
        }
        .frame(width: 340.0, height: 220.0)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: 20)
    }
}

struct CertificateView : View {
    var body: some View {
        return VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .color(Color("accent"))
                        .font(.headline)
                        .padding(.top)
                    
                    Text("Certificate")
                        .color(.white)
                    
                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30, height: 30)
            }.padding(.horizontal)
            Spacer()
            Image("Background")
            
        }
            
            .frame(width: 340.0, height: 220.0)
            .background(Color.black)
            .cornerRadius(10)
            .shadow(radius: 20)
    }
}

struct TitleView : View {
    var body: some View {
        return VStack {
            HStack {
                Text("Certificates")
                    .font(.title)
                    .fontWeight(.heavy)
                    Spacer()
                }
                Image("Illustration5")
                Spacer()
                }.padding()
            }
        }

        struct CardBottomView : View {
            var body: some View {
                return VStack(spacing: 20.0) {
                    Rectangle()
                        .frame(width: 60, height: 6)
                        .cornerRadius(3.0)
                        .opacity(0.1)
                        Text("This cerficate is proof that Matthew Jones has achieved the UI Design course with approval from a Design+Code instructor.")
                            .lineLimit(10)
                            Spacer()
                        }
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(radius: 20)
                        .offset(y: 600)
                }
            }

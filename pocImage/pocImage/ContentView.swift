//
//  ContentView.swift
//  pocImage
//
//  Created by Pedro Sousa on 17/05/21.
//

import SwiftUI

struct ContentView: View {

    @State private var blurValue: CGFloat = 3.0
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .center) {
                Image("iceland")
                    .resizable()
                    .scaledToFill()
                    .blur(radius: self.blurValue)
                Color(.black)
                    .opacity(0.3)
                VStack {
                    Text("Iceland")
                        .font(Font.system(size: 72))
                        .fontWeight(.bold)
                        .padding()
                    Button("Explore") {
                        if self.blurValue == 0 {
                            self.blurValue = 3.0
                        } else {
                            self.blurValue = 0
                        }
                    }
                    .font(.title)
                    .padding()
                    .overlay(
                        Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                            .stroke(Color.white, lineWidth: 4)
                    )
                }
            }
            .foregroundColor(.white)
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

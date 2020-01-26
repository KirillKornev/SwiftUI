//
//  AboutView.swift
//  Bullseye
//
//  Created by Кирилл on 1/22/20.
//  Copyright © 2020 Kirill Kornev. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    let orageColor = Color(red: 255.0 / 255.0, green: 214 / 255.0, blue: 179.0 / 255.0)
    
    struct AboutHeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("ArialRoundedMTBold", size: 30))
                .foregroundColor(Color.black)
                .padding(.top, 20)
                .padding(.bottom, 20)
        }
    }
    
    struct AboutBodyStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
            .font(Font.custom("ArialRoundedMTBold", size: 16))
            .foregroundColor(Color.black)
            .padding(.leading, 60)
            .padding(.trailing, 60)
            .padding(.bottom, 20)
        }
    }
    
  var body: some View {
    Group {
        VStack {
            Text("🎯 Bullseye 🎯").modifier(AboutHeadingStyle())
            Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.").modifier(AboutBodyStyle())
            Text("Your goal is to place the slider as close as possible to the target value.The closer you are, the more points you score.").modifier(AboutBodyStyle()).lineLimit(Int.max)
            Text("Enjoy! 🏆").modifier(AboutBodyStyle())
            
            NavigationLink(destination: AboutAuthor()) {
                Image("InfoIcon")
                Text("About Author")
            }
      }
  .navigationBarTitle("About Bullseye")
  .background(orageColor)
    }
  .background(Image("Background"))
  }
}

struct AboutView_Previews: PreviewProvider {
 static var previews: some View {
  AboutView().previewLayout(.fixed(width: 896, height: 414))
 }
}

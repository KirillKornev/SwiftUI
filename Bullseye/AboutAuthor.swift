//
//  AboutAuthor.swift
//  Bullseye
//
//  Created by Кирилл on 1/25/20.
//  Copyright © 2020 Kirill Kornev. All rights reserved.
//

import SwiftUI

struct AboutAuthor: View {
    
    let orageColor = Color(red: 255.0 / 255.0, green: 214 / 255.0, blue: 179.0 / 255.0)
    
    struct AboutHeadingStyle: ViewModifier {
          func body(content: Content) -> some View {
              return content
                  .font(Font.custom("ArialRoundedMTBold", size: 26))
                  .foregroundColor(Color.black)
                  .padding(.top, 20)
                  .padding(.bottom, 30)
          }
      }
    
    struct AboutBodyStyle: ViewModifier {
         func body(content: Content) -> some View {
             return content
             .font(Font.custom("ArialRoundedMTBold", size: 16))
             .foregroundColor(Color.black)
             .padding(.leading, 40)
             .padding(.trailing, 40)
             .padding(.bottom, 20)
         }
     }
    
    var body: some View {
            Group {
              VStack {
                HStack{
                Text("About the Author: Kirill Kornev").modifier(AboutHeadingStyle())
                }.padding(.top, 10)
                
                Text("Kirill is a student who wants to work as a mobile developer! This's the first mobile app for iOS developed by kirill. He trying to make it better and better, so wait for new apdates for this one. When kirill not programming, he's probably playing video games, role playing games, or board games.").modifier(AboutBodyStyle()).lineLimit(Int.max)
//                Text("When kirill not programming, he's probably playing video games, role playing games, or board games.").modifier(AboutBodyStyle()).lineLimit(Int.max)
              }
        .navigationBarTitle("About Author")
        .background(orageColor)
  }
    .background(Image("Background"))
 }
}

struct AboutAuthor_Previews: PreviewProvider {
    static var previews: some View {
        AboutAuthor().previewLayout(.fixed(width: 896, height: 414))
    }
}

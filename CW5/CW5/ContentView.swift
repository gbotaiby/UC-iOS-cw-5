//
//  ContentView.swift
//  CW5
//
//  Created by Ghalia on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Emojis = ["😀","😇","🥰","😣","😱","🤕","🤣","🏇🏻"]
    
@State var image = ""
    
    var body: some View {
        
        VStack() {
            Text("اختار الايموجي اللي يعبر عنك اليوم")
                .font(.title2)
            
                .padding()
            
            Text(image)
                .font(.largeTitle)
            
            
             ScrollView(.horizontal) {
                 HStack{
                     ForEach(Emojis, id: \.self) { Emoji in
                         Text(Emoji)
                             .onTapGesture {
                                 image = Emoji
                             }
                     } .font(.largeTitle)
                 
             }
             
             }
        }
    
         
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

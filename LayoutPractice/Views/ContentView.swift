//
//  ContentView.swift
//  LayoutPractice
//
//  Created by Edgard Vargas on 6/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Bienvenido al curso de swift UI!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
                .background(.gray)
            
            Spacer()
            
            ZStack{
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.gray).padding()
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.green).padding(40)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.red).padding(60)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.blue).padding(80)
            }.background()
            
            Spacer()
            
            HStack {
                Text("Hola hackerman")
                    .padding()
                    .background(.gray)
                
                Spacer()
                
                Text("Bienvenidos a Mauredev")
                    .padding()
                    .background(.gray)
            }
           
            VStack {
                Text("hola")
                Text("hola")
                Text("hola")
                Text("hola")
                Text("hola")
                Text("hola")
                Text("hola")
                Text("hola")
                Text("hola")
            }
            
        }.background(.yellow)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

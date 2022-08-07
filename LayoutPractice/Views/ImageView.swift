//
//  ImageView.swift
//  LayoutPractice
//
//  Created by Edgard Vargas on 6/08/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("playstore").resizable().padding(50).frame(width: 300, height: 300).background(.gray).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 4).shadow(color: Color.gray, radius: 5))
            
            Image(systemName: "person.fill.badge.minus").resizable().padding(50).frame(width: 300, height: 300).background(.gray).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth: 4).shadow(color: Color.gray, radius: 5)).foregroundColor(.green)
        }
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

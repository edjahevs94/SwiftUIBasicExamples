//
//  MainView.swift
//  LayoutPractice
//
//  Created by Edgard Vargas on 6/08/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView().frame(height: 400)
                ImageView().offset(y: -150)
                Divider().padding()
                ContentView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
            MainView()
                .previewDevice("iPhone 13 mini")
        }
    }
}

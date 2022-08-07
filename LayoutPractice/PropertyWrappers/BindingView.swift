//
//  BindingView.swift
//  LayoutPractice
//
//  Created by Edgard Vargas on 6/08/22.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            
            Button("Suma 2") {
                value += 2
            }
            Button("Actualizar datos") {
                user.name = "Diego Ponce"
                user.age = 27
            }
            NavigationLink(destination: EnviromentView(), tag: 1, selection: $selection) {
                Button("Ir a EnviromentView") {
                    //es el encargado de lanzar la navegacion
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData())
    }
}

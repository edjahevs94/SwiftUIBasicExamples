//
//  ListDetailView.swift
//  LayoutPractice
//
//  Created by Edgard Vargas on 6/08/22.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    //binding, variable que ha llegado de otra clase a esta y puede ser modificable
    @Binding var favorite: Bool
    
    var body: some View {
        VStack {
            programmer.avatar.resizable().frame(width: 200, height: 200).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.gray, radius: 5)
            HStack {
                Text(programmer.name).font(.largeTitle)
                Button {
                    //funcion para cambiar la variable booleana de trua a false o de false a true
                    favorite.toggle()
                } label: {
                    if favorite {
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star").foregroundColor(.black)
                    }
                    
                }
            }
            Text(programmer.languages).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 1, name: "Edgard Vargas", languages: "Swift, Java", avatar: Image(systemName: "person.fill"), favorite: true), favorite: .constant(false))
    }
}

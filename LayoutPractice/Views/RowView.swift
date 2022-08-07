//
//  RowView.swift
//  LayoutPractice
//
//  Created by Edgard Vargas on 6/08/22.
//

import SwiftUI

struct RowView: View {
    var programmer: Programmer
    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 40, height: 40).padding()
        
            VStack (alignment: .leading) {
                Text(programmer.name).font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            
        }
        Spacer()
            if programmer.favorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
            
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        //requiere una structura de tipo programador
        //ya que es escencial para que se conforme la representacion de nuestra vista
        RowView(programmer: Programmer(id: 1, name: "Edgard Vargas", languages: "Java, Swift, Python, JavaScript, c#", avatar: Image(systemName: "person.fill"), favorite: true)).previewLayout(.fixed(width: 400, height: 60))
    }
}

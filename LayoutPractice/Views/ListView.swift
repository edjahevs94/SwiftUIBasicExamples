//
//  ListView.swift
//  LayoutPractice
//
//  Created by Edgard Vargas on 6/08/22.
//

import SwiftUI

//este modelo de datos permite que nuestros programadores sean mutables
final class ProgramersModelData: ObservableObject {
    //@published permite que la varible publique sus cambios al ser modificado
    @Published var programmers = [Programmer(id: 0, name: "Edgard Vargas", languages: "Java, Swift", avatar: Image(systemName: "person"), favorite: false), Programmer(id: 1, name: "Juan Vargas", languages: "Swift, Kotlin", avatar: Image(systemName: "person.fill"), favorite: true),  Programmer(id: 2, name: "Victor Vargas", languages: "Python, Java", avatar: Image(systemName: "person"), favorite: true), Programmer(id: 3, name: "Jose Vargas", languages: "Swift, c#", avatar: Image(systemName: "person.fill"), favorite: false)]
}



struct ListView: View {
    
    //para poder usar el arreglo de programers en el filtro
    @EnvironmentObject var programmersModelData: ProgramersModelData
    
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            //retorna programadores en caso de que showfavorite sea false
            //traera todos los programadores
            //o en caso programmer.favorite sea true traera a los programers
            //marcados con favorito true
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        NavigationView {
        VStack {
            //se usa el prefijo dolar para que toggle acceda a la variable de forma mutable
            //toggle solo permite una variabl
            Toggle(isOn: $showFavorites) {
                Text("Mostrar favoritos")
            }.padding()
          
                //el dolar $ siempre va antepuesto a los objetos de tipo estado y observableobjects
            List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)) {
                        RowView(programmer: programmer)
                    }
                   
                }
            }.navigationTitle("Programmers")
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        //instanciamos el enviroment object
        ListView().environmentObject(ProgramersModelData())
    }
}

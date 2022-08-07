//
//  EnviromentView.swift
//  LayoutPractice
//
//  Created by Edgard Vargas on 6/08/22.
//

import SwiftUI

struct EnviromentView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        VStack {
            Text(user.name)
            Text("\(user.age) years")
        }
        
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentView().environmentObject(UserData())
    }
}

//
//  CVView.swift
//  Lebenslauf
//
//  Created by Robin Bettinghausen on 08.10.24.
//

import SwiftUI

struct CVView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Profilbild")
                Divider()
                VStack{
                    Text("Mail")
                    Text("LinkedIn")
                    Text("Github")
                }
            }
            Divider()
            HStack{
                Text("Symbol 1")
                Spacer()
                Text("Symbol 2")
                Spacer()
                Text("Symbol 3")
                
                Text("Symbol 4")
            
                Text("Symbol 5")
            }
            Divider()
            VStack{
                Text("Eintrag 1")
                Text("Eintrag 2")
                Text("Eintrag 3")
                Text("Eintrag 4")
            }
            Divider()
            VStack{
                Text("Eintrag 1")
                Text("Eintrag 2")
                Text("Eintrag 3")
            }
        }
        .padding()
    }
}

#Preview {
    CVView()
}

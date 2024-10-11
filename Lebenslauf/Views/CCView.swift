//
//  CCView.swift
//  Lebenslauf
//
//  Created by Robin Bettinghausen on 10.10.24.
//

import SwiftUI

struct CCView: View {
    var body: some View {
        Button("Abonnieren", action: {
            print("Newsletter abonniert!")
        })
        .font(.footnote)
        .tint(Color.white)
        .frame(width: 110, height: 40)
        .background(.black)
        .clipShape(.rect(cornerRadius: 40))
    }
}
#Preview {
    CCView()
}

//
//  CVView.swift
//  Lebenslauf
//
//  Created by Robin Bettinghausen on 08.10.24.
//

import SwiftUI

struct CVView: View {
    
    var body: some View {
        VStack{
            HeaderView()
            ScrollView{
                Divider()
                ExperienceView()
                Divider()
                EducationView()
            }
        }
    }
}
#Preview {
    CVView()
}

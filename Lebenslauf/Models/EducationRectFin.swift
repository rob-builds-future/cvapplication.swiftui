
import SwiftUI

struct EducationRectFin: View {
    @Environment(\.colorScheme) var colorScheme
    let education: Education
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                VStack(alignment: .leading){
                    Text("\(education.education)")
                        .fontWeight(.bold)
                    Text("\(education.educator)")
                    Text("\(education.startDate) bis \(education.endDate)")
                }
            }
            .padding()
            .foregroundStyle(colorScheme == .light ? Color.white : Color.black)
            .frame(width: 380, height: 100, alignment: .leading)
            .background(colorScheme == .light ? Color.black : Color.white)
            .clipShape(.rect(cornerRadius: 20))
        }
    }
}

#Preview {
    EducationRectFin(education: Education(education: "BA Banking & Finance (2,7)", educator: "DHBW Mosbach & Sparkasse NTOW", startDate: "2012", endDate: "2015"))
}

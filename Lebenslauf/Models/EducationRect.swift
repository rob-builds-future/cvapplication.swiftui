
import SwiftUI

struct EducationRect: View {
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
                Spacer()
                Image(systemName: "hourglass")
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
    EducationRect(education: Education(education: "Mobile Developer Program", educator: "Syntax Institut", startDate: "2024", endDate: "2025"))
}


import SwiftUI

struct EducationRect: View {
    @Environment(\.colorScheme) var colorScheme
    let education: Education
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                VStack(alignment: .leading){
                    Text("\(education.education)")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    HStack{
                        Image(education.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(colorScheme == .light ? Color.white : Color.black, lineWidth: 0.5)
                            )
                        VStack(alignment: .leading){
                            Text("\(education.educator)")
                                .font(.system(size: 18, weight: .regular, design: .rounded))
                            Text("\(education.startDate) to \(education.endDate)")
                                .font(.system(size: 18, weight: .regular, design: .rounded))
                        }
                    }
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
    EducationRect(education: Education(education: "Mobile Developer Program", educator: "Syntax Institut", startDate: "2024", endDate: "2025", image:"Syntax"))
}

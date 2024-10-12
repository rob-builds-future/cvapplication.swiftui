import SwiftUI

struct ExperienceRect: View {
    @Environment(\.colorScheme) var colorScheme
    let experience: Experience
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(experience.title)")
                .font(.system(size: 18, weight: .bold, design: .rounded))
            HStack{
                Image(experience.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(colorScheme == .light ? Color.white : Color.black, lineWidth: 0.5)
                    )
                VStack(alignment: .leading){
                    Text("\(experience.employer), \(experience.location)")
                        .font(.system(size: 18, weight: .regular, design: .rounded))
                    Text("\(experience.startDate) to \(experience.endDate)")
                        .font(.system(size: 18, weight: .regular, design: .rounded))
                }
            }
        }
        .padding()
        .foregroundStyle(colorScheme == .light ? Color.white : Color.black)
        .frame(width: 380, height: 100, alignment: .leading)
        .background(colorScheme == .light ? Color.black : Color.white)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    ExperienceRect(experience: Experience(title: "HR & CRM Process Auditor", employer: "Schwarz Corp. Solutions", location: "Neckarsulm", startDate: "2021", endDate: "2023 (2y 9m)", image: "SCS"))
}

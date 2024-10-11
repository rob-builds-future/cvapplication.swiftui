import SwiftUI

struct ExperienceRect: View {
    @Environment(\.colorScheme) var colorScheme
    let experience: Experience
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(experience.title)")
                .fontWeight(.bold)
            Text("\(experience.employer), \(experience.location)")
            Text("\(experience.startDate) bis \(experience.endDate)")
        }
        .padding()
        .foregroundStyle(colorScheme == .light ? Color.white : Color.black)
        .frame(width: 380, height: 100, alignment: .leading)
        .background(colorScheme == .light ? Color.black : Color.white)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    ExperienceRect(experience: Experience(title: "HR & CRM Process Auditor", employer: "Schwarz Corproate Solutions", location: "Neckarsulm", startDate: "2021", endDate: "2023"))
}

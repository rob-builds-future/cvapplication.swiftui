
import SwiftUI

struct Experience {
    
    var title: String
    var employer: String
    var location: String
    var startDate: String
    var endDate: String
}

struct ExperienceView: View {
    
    let experiences = [
        Experience(title: "Process Auditor Group", employer: "Schwarz Corproate Solutions", location: "Neckarsulm", startDate: "2021", endDate: "2023"),
        Experience(title: "M&A Consultant Banking & Finance", employer: "4P Consulting", location: "Stuttgart", startDate: "2021", endDate: "2021"),
        Experience(title: "IT Consultant Banking & Finance", employer: "KPMG", location: "Köln", startDate: "2019", endDate: "2021"),
        Experience(title: "Financial Statements Auditor", employer: "KPMG", location: "Stuttgart", startDate: "2015", endDate: "2019")
       ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Experiences")
            VStack(alignment: .leading) {
                Text("\(experiences[0].title)")
                Text("\(experiences[0].employer), \(experiences[0].location)")
                Text("\(experiences[0].startDate) bis \(experiences[0].endDate)")
            }
            .padding()
            VStack(alignment: .leading) {
                Text("\(experiences[1].title)")
                Text("\(experiences[1].employer), \(experiences[1].location)")
                Text("\(experiences[1].startDate) bis \(experiences[1].endDate)")
            }
            .padding()
            VStack(alignment: .leading){
                Text("\(experiences[2].title)")
                Text("\(experiences[2].employer), \(experiences[2].location)")
                Text("\(experiences[2].startDate) bis \(experiences[2].endDate)")
            }
            .padding()
            VStack(alignment: .leading){
                Text("\(experiences[3].title)")
                Text("\(experiences[3].employer), \(experiences[3].location)")
                Text("\(experiences[3].startDate) bis \(experiences[3].endDate)")
            }
            .padding()
        }
    }
}
#Preview {
    ExperienceView()
}

import SwiftUI

struct ExperienceView: View {
    let experiences = [
        Experience(title: "HR & CRM Process Auditor", employer: "Schwarz Corp. Solutions", location: "Neckarsulm", startDate: "2021", endDate: "2023 (2y 9m)", image: "SCS"),
        Experience(title: "M&A Consultant Banking & Finance", employer: "4P Consulting", location: "Stuttgart", startDate: "2021", endDate: "2021 (6m)", image: "4PC"),
        Experience(title: "IT Consultant Banking & Finance", employer: "KPMG", location: "Köln", startDate: "2019", endDate: "2021 (1y 6m)", image: "KPMG"),
        Experience(title: "Financial Statements Auditor", employer: "KPMG", location: "Stuttgart", startDate: "2015", endDate: "2019 (3y)", image: "KPMG"),
        Experience(title: "Dual Student", employer: "Sparkasse NTOW", location: "Mosbach", startDate: "2012", endDate: "2015 (3y)", image: "SPK")
       ]
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading){
                Text("Experience")
                    .font(.system(size: 18, weight: .heavy, design: .rounded))
                Divider()
            }
            .padding([.horizontal, .top])
            VStack(alignment: .center){
                ExperienceRect(experience: experiences[0])
                ExperienceRect(experience: experiences[1])
                ExperienceRect(experience: experiences[2])
                ExperienceRect(experience: experiences[3])
                ExperienceRect(experience: experiences[4])
            }
            .padding(.horizontal)
        }
    }
}
#Preview {
    ExperienceView()
}

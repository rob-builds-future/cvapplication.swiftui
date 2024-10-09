import SwiftUI


struct Education {
    
    var education: String
    var educator: String
    var startDate: String
    var endDate: String
}

struct EducationView: View {
    
    let educations = [
        Education(education: "Mobile Developer Program", educator: "Syntax Institut", startDate: "2024", endDate: "2025"),
        Education(education: "MBA Digital Transformation", educator: "FH BFI Wien & E-Learning Group", startDate: "2024", endDate: "2025"),
        Education(education: "BA Banking & Finance", educator: "DHBW Mosbach & Sparkasse NTOW", startDate: "2012", endDate: "2015")
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Educations")
            VStack(alignment: .leading){
                Text("\(educations[0].education)")
                Text("\(educations[0].educator)")
                Text("\(educations[0].startDate) bis \(educations[0].endDate)")
            }
            .padding()
            VStack(alignment: .leading){
                Text("\(educations[1].education)")
                Text("\(educations[1].educator)")
                Text("\(educations[1].startDate) bis \(educations[1].endDate)")
            }
            .padding()
            VStack(alignment: .leading){
                Text("\(educations[2].education)")
                Text("\(educations[2].educator)")
                Text("\(educations[2].startDate) bis \(educations[2].endDate)")
            }
            .padding()
        }
    }
}
#Preview {
    EducationView()
}

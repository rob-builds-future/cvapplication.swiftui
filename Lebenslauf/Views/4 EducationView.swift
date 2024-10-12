import SwiftUI

struct EducationView: View {
    
    let educations = [
        Education(education: "Mobile Developer Program", educator: "Syntax Institut", startDate: "2024", endDate: "2025", image: "Syntax"),
        Education(education: "MBA Digital Transformation (1,4)", educator: "FH BFI Wien & E-Learning Group", startDate: "2024", endDate: "2025", image: "BFIW"),
        Education(education: "BA Banking & Finance (2,7)", educator: "DHBW Mosbach & Sparkasse NTOW", startDate: "2012", endDate: "2015", image: "DHBWM"),
        Education(education: "German High School Diploma (2,2)", educator: "HSG Eberbach", startDate: "2004", endDate: "2012", image: "HSG")
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("Education")
                    .font(.system(size: 18, weight: .heavy, design: .rounded))
                Divider()
            }
            .padding([.horizontal, .top])
            VStack(alignment: .center){
                EducationRect(education: educations[0])
                EducationRect(education: educations[1])
                EducationRectFin(education: educations[2])
                EducationRectFin(education: educations[3])
            }
            .padding(.horizontal)
        }
    }
}
#Preview {
    EducationView()
}

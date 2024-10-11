
import SwiftUI

struct CVView: View {
    
    var body: some View {
        VStack{
            HeaderView()
            ScrollView{
                BannerView()
                ExperienceView()
                EducationView()
            }
        }
    }
}
#Preview {
    CVView()
}

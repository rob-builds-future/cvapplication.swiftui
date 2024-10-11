
import SwiftUI

struct CVView: View {
    
    var body: some View {
        VStack{
            HeaderView()
            ScrollView{
                BannerScrollView()
                ExperienceView()
                EducationView()
            }
        }
    }
}
#Preview {
    CVView()
}

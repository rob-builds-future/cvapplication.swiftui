
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
            .padding(.bottom, 28)
            .mask(
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: .clear, location: 0.0),
                        .init(color: .black, location: 0.05),
                        .init(color: .black, location: 0.95)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom)
            )
        }
        .ignoresSafeArea(edges: .bottom)
    }
}
#Preview {
    CVView()
}

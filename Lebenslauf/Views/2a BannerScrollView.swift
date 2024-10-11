import SwiftUI

struct BannerScrollView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 38) {
                Image("Figma")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Image("SwiftUI")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Image("Kotlin")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Image("Firebase")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Image("GitHub")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Image("Windows Client")
                    .resizable()
                    .frame(width: 20, height: 20)
                
                Image("Mac Logo")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            .padding()
        }
    }
}

#Preview {
    BannerScrollView()
}

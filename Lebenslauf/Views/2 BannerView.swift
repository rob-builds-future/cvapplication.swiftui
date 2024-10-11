import SwiftUI

struct BannerView: View {
    
    var body: some View {
        HStack(){
            Image("Figma")
                .resizable()
                .frame(width: 20, height: 20)
            
            Spacer()
            
            Image("SwiftUI")
                .resizable()
                .frame(width: 20, height: 20)
            
            Spacer()
            
            Image("Kotlin")
                .resizable()
                .frame(width: 20, height: 20)
            
            Spacer()
            
            Image("Firebase")
                .resizable()
                .frame(width: 20, height: 20)
            
            Spacer()
            
            Image("GitHub")
                .resizable()
                .frame(width: 20, height: 20)
            
            Spacer()
            
            Image("Windows Client")
                .resizable()
                .frame(width: 20, height: 20)
            
            Spacer()
            
            Image("Mac Logo")
                .resizable()
                .frame(width: 20, height: 20)
        }
        .padding()
        .padding(.top)
    }
}
#Preview {
    BannerView()
}

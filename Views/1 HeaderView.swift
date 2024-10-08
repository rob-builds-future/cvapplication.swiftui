
import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        VStack{
            Text("Portfolio of Experience and Ambitions")
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .padding(.bottom)
                .padding(.top)
            HStack(alignment: .top) {
                Image("profile_picture")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 125, height: 175)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack{
                        Image(systemName: "envelope.fill")
                        Text(verbatim: "r.bettinghausen@gmx.de")
                            .font(.system(size: 13, weight: .regular, design: .rounded))
                            .foregroundColor(Color(red: 125/255, green: 125/255, blue: 181/255))
                    }
                    HStack{
                        Image("LinkedIn")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text("Robin Bettinghausen")
                            .font(.system(size: 13, weight: .regular, design: .rounded))
                            .foregroundColor(Color(red: 125/255, green: 125/255, blue: 181/255))
                    }
                    HStack{
                        Image("GitHub")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text("rob-builds-future")
                            .font(.system(size: 13, weight: .regular, design: .rounded))
                            .foregroundColor(Color(red: 125/255, green: 125/255, blue: 181/255))
                    }
                    
                    Button {
                        print("Let's Chat button pressed!")
                    } label: {
                        Label("Let's Chat", systemImage: "bubble.left.and.bubble.right.fill")
                    }
                    .labelStyle(.titleAndIcon)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .tint(Color(red: 161/255, green: 94/255, blue: 120/255))
                }
                .padding()
            }
            
            .frame(maxWidth: .infinity, alignment: .top)
            
            
            
            HStack{
                Image("Figma")
                    .resizable()
                    .frame(width: 30, height: 30)
                
                Spacer()
                
                Image("SwiftUI")
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Spacer()
                
                Image("Kotlin")
                    .resizable()
                    .frame(width: 32, height: 32)
                
                Spacer()
                
                Image("Firebase")
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Spacer()
                
                Image("GitHub")
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Spacer()
                
                Image("Windows Client")
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Spacer()
                
                Image("Mac Logo")
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            Spacer() // Ensures any content below pushes everything to the top
        }
        .frame(maxHeight: .infinity, alignment: .top) // Forces the entire header to stay at the top

    }
}

#Preview {
    HeaderView()
}

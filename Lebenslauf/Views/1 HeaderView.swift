
import SwiftUI

struct HeaderView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack{
            Text("Portfolio of Experience and Education")
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(.primary)
                .padding(.vertical)
            HStack(alignment: .top) {
                Image("profile_picture")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 125, height: 174)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "envelope.fill")
                        Text("r.bettinghausen@gmx.de")
                            .font(.system(size: 13, weight: .regular, design: .rounded))
                            .tint(.primary)
                    }
                    .frame(maxHeight: 32.5, alignment: .top)
                    HStack(){
                        Image("LinkedIn")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .tint(colorScheme == .light ? .black : .white)
                        Text("Robin Bettinghausen")
                            .font(.system(size: 13, weight: .regular, design: .rounded))
                            .foregroundStyle(.primary)
                    }
                    .frame(maxHeight: 32.5, alignment: .top)
                    HStack{
                        Image("GitHub")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .tint(colorScheme == .light ? .black : .white)
                        Text("rob-builds-future")
                            .font(.system(size: 13, weight: .regular, design: .rounded))
                            .foregroundColor(.primary)
                    }
                    .frame(maxHeight: 32.5, alignment: .top)
                    Button {
                        print("Let's Chat button pressed!")
                    } label: {
                        Label("Let's Chat", systemImage: "bubble.left.and.bubble.right.fill")
                            .foregroundStyle(colorScheme == .light ? Color.white : Color.black)
                    }
                    .labelStyle(.titleAndIcon)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .tint(.primary)
                }
                .frame(maxHeight: 174, alignment: .top)
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HeaderView()
    
}

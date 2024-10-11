import SwiftUI

struct BannerScrollView: View {
    @State private var scrollOffset: CGFloat = 0
    let logos = ["Figma", "SwiftUI", "Kotlin", "Firebase", "GitHub", "Windows Client", "Mac Logo"]

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    // Verfünffachen der Logos, um längere Liste zu erhalten
                    ForEach(0..<logos.count * 5, id: \.self) { index in
                        Image(logos[index % logos.count])
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(.top, 20) // Platz am oberen Rand
                .offset(x: scrollOffset) // Setze den Offset für das Scrollen
                .onAppear {
                    // Starte kontinuierliches Scrollen, indem du die Animation wiederholst
                    startScrolling(geometry: geometry)
                }
            }
        }
        .frame(height: 60)
    }
    
    // Funktion, um das kontinuierliche Scrollen zu starten
    func startScrolling(geometry: GeometryProxy) {
        let totalWidth = CGFloat(logos.count * 5) * 60 // Berechne die Gesamtbreite des Inhalts
        
        // Unendlich wiederholende Animation ohne Verzögerung
        withAnimation(Animation.linear(duration: 100).repeatForever(autoreverses: false)) {
            scrollOffset = -totalWidth // Scrolle um die gesamte Breite
        }
    }
}

#Preview {
    BannerScrollView()
}

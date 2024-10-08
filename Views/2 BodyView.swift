
import SwiftUI

struct BodyView: View {
    
    var body: some View {
        VStack{
            Text("Eintrag 1")
            Text("Eintrag 2")
            Text("Eintrag 3")
            Text("Eintrag 4")
        }
        Divider()
        VStack{
            Text("Eintrag 1")
            Text("Eintrag 2")
            Text("Eintrag 3")
        }
    }
}
#Preview {
    BodyView()
}

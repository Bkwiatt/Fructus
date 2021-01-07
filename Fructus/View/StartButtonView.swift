//
//  StartButtonView.swift
//  Fructus
//
//  Created by Brandon Kwiatkowski on 8/18/20.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: PROPERTIES

    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
       
        // MARK: BODY
        
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Click dis")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
            
        } //: BUTTON
        .accentColor(Color.white)
    }
}

// MARK: PREVIEW
 
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}

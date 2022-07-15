//
//  ButtonView.swift
//  Starter
//
//  Created by Swapnil on 15/07/22.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var showAlert = false
    var body: some View {
        VStack {
            VStack {
                LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .top, endPoint: .bottom)
                    .frame(width: 200, height: 100)
                
            }
            
            //1
            Button("Delete") {
                //code
            }
            
            
            //2
            Button {
                print("Delete button press")
            } label: {

                //1
                Image(systemName: "play.fill")
                Text("Play")
                
                //2
                Label("Play", systemImage: "play.fill")
            }
            
            
            Button("Alert Show") {
                showAlert = true
            }
            .alert("Important message", isPresented: $showAlert)  {
                Button("Delete", role: .destructive) {}
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("Please read instructions carfully")
            }
            
            
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .previewInterfaceOrientation(.portrait)
    }
}


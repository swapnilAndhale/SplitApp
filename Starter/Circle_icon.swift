//
//  Circle_icon.swift
//  Starter
//
//  Created by Swapnil on 17/07/22.
//

import SwiftUI

struct Circle_icon: View {
    var body: some View {
        let strokeStyle = StrokeStyle(lineWidth: 15, lineCap: .round)
        
        //    let countdownColor: Color = {
        //        Color,red
        //    }
        
        //let buutonIcon = timerRunning ? "pause.rectangel.fill" : "play.rectangle.fill"
        
        
        ZStack {
            Circle()
                .stroke(Color.red.opacity(0.8), style: strokeStyle)
                .rotationEffect(.degrees(120))
            
            HStack {
                Label("Pause ", systemImage: "pause")
                    .foregroundColor(.black)
                    .font(.title)
                    .onTapGesture {
                        //pause function
                    }
                
                Label("Refresh", systemImage: "gobackward")
                    .foregroundColor(.mint)
                    .font(.title)
                
                Label("Stop", systemImage: "stop")
                    .foregroundColor(.red)
                    .font(.title)
            }
        }
    }
}


struct Circle_icon_Previews: PreviewProvider {
    static var previews: some View {
        Circle_icon()
    }
}

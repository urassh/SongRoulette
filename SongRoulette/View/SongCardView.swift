//
//  SongCardView.swift
//  SongRoulette
//
//  Created by 浦山秀斗 on 2023/07/11.
//

import SwiftUI

struct SongCardView: View {
    let songCard: SongDataModel
    
    @State private var isResultView: Bool = true
    @State private var isPlaySong: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: songCard.backgroundColor, startPoint: .topTrailing, endPoint: .bottomLeading)
            VStack {
                Text("\(songCard.name)")
                    .font(.system(size: 40, design: .serif))
                    .foregroundColor(.white)
                    .shadow(color: .white, radius: 20)
                
                songCard.image
                    .resizable()
                    .aspectRatio(1/1 ,contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .cornerRadius(5)
                
                if (isResultView) {
                    Button(action: {
                        isPlaySong.toggle()
                    }, label: {
                        if (isPlaySong) {
                            Image(systemName: "play.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .padding(10)
                        } else {
                            Image(systemName: "pause.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .padding(10)
                        }
                    })
                }
                Text("\(songCard.artist)")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
        }
    }
}

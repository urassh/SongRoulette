//
//  SongDicideView.swift
//  SongRoulette
//
//  Created by 浦山秀斗 on 2023/07/11.
//

import SwiftUI

struct SongDicideView: View {
    @ObservedObject var viewModel: SongViewModel
    @State private var isShowNextSelfView: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                
                if let proposeSong = viewModel.songModel.registerSongList.last {
                    SongCardView(songCard: proposeSong)
                        .frame(width: 300)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
                } else {
                    ProgressView()
                }
                
                VStack(spacing: 12) {
                    Button(action: {
                        viewModel.songModel = viewModel.addSong()
                    }, label: {
                        Text("次の曲を決める!!")
                    }).modifier(ButtonModifier(color: .cyan))
                    
                    NavigationLink(destination: {
                        ResultView(viewModel: viewModel)
                    }, label: {
                        Text("これで決定!!")
                            .modifier(ButtonModifier(color: .blue))
                    })
                    
                    Button(action: {
                        viewModel.songModel = viewModel.removeLastSong()
                    }, label: {
                        Text("やり直す!!")
                    }).modifier(ButtonModifier(color: .red))
                }
                Spacer()
            }
            
        }.navigationBarBackButtonHidden(true)
    }
}

struct ButtonModifier: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 300, height: 50)
            .background(color)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}

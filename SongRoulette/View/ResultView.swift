//
//  ResultView.swift
//  SongRoulette
//
//  Created by 浦山秀斗 on 2023/07/11.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var viewModel: SongViewModel
    
    var body: some View {
        NavigationStack {
            List(viewModel.songModel.registerSongList) { song in
                NavigationLink(destination: {
                    SongCardView(songCard: song)
                }, label: {
                    HStack(spacing: 30) {
                        song.image
                            .resizable()
                            .aspectRatio(1/1, contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .cornerRadius(5)
                        VStack(alignment: .leading, spacing: 10) {
                            Text(song.name)
                                .font(.title3)
                                .foregroundColor(.accentColor)
                            Text(song.artist)
                                .font(.subheadline)
                                .foregroundColor(.accentColor)
                        }
                    }
                })
            }.navigationTitle(Text("この曲で決定!!"))
            
            Button(action: {
                viewModel.songModel = viewModel.resetSong()
            }, label: {
                NavigationLink(destination: {
                    ContentView()
                }, label: {
                    Text("最初に戻る。")
                        .modifier(ButtonModifier(color: .orange))
                })                
            }).navigationBarBackButtonHidden(true)
        }
    }
}

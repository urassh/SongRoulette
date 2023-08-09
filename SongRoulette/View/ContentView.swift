//
//  ContentView.swift
//  SongRoulette
//
//  Created by 浦山秀斗 on 2023/07/11.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = SongViewModel()
    @State private var isShowSongDicideView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("title")
                    .resizable()
                    .aspectRatio(1/1, contentMode: .fit)
                    .frame(width: 400)
                
                Spacer()
                
                Button(action: {
                    viewModel.songModel = viewModel.addSong()
                    isShowSongDicideView = true
                }, label: {
                    Text("Start!!")
                        .modifier(ButtonModifier(color: .red))
                        .font(.largeTitle)
                })
                
                Spacer()
            }
            .navigationDestination(isPresented: $isShowSongDicideView, destination: {
                SongDicideView(viewModel: viewModel)
            })
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

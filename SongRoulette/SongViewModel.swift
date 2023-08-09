//
//  SongViewModel.swift
//  SongRoulette
//
//  Created by 浦山秀斗 on 2023/07/11.
//

import SwiftUI

class SongViewModel: ObservableObject {
    @Published var songModel: SongModel = SongModel(registerSongList: [])
    
    func addSong() -> SongModel {
        var newSongModel = self.songModel
        
        guard let chooseSong = newSongModel.candidateSongList.randomElement() else { return self.songModel }
        
        newSongModel.candidateSongList.removeAll(where: {$0 == chooseSong})
        
        newSongModel.registerSongList.append(chooseSong)
        
        return newSongModel
    }
    
    /* registerSongListの最後の要素を消したSongModelのインスタンスを代入 */
    func removeLastSong() -> SongModel {
        var newSongModel = self.songModel
        
        guard let _ = newSongModel.registerSongList.first else {
            return self.addSong()
        }
        
        let removeElement = newSongModel.registerSongList.last!
        newSongModel.candidateSongList.removeAll(where: {$0 == removeElement})
        
        newSongModel.registerSongList.removeLast()
        
        return newSongModel
    }

    func resetSong() -> SongModel {
        var newSongModel = self.songModel
        newSongModel.registerSongList = []
        return newSongModel
    }
}

//
//  CardDataModel.swift
//  SongRoulette
//
//  Created by 浦山秀斗 on 2023/07/11.
//
import SwiftUI

struct SongModel: Identifiable {
    let id = UUID()
    var registerSongList: [SongDataModel] = []
    var candidateSongList: [SongDataModel] = [
        SongDataModel(name: "シュガーソングとビターステップ", artist: "UNISON SQUARE GARDEN", image: Image("syuga"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "忘れられないの", artist: "サカナクション", image: Image("wasurerarenaino"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "トレイントレイン", artist: "THE BLUE HEARTS", image: Image("train"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "感電", artist: "米津玄師", image: Image("kanden"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "感電", artist: "米津玄師", image: Image("kanden"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "ワタリドリ", artist: "Alexandros", image: Image("wataridori"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "栞", artist: "クリープハイプ", image: Image("siori"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "怪物", artist: "YOASOBI", image: Image("monster"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "秒針を噛む", artist: "ずっと真夜中でいいのに", image: Image("byousin"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "ただ君に晴れ", artist: "ヨルシカ", image: Image("tadakiminihare"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "シルエット", artist: "KANA-BOON", image: Image("siruetto"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
        SongDataModel(name: "シャルル", artist: "バルーン", image: Image("syaruru"), backgroundColor: Gradient(colors: [
            Color(.sRGB, red: 38 / 255, green: 63 / 255, blue: 159 / 255, opacity: 1),
            Color(.sRGB, red: 174 / 255, green: 77 / 255, blue: 1, opacity: 1)])),
    ]
}

struct SongDataModel: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let artist: String
    let image: Image
    let backgroundColor: Gradient
    
    init(name: String, artist: String, image: Image, backgroundColor: Gradient) {
        self.name = name
        self.artist = artist
        self.image = image
        self.backgroundColor = backgroundColor
    }
}

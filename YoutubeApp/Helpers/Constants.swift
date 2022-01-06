//
//  Constants.swift
//  YoutubeApp
//
//  Created by Kaung Htet Hein on 11/4/21.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyD6JogCHv5HXWmwbBEC7k2cgw0wNI_wuLc"
    static var PLAYLIST_ID = "PLQlJbRmfYsmqQG6oFvGMUtvsE_oXiCBIY"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL = "VideoCell"
}

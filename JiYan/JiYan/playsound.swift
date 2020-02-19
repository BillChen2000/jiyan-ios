//
//  playsound.swift
//  JiYan
//
//  Created by 马诺 on 2020/2/19.
//  Copyright © 2020 马诺. All rights reserved.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?
var startPlay = false
var isPlaying = false
var timer : Timer?




func playSound(sound: String, type: String)
{
    if !startPlay
    {
        if let path = Bundle.main.path(forResource: sound, ofType: type){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
                isPlaying = true
                startPlay = true
            } catch {
                print("could not find and play the sound file")
            }
        }
    }
    else
    {
        audioPlayer?.play()
        isPlaying = true
    }
    
}

func pauseSound() {
    if isPlaying {
        audioPlayer?.pause()
        isPlaying = false
    }
}

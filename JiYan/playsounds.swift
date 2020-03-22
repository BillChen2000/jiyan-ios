//
//  playsounds.swift
//  JiYan
//
//  Created by 马诺 on 2020/2/12.
//  Copyright © 2020 马诺. All rights reserved.
//

import Foundation
import AVFoundation

var isLoaded = false
var isPlaying = false
var audioPlayer : AVAudioPlayer?



func playSound(sound:String, type:String)
{
    if isLoaded{
        audioPlayer?.play()
        isPlaying = true
        
    }else {
        if let path = Bundle.main.path(forResource: sound, ofType: type)
        {
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                isLoaded  = true
                isPlaying = true
                audioPlayer?.play()
            }catch {
                print("Could not find and play the sound file.")
            }
        }
    }
}


func pauseSound()
{
    if isPlaying {
        audioPlayer?.pause()
        isPlaying = false
    }
}

    func startLoading() {
        _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
           
                currentProgress += 0.01
                if currentProgress >= 1.0 {
                    timer.invalidate()
                }
            }
        
    }
}

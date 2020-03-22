//
//  recordsound.swift
//  JiYan
//
//  Created by 于书懿 on 2020/2/24.
//  Copyright © 2020 马诺. All rights reserved.
//


import UIKit
import AVFoundation

class recordsound: UIViewController {
    
    lazy var player: AVAudioPlayer? = {
        
        
        do {
            
            let url = NSURL(string: "/Users/baichaoceng/Desktop/test.wav")
            
            let  player =   try AVAudioPlayer.init(contentsOf: url! as URL)
            player.prepareToPlay()
            
            return player
        }catch{
            print(error)
            
            return nil
        }
        
    }()
    
    lazy var record: AVAudioRecorder? = {
        // 开始录音
        // url : 录音文件的路径
        let url = NSURL(string: "/Users/baichaoceng/Desktop/test.wav")  // 用于模拟器 ，真机不能用这个地址
        
        // setting : 录音的设置项
        // 录音参数设置(不需要掌握, 一些固定的配置)
        let configDic: [String: AnyObject] = [
            // 编码格式
            AVFormatIDKey: NSNumber(value: Int32(kAudioFormatLinearPCM)),
            // 采样率
            AVSampleRateKey: NSNumber(value: 11025.0),
            // 通道数
            AVNumberOfChannelsKey: NSNumber(value: 2),
            // 录音质量
            AVEncoderAudioQualityKey: NSNumber(value: Int32(AVAudioQuality.min.rawValue))
        ]
        
        do {
            let record = try AVAudioRecorder(url: url! as URL, settings: configDic)
            // 准备录音(系统会给我们分配一些资源)
            record.prepareToRecord()
            return record
        }catch {
            print(error)
            return nil
        }
        
        
    }()
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("开始录音")
        // 开始录音
        record?.record()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if  Int( (record?.currentTime)! )    > 2 {
            record?.stop()
        }else {
            print("录音时间太短")
            // 删除录音文件
            // 如果想要删除录音文件, 必须先让录音停止
            record?.stop()
            record?.deleteRecording()
        }
        
        print("结束录音")
        record?.stop()
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        
        self.player?.play() //要强引用  否则立刻会被释放 无法播放音频
    }
    
    
}

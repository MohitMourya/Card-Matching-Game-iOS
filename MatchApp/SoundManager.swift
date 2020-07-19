//
//  SoundManager.swift
//  MatchApp
//
//  Created by Mohit Mourya on 14/07/20.
//  Copyright © 2020 Mohit Mourya. All rights reserved.
//

import Foundation
import AVFoundation

class SoundManager {
    
    var audioPlayer:AVAudioPlayer?
    
    enum SoundEffect {
        case flip
        case match
        case nomatch
        case shuffle
    }
    
    func playSound(effect:SoundEffect) {
        
        var soundFilename = ""
        
        switch effect {
            
        case .flip:
            soundFilename = "cardflip"
            
        case .match:
            soundFilename = "dingcorrect"
            
        case .nomatch:
            soundFilename = "dingwrong"
            
        case .shuffle:
            soundFilename = "shuffle"
            
        }
        
        // Get path to the resources
        let bundlePath = Bundle.main.path(forResource: soundFilename, ofType: ".wav")
        
        // Check that it's not nil
        
        guard bundlePath != nil else {
            // Coudn't find the resources, exit
            return
        }
        
        let url = URL(fileURLWithPath: bundlePath!)
        
        do {
            
            // Create the audio player
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            
            // Play the sound
            audioPlayer?.play()
            
        }
        catch {
            
            print("Coudn't create a audio player")
            
        }
        
        
        
    }
}

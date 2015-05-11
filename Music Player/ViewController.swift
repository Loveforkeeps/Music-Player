//
//  ViewController.swift
//  Music Player
//
//  Created by EMo‘s mac  on 5/7/15.
//  Copyright (c) 2015 EMo‘s mac . All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class ViewController: UIViewController {
    
    var aplayer:AVAudioPlayer!
    var Vplayer:MPMoviePlayerViewController!
    
    @IBAction func playVideoButtonClicked(sender: AnyObject) {
        Vplayer = MPMoviePlayerViewController(contentURL: NSBundle.mainBundle().URLForResource("video", withExtension: "mp4"))
        presentViewController(Vplayer, animated: true, completion: nil)
    }
    
    @IBAction func playClick(sender: AnyObject) {
        aplayer.play()
        aplayer.currentTime = 0
    }
    @IBAction func pauseClick(sender: AnyObject) {
        aplayer.pause();
    }
    @IBAction func stopClick(sender: AnyObject) {
        aplayer.stop();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aplayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("quanyutianxia", ofType: "mp3")!), error: nil);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


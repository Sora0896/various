//
//  ViewController.swift
//  3Dtouch
//
//  Created by 青空 on 2018/12/26.
//  Copyright © 2018 Sora. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var InstagramSwitch: UISwitch!
    @IBOutlet weak var LINESwitch: UISwitch!
    @IBOutlet weak var TwitterSwitch: UISwitch!
    @IBOutlet weak var MusicSwitch: UISwitch!
    @IBOutlet weak var YoutubeMusicSwitch: UISwitch!
    @IBOutlet weak var SpotifySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Construct the items.
        //let icon = UIApplicationShortcutIcon(templateImageName: "twitter_icon.png")
        
        /*let Instagram = UIMutableApplicationShortcutItem(type: "Instagram", localizedTitle: "Instagram", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .capturePhoto))
        let Line = UIMutableApplicationShortcutItem(type: "LINE", localizedTitle: "LINE", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .message))
        let Twitter = UIMutableApplicationShortcutItem(type: "Twitter", localizedTitle: "Twitter", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .compose))
        let Music = UIMutableApplicationShortcutItem(type: "Music", localizedTitle: "Music", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .play))
        //let Safari = UIMutableApplicationShortcutItem(type: "Safari", localizedTitle: "Safari", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .search))
        //let Share = UIMutableApplicationShortcutItem(type: "Share", localizedTitle: "Switcherを共有", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .share))
        UIApplication.shared.shortcutItems = [Instagram, Line, Twitter, Music]*/
    }
    @IBAction func DoReload(_ sender: Any) {
        var Apps: [Any] = []
        UIApplication.shared.shortcutItems = []
        if InstagramSwitch.isOn{
            let Instagram = UIMutableApplicationShortcutItem(type: "Instagram", localizedTitle: "Instagram", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .capturePhoto))
            Apps.append(Instagram)
            //UIApplication.shared.shortcutItems = [Instagram]
        }
        if LINESwitch.isOn{
            let Line = UIMutableApplicationShortcutItem(type: "LINE", localizedTitle: "LINE", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .message))
            Apps.append(Line)
            //UIApplication.shared.shortcutItems = [Line]
        }
        if TwitterSwitch.isOn{
            let Twitter = UIMutableApplicationShortcutItem(type: "Twitter", localizedTitle: "Twitter", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .compose))
            Apps.append(Twitter)
            //UIApplication.shared.shortcutItems = [Twitter]
        }
        if MusicSwitch.isOn{
            let Music = UIMutableApplicationShortcutItem(type: "Music", localizedTitle: "Music", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .play))
            Apps.append(Music)
            //UIApplication.shared.shortcutItems = [Music]
        }
        if YoutubeMusicSwitch.isOn{
            let YouTubeMusic = UIMutableApplicationShortcutItem(type: "YouTubeMusic", localizedTitle: "YouTubeMusic", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .play))
            Apps.append(YouTubeMusic)
            //UIApplication.shared.shortcutItems = [YouTubeMusic]
        }
        if SpotifySwitch.isOn{
            let Spotify = UIMutableApplicationShortcutItem(type: "Spotify", localizedTitle: "Spotify", localizedSubtitle: "", icon: UIApplicationShortcutIcon(type: .play))
            Apps.append(Spotify)
            //UIApplication.shared.shortcutItems = [Spotify]
        }
        UIApplication.shared.shortcutItems = Apps as? [UIApplicationShortcutItem]
    }
}

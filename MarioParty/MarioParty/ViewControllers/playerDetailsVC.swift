//
//  playerDetailsVC.swift
//  MarioParty
//
//  Created by Awrad Awrad on 4/13/1399 AP.
//  Copyright © 1399 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation
var selectedPlayer = Player(name: "Mario")

class playerDetailsVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var playerSoundEffect: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedPlayer.name
        imageView.loadGif(name: selectedPlayer.name)
        backgroundImage.image = UIImage(named: selectedPlayer.bgname())
        
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func randomizeStars(_ sender: Any) {
        let stars = ["Star1","Star2","Star3","Star4","Star5"]
        let randomStar = stars.randomElement()!
        starsImageView.image = UIImage(named: randomStar)
    }
    
    @IBAction func playCharacterSound(_ sender: Any) {
        playMusic(musicName: selectedPlayer.musicName())
    }
    
    func playMusic(musicName: String) {
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            playerSoundEffect = try AVAudioPlayer(contentsOf: url)
            playerSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
}

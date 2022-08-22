//
//  ViewController.swift
//  sound
//
//  Created by 伊藤あかり on 2022/08/09.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton: UIButton!
    //ピアノを表示する箱を作る
    @IBOutlet var pianoButton: UIButton!
    //ギターを表示する箱を作る
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムのサウンドファイルを読み込んで、プレイヤーを作る
    let drumSoundplayer = try!AVAudioPlayer (data: NSDataAsset(name:"drumSound")!.data)

    //ピアノのサウンドファイルを読み込んで、プレイヤーを作る
    let pianoSoundplayer = try!AVAudioPlayer (data: NSDataAsset(name:"pianoSound")!.data)
    
    //ギターのサウンドファイルを読み込んで、プレイヤーを作る
    let guitarSoundPlayer = try!AVAudioPlayer(data:NSDataAsset(name:"guitarSound")!.data)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
//ドラムがタップされたときに呼ばれる
    @IBAction func touchDownDrumButton(){
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named:"drumPlayingImage"),for:.normal)

        //ドラムの音を巻き戻す
        drumSoundplayer.currentTime = 0
        
        //ドラムの音を再生する
        drumSoundplayer.play()
        
    }
    
    //ドラムボタンの上でタッチが終わる時に呼ばれる
        @IBAction func touchUpDrumButton(){
        //ドラムがなっていない画像に切り替える
    drumButton.setImage(UIImage(named:"drumImage"), for: .normal)
            }
    
//ピアノがタップされた時に呼ばれる
    @IBAction func touchDownPianobutton(){
        //ピアノが鳴っている画像に切り替える
        pianoButton.setImage(UIImage(named:"pianoPlayingImage"), for: .normal )
        
        //ピアノの音を巻き戻す
        pianoSoundplayer.currentTime=0
        
        //ピアノの音を再生する
        pianoSoundplayer.play()
            
}
    
 //ピアノボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpPianoButton(){
        //ピアノがなっていない画像に切り替える
        pianoButton.setImage(UIImage(named:"pianoImage"), for: .normal)
    
    }
    
    //ギターがタップされた時
    @IBAction func touchDownGuitarButton(){
        //ギターがなっている画像に切り替える
        guitarButton.setImage(UIImage(named:"guitarPlayingImage"), for: .normal )
        //ギターの音を巻き戻す
        guitarSoundPlayer.currentTime=0
        //ギターの音を再生する
        guitarSoundPlayer.play()
    }
    
//ギターボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpGuitarButton(){
    //ギターがなっていない画像に切り替える
        guitarButton.setImage(UIImage(named:"guitarImage"), for:.normal )
    
    }
                             
    
}



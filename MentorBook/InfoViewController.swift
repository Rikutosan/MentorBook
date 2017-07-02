//
//  InfoViewController.swift
//  MentorBook
//
//  Created by  on 2017/02/19.
//  Copyright © 2017年 mayuko. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBOutlet var setumei: UITextView!
    
    var number: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if number == 0 {
            setumei.text = "clubunderworldserver 略して くぅさば。\nいたって普通の生活サーバーだが、かなり内容が凝っている。\n経済、生活、自給自足...とても楽しいので是非きてみてください！！ \nIP clubunderworld.dip.jp"
            
        }
        
        else if number == 1 {
            setumei.text = "Mineplexサーバーは元世界一のサーバーです。\n日本ではいると多少ラグがありますがとても楽しいサーバーです！！かなりの数のミニゲームを楽しめます！！ \nIP us.mineplex.com"
        }
        
        else if number == 2 {
            setumei.text = "shotbowサーバーは主にminez、anniとよばれるAnnihilationなどが有名なサーバーです。\nあまり知られていませんのでぜひ来てください！ \nIP us.shotbow.net"
        }
        
        else if number == 3 {
            setumei.text = "Hypixelサーバーは言わずと知れたサーバーですね。おそらく20のゲームがあり、大規模なサーバーです。かなりオススメなサーバーのうちの一つです！ \nIP mc.hypixel.net"
        }
        else if number == 4 {
            setumei.text = "cubecraftサーバーは、eggwarsなどで有名なサーバーです。\nネットの契約がdocomoだと入れないらしいですが...個人的に好きですが、チーターがかなり多いです。嫌いな方は避けましょうw \nIP play.cubecraft.net"
        }
        else if number == 5 {
            setumei.text = "syuuサーバーはかなり有名な日本pvpサーバー、10種類ほどの1v1ステージ。FFAステージもあります。\n自分はいつもここでpvp力を鍛えています！w \nIP syuu.net"
            
        }
        else if number == 6 {
            setumei.text = "hiveサーバーは日本人もよく知る海外サーバーでもあると思います。\n様々なオリジナルミニゲームもあり、僕もたまに遊んでいます。\nIP hivemc.eu"
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

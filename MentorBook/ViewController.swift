//
//  ViewController.swift
//  MentorBook
//
//  Created by 佐々木八千代 on 2016/12/18.
//  Copyright © 2016 mayuko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    @IBOutlet var imageButton: UIButton!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        mentorArray.append(Mentor(name: "くぅ鯖", imageName: "GBU3UErf_400x400.png", course: "No1"))
        mentorArray.append(Mentor(name: "Mineplex", imageName: "mineplex icon.jpg", course: "No2"))
        mentorArray.append(Mentor(name: "Shotbow", imageName: "shotbow1.png", course: "No3"))
        mentorArray.append(Mentor(name: "Hypixel", imageName: "hypixel.jpg",course: "No4"))
        mentorArray.append(Mentor(name: "Cubecraft", imageName: "cubecraft.png",course: "No5"))
        mentorArray.append(Mentor(name: "syuu", imageName: "syuu.png",course: "No6"))
        mentorArray.append(Mentor(name: "Hive", imageName: "hive.png",course: "No7"))

        setUI()
    
    
    }
    
    func setUI() {
        
        //imageView.image = mentorArray[index].getImage()
        
        imageButton.setImage(mentorArray[index].getImage(), for: .normal)
        //imageButton.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        
        
        
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mae() {
        index = index - 1
        
        if index < 0 {
            index = mentorArray.count - 1
        }
        
        setUI()
        
    }
    
    @IBAction func tugi() {
        index = index + 1
        
        if index > mentorArray.count - 1 {
            index = 0
            
        }
        
        
        
        setUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        if segue.identifier == "toInfo" {
            let secondVC = segue.destination as! InfoViewController
            
            secondVC.number = self.index
        }
    }
        


}


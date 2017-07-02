//
//  Mentor.swift
//  MentorBook
//
//  Created by 佐々木八千代 on 2017/01/22.
//  Copyright © 2017年 mayuko. All rights reserved.
//

import UIKit

class Mentor {
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.imageName = imageName
        self.course = course
        
    }
    func getImage() -> UIImage{
        return UIImage(named:imageName)!
        
    }
    
    
    
}

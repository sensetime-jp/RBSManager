//
//  RBSMessageContainer.swift
//  Pods
//
//  Created by Wes Goodhoofd on 2018-01-06.
//

import UIKit
import ObjectMapper

class RBSMessageContainer: NSObject, Mappable {
    var op = "publish"
    var msg: Mappable?
    var topic: String?
    var publisherId: String?
    
    required init?(map: Map) {
    
    }
    
    init(_ msg: Mappable, topic t: String) {
        self.msg = msg
        self.topic = t
    }
    
    func mapping(map: Map) {
        self.op <- map["op"]
        self.msg <- map["msg"]
        self.topic <- map["topic"]
        self.publisherId <- map["id"]
    }
}

//
//  Configuration.swift
//  HypeTalk2.0
//
//  Created by HGPMac72 on 7/26/18.
//  Copyright © 2018 HGPMac72. All rights reserved.
//

import Foundation
import RxSwift
import FirebaseDatabase.FIRDatabaseReference
import MessageKit
import Kingfisher

struct ChatRefrences {
    static let conversations = Database.database().reference().child("conversations")
    static let users = Database.database().reference().child("users")
    static let presence = Database.database().reference().child("presence")
    
    static func conversationsList(_ uid : String) -> DatabaseReference{
        return users.child(uid).child("conversationsList")
    }
    
    static func conversationsRef(_ key : String) -> DatabaseReference{
        return conversations.child(key)
    }
    
    static func newConversationsKey() -> String{
        return conversations.childByAutoId().key
    }
}


extension AvatarView {
    func setImageFromURL(url: String) {
        guard let imageURL = URL(string: url) else { return image = #imageLiteral(resourceName: "man") }
        kf.indicatorType = .activity
        kf.setImage(with: imageURL)
    }
}


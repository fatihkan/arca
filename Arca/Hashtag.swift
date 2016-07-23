//
//  Hashtag.swift
//  Arca
//
//  Created by fatih kan on 23.07.2016.
//  Copyright © 2016 Monopol Yonetim. All rights reserved.
//

import Foundation
import Firebase

class Hashtag {
    private var _hashtagText: String?
    private var _hashtagUid : String?
    private var _hashtagCount : Int!
    private var _hashtagRef : FIRDatabaseReference!
    
    var hashtagText : String? {
        return _hashtagText
    }
    var hashtagUid : String? {
        return _hashtagUid
    }
    
    var hashtagCount : Int! {
        return _hashtagCount
    }
    
    func hashtagCounter(addCount: Bool) {
        if addCount {
            _hashtagCount = _hashtagCount + 1
        }else{
            _hashtagCount = _hashtagCount - 1
        }
        _hashtagRef.child("Hashtag").setValue(_hashtagCount);
    }
    
}

//
//  DataService.swift
//  Arca
//
//  Created by fatih kan on 23.07.2016.
//  Copyright © 2016 Monopol Yonetim. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let ds = DataService()
    var DB_BASE = FIRDatabase.database().reference()
    var AUTH_BASE = FIRAuth.auth()?.currentUser
    
    var DB_CURRENT_USER  :FIRDatabaseReference{
        let uid = NSUserDefaults.standardUserDefaults().valueForKey(KEY_UID) as! String
        let user = DB_BASE.child("Users").child(uid)
        return user
    }
    var DB_HASGTAG_USER :FIRDatabaseReference{
        let uid = NSUserDefaults.standardUserDefaults().valueForKey(KEY_UID) as! String
        let hashtag = DB_BASE.child("Hashtag").child(uid)
        return hashtag
    }
    var DB_CURRENT_USER_ID :String {
        let uid = NSUserDefaults.standardUserDefaults().valueForKey(KEY_UID) as! String
        return uid
    }
    func createFirebaseUser(uid:String, user: Dictionary<String,String>) {
        DB_BASE.child("Users").child(uid).setValue(user)
    }
    
}

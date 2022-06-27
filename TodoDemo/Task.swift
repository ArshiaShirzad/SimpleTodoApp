//
//  Task.swift
//  TodoDemo
//
//  Created by Arshia Shirzad on 6/25/22.
//

import Foundation
import RealmSwift

class Task:Object, ObjectKeyIdentifiable{
    @Persisted(primaryKey: true)var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}

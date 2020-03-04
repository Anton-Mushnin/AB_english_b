//
//  BookAPI.swift
//  AB_english_b
//
//  Created by Антон Мушнин on 04/03/2020.
//  Copyright © 2020 Антон Мушнин. All rights reserved.
//

import Foundation



final class BookAPI{
    static let shared = BookAPI()
    
    private let persistencyManager = PersistencyManager()
    private let httpClient = HTTPClient()
    private let isOnline = false
    
    private init (){
        
    }
    
    func getlessons() -> [Lesson] {
      return persistencyManager.getLessons()
    }
      
    func addlesson(_ lesson: Lesson, at index: Int) {
      persistencyManager.addLesson(lesson, at: index)
      if isOnline {
        httpClient.postRequest("/api/addlesson", body: Lesson.title)
      }
    }
      
    func deletelesson(at index: Int) {
      persistencyManager.deleteLesson(at: index)
      if isOnline {
        httpClient.postRequest("/api/deletelesson", body: "\(index)")
      }
    }
}

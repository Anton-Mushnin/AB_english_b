//
//  PersistencyManagerAPI.swift
//  AB_english_b
//
//  Created by Антон Мушнин on 04/03/2020.
//  Copyright © 2020 Антон Мушнин. All rights reserved.
//

import Foundation


final class PersistencyManager {
    
    private var lessons = [Lesson]()
    
    init () {
        let lessonText1 = LessonText(text: "А еще есть случаи, когда нам нужно выразить свою уверенность в том, что происходит сейчас, в данную минуту.     Например: Наверняка Роберт сейчас моет кота. Как сказать это по-английски? Остановитесь на минутку, переведите, а потом читайте дальше.")
        let exercise1 = Exercise(tasks: [Task(textToTranslate: "Наверняка Роберт сейчас моет кота.", translatedText: "Robert must be washing his cat now.", taskID: "FIRSTTASKEVER")], exerciseID: "FIRSTEXERCISEEVER")
        let lessonText2 = LessonText(text: "Вот еще примеры: Paul McCartney could be writing a new song now. - Может быть, Пол Маккартни сейчас пишет новую песню.")

        let lesson1 = Lesson (title: "Модальные глаголы степени уверенности - Часть 3", items: [lessonText1,  exercise1, lessonText2])
        
        lessons = [lesson1]
    }
    
    func getLessons() -> [Lesson] {
      return lessons
    }
      
    func addLesson(_ lesson: Lesson, at index: Int) {
      if (lessons.count >= index) {
        lessons.insert(lesson, at: index)
      } else {
        lessons.append(lesson)
      }
    }
      
    func deleteLesson(at index: Int) {
      lessons.remove(at: index)
    }
}

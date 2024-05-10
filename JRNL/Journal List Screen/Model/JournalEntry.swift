//
//  JournalEntry.swift
//  JRNL
//
//  Created by Jungjin Park on 2024-05-10.
//

import UIKit

class JournalEntry {
    // MARK: - Properties
    let date: Date
    let rating: Int
    let entryTitle: String
    let entryBody: String
    let photo: UIImage?
    let latitude: Double?
    let longitute: Double?
    
    // MARK: - Initiailization
    // 옵셔널 이니셜라이져는 내가 원하는 값이 아니면 만들지 않는다
    init?(rating: Int, title: String, body: String, photo: UIImage? = nil, latitude: Double? = nil, longitute: Double? = nil) {
        if title.isEmpty || body.isEmpty || rating < 0 || rating > 5 {
            return nil
        }
        self.date = Date()
        self.rating = rating
        self.entryTitle = title
        self.entryBody = body
        self.photo = photo
        self.latitude = latitude
        self.longitute = longitute
    }
}

// MARK: - Sample data
struct SampleJournalEntryData {
    var journalEntries: [JournalEntry] = []
    
    mutating func createSampleJournalEntryData() {
        let photo1 = UIImage(systemName: "sun.max")
        let photo2 = UIImage(systemName: "cloud")
        let photo3 = UIImage(systemName: "cloud.sun")
        
        guard let journalEntry1 = JournalEntry(rating: 5, title: "Good", body: "Today is good day", photo: photo1) else {
            fatalError("Unable to instantiate journalEntry1")
        }
        guard let journalEntry2 = JournalEntry(rating: 0, title: "Bad", body: "Today is bad day", photo: photo2) else {
            fatalError("Unable to instantiate journalEntry2")
        }
        guard let journalEntry3 = JournalEntry(rating: 3, title: "Okay", body: "Today is Okay day", photo: photo3) else {
            fatalError("Unable to instantiate journalEntry3")
        }
        
        journalEntries += [journalEntry1, journalEntry2, journalEntry3]
    }
}

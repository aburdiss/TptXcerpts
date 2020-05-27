//
//  TrumpetContentModel.swift
//  TptXcerpts
//
//  Created by Alexander Burdiss on 5/25/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import Foundation

/**
 Composition collection that holds all information about a composition, and is displayed on a view.
 */
struct Composition: Identifiable {
    let id: Int
    var composer: String
    var composerLast: String
    var name: String
    var date: String
    var era: String
    var genre: String
    var excerpts: [Excerpt]
    var mutes: String
    var videos: [[String]] /// [Name, YouTubeID]
}

/**
 Excerpt collection that holds images of an excerpt.
 */
struct Excerpt: Identifiable {
    let id: Int
    var description: String
    var measures: String
    var pictures: [[String]] /// [Part, PictureNo.]
}

/**
 Composer collection that holds all the information about a composer. This information is displayed in one view.
 */
struct Composer: Identifiable {
    let id: Int
    var name: String
    var ipa: String
    var image: Int
    var country: String
    var dates: String
    var bio: String
    var excerpts: [Composition]
}

//MARK: Compositions

let bachBrandenburg2 = Composition(id: 0, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Brandenburg Concerto No. 3", date: "1721", era: "Baroque", genre: "Concerto", excerpts: [
    Excerpt(id: 0, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 37", pictures: [["F Alto Trumpet", "1000"]]),
    Excerpt(id: 1, description: "Excerpt 2", measures: "Mov. III, mm. 1 - 27", pictures: [["F Alto Trumpet", "1001"]]),
    Excerpt(id: 2, description: "Excerpt 3", measures: "Mov. III, mm. 41 - 57", pictures: [["F Alto Trumpet", "1002"]])
], mutes: "", videos: [
    ["", ""]
])

let bachCantata = Composition(id: 1, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Cantata BWV 51", date: "1730", era: "Baroque", genre: "Cantata", excerpts: [
    Excerpt(id: 3, description: "Excerpt 1", measures: "mm. 1 - 29", pictures: [["C Trumpet", "1003"]])
], mutes: "", videos: [
    ["", ""]
])

let bachChristmasOratorio = Composition(id: 2, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Weihnachtsoratorium", date: "1735", era: "Baroque", genre: "Oratorio", excerpts: [
    Excerpt(id: 4, description: "Excerpt 1", measures: "No. 64 – Choral", pictures: [["D Trumpet 1", "1004"], ["D Trumpet 2", "1005"], ["D Trumpet 3", "1006"]])
], mutes: "", videos: [
    ["", ""]
])



let pictures = [["D Trumpet 1", ""], ["D Trumpet 2", ""], ["D Trumpet 3", ""]]


/*
X Bach – Brandenburg Concerto No. 2
X Bach – Cantata BWV 51
X Bach – Christmas Oratorio
 Bach – Magnificat in D Major
 Bach – Mass in B Minor
 Bartók – Concerto for Orchestra
 Bartók – The Miraculous Mandarin
 Beethoven – Leonore Overture No. 2
 Beethoven – Leonore Overture No. 3
 Beethoven – Symphony No. 5
 Beethoven – Symphony No. 9
 Beethoven – Violin Concerto in D Major
 Berlioz – Roman Carnival Overture
 Berlioz – Symphonie fantastique
 Bizet – Carmen
 Brahms – Academic Festival Overture
 Brahms – Symphony No. 1
 Brahms – Symphony No. 2
 Britten – Four Sea Interludes
 Britten – The Young Person’s Guide to the Orchestra
 Bruckner – Symphony No. 4
 Bruckner – Symphony No. 7
 Bruckner – Symphony No. 8
 Copland - El Salón Mexico
 Copland – An Outdoor Overture
 Debussy – Fêtes from Nocturnes
 Debussy – La Mer
 Donizetti – Don Pasquale
 Dvořák – Symphony No. 8
 Dvořák – Symphony No. 9
 Gershwin - Rhapsody in Blue
 Gershwin – An American in Paris
 Gershwin – Piano Concerto in F
 Handel – Messiah
 Haydn – Symphony No. 100
 Hindemith – Symphony in B flat
 Humperdinck – Hänsel und Gretel
 Mahler – Das Lied von der Erde
 Mahler – Symphony No. 1
 Mahler – Symphony No. 2
 Mahler – Symphony No. 3
 Mahler – Symphony No. 4
 Mahler – Symphony No. 5
 Mahler – Symphony No. 6
 Mahler – Symphony No. 7
 Mahler – Symphony No. 9
 Mozart – Serenade No. 9
 Mussorgsky/Ravel – Pictures at an Exhibition
 Prokofiev – Lieutenant Kijé
 Prokofiev – Symphony No. 5
 Rachmaninoff – Rhapsody on a Theme of Paganini
 Ravel – Alborada del Gracioso
 Ravel – Boléro
 Ravel – Daphnis et Chloé – Suite No. 2
 Ravel – Piano Concerto in G
 Ravel – Rapsodie espagnole
 Respighi – Pines of Rome
 Rimsky-Korsakov – Capriccio Espagnol
 Rimsky-Korsakov – Scheherazade
 Schumann – Symphony No. 2
 Scriabin – Le Poème De L’Extase
 Sibelius – Symphony No. 2
 Strauss – Also sprach Zarathustra
 Strauss – Death and Transfiguration
 Strauss – Don Juan
 Strauss – Don Quixote
 Strauss – Ein Heldenleben
 Strauss – Eine Alpensinfonie
 Strauss – Le bourgeois gentilhomme
 Strauss – Symphonia Domestica
 Strauss – Till Eulenspiegels lustige Streiche
 Stravinsky - The Soldier's Tale
 Stravinsky – Fireworks
 Stravinsky – Petrushka
 Stravinsky – The Firebird (1919)
 Stravinsky – The Rite of Spring
 Stravinsky – The Song of the Nightingale
 Tchaikovsky – Capriccio Italien
 Tchaikovsky – Swan Lake
 Tchaikovsky – Symphony No. 4
 Tchaikovsky – Symphony No. 5
 Tchaikovsky – The Nutcracker (Ballet)
 Wagner – Götterdämmerung
 Wagner – Parsifal
 Wagner – Rienzi
 Wagner – Tannhäuser
 */



//MARK: Composers

let bach = Composer(id: 0, name: "Johann Sebastian Bach", ipa: "joˈhan zeˈbastjan bɑx", image: 2000, country: "Germany", dates: "1685-1750", bio: "Johann Sebastian Bach was a German Baroque composer and musician. He is most well known for is keyboard works, and works for voice and orchestra. Bach was a master of counterpoint and harmonic organization and his influences in these fields continue to affect composers to this day.", excerpts: [
    bachBrandenburg2, bachCantata, bachChristmasOratorio
])






/**
 An Organized model of all of the Compositions and Composers in alphabetical order.
 */
class TrumpetContentModel: ObservableObject {
    /**
     An alphabetical list of all of the compositions in the app.
     */
    var excerpts: [Composition] = [
        bachBrandenburg2, bachCantata, bachChristmasOratorio
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        bach
    ]
}

/**
 A Model for storing favorite compositions IDs as strings in an encapsulated list. Data is stored internally on every change.
 */
class Favorites: ObservableObject {
    // the actual resorts the user has favorited
    private var compositionIDs: [String]

    // the key we're using to read/write in UserDefaults
    private let saveKey = "Favorites"

    init() {
        // load our saved data
        self.compositionIDs = UserDefaults.standard.stringArray(forKey: saveKey) ?? [String]()
    }

    // returns true if our set contains this resort
    func contains(_ image: String) -> Bool {
        compositionIDs.contains(image)
    }

    // adds the resort to our set, updates all views, and saves the change
    func add(_ image: String) {
        objectWillChange.send()
        compositionIDs.append(image)
        save()
    }

    // removes the resort from our set, updates all views, and saves the change
    func remove(_ image: String) {
        objectWillChange.send()
        var counter = 0
        var removeIndex = 0
        while counter < compositionIDs.count {
            if compositionIDs[counter] == image {
                removeIndex = counter
            }
            counter += 1
        }
        compositionIDs.remove(at: removeIndex)
        save()
    }
    
    func removeAll() {
        objectWillChange.send()
        compositionIDs.removeAll()
        save()
    }

    func save() {
        // write out our data
        UserDefaults.standard.set(self.compositionIDs, forKey: saveKey)
    }
}

/**
 A model for saving user settings. Data is readable and writeable directly to memory from accessing and setting published variables.
 */
class settingsModel: ObservableObject {
    /**
     A static list to display names of random options in the Picker.
     */
    var randomOptions = ["All", "Favorites"]
    
    /**
     Selected Randoms is the user's choice for selecting whether only favorite excerpts or all excerpts will show in the RandomCompositionView. If the user has not chosen, it will default to 0 (All excerpts).
     <p>
     Note: Data will be saved and read directly from memory on read and write of this variable.
     */
    @Published var selectedRandoms: Int = UserDefaults.standard.integer(forKey: "Randoms") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.selectedRandoms, forKey: "Randoms")
        }
    }
}

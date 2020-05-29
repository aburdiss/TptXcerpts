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
    Excerpt(id: 4, description: "Excerpt 1", measures: "No. 64, Choral", pictures: [["D Trumpet 1", "1004"], ["D Trumpet 2", "1005"], ["D Trumpet 3", "1006"]])
], mutes: "", videos: [
    ["", ""]
])

let bachMagnificant = Composition(id: 3, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Magnificat in D major", date: "1735", era: "Baroque", genre: "Magnificant", excerpts: [
    Excerpt(id: 5, description: "Excerpt 1", measures: "No. 1, mm. 1 - 49", pictures: [["D Trumpet 1", "1007"], ["D Trumpet 2", "1008"], ["D Trumpet 3", "1009"]])
], mutes: "", videos: [
    ["", ""]
])

let bachMassB = Composition(id: 4, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Mass in B minor", date: "1749", era: "Baroque", genre: "Mass", excerpts: [
    Excerpt(id: 6, description: "Excerpt 1", measures: "Credo, mm. 29 - 47", pictures: [["D Trumpet 1", "1010"]]),
    Excerpt(id: 7, description: "Excerpt 2", measures: "Credo, mm. 65 - End", pictures: [["D Trumpet 1", "1011"], ["D Trumpet 2", "1012"], ["D Trumpet 3", "1013"]])
], mutes: "", videos: [
    ["", ""]
])



let pictures = [["D Trumpet 1", ""], ["D Trumpet 2", ""], ["D Trumpet 3", ""]]


/*
X Bach – Brandenburg Concerto No. 2
X Bach – Cantata BWV 51
X Bach – Christmas Oratorio
X Bach – Magnificat in D Major
X Bach – Mass in B Minor
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
 Bruckner – Symphony No. 4
 Bruckner – Symphony No. 7
 Bruckner – Symphony No. 8
 Debussy – Fêtes from Nocturnes
 Debussy – La Mer
 Donizetti – Don Pasquale
 Dvořák – Symphony No. 8
 Dvořák – Symphony No. 9
 Handel – Messiah
 Haydn – Symphony No. 100
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
? Ravel – Boléro
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
    bachBrandenburg2, bachCantata, bachChristmasOratorio, bachMagnificant, bachMassB
])

let beethoven = Composer(id: 1, name: "Ludwig Van Beethoven", ipa: "ˈlʊdvɪɡ væn ˈbeɪt(h)oʊvən", image: 2001, country: "Germany", dates: "1770-1827", bio: "Ludwig van Beethoven was a German composer and pianist. Beethoven began his compositional life firmly in the classical era, but was a key figure in the early romantic era. Beethoven grew to be mostly deaf in his lifetime, but never ceased composing. He was the first composer to incorporate trombones in a symphonic setting, and composed nine symphonies in his lifetime. He is considered to be one of the greatest composers of all time.", excerpts: [
])

let berlioz = Composer(id: 2, name: "Hector Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2002, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.", excerpts: [
])

let bizet = Composer(id: 3, name: "Georges Bizet", ipa: "zhawrzh biˈzeɪ", image: 2003, country: "France", dates: "1838-1875", bio: "Georges Bizet was a prominant French composer of the Romantic Era. Best known for his operas and incidental music, Bizet had little success until his final work \"Carmen\".", excerpts: [
])

let brahms = Composer(id: 4, name: "Johannes Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2004, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.", excerpts: [
])

let bruckner = Composer(id: 5, name: "Anton Bruckner", ipa: " 'antɔn ˈbʁʊknɐ", image: 2005, country: "Austria", dates: "1824-1896", bio: "Anton Bruckner was an Austrian organist, music theorist, and composer of the romantic era. He is best known for his symphonies and religious music. Bruckner was unlike other composers of his time, in that he was very a very humble man.", excerpts: [
])

let debussy = Composer(id: 6, name: "", ipa: "", image: 2006, country: "France", dates: "", bio: "", excerpts: [
])

let donizetti = Composer(id: 7, name: "Gaetano Donizetti", ipa: "ɡaeˈtaːno donidˈdzetti", image: 2007, country: "Italy", dates: "1797-1848", bio: "Donizetti was one of the leading composers of the Bel Canto opera style, along with Rossini and Bellini. Donizetti did not come from a musical background, but was taken up by the composer Simon Mayr at a young age and enrolled in a music school. Throughout the course of his life he composed almost 70 operas. He moved to Paris towards the end of his career to escape the censorship that he was always subject to in Naples.", excerpts: [
])

let dvorak = Composer(id: 8, name: "Antonín Dvořák", ipa: "ˈɑn tɔ nyin ˈdvɔr ʒɑk", image: 2008, country: "Austrian Empire", dates: "1841-1904", bio: "Dvořák was one of the first Czech composers to recieve worldwide recognition. Dvořák was an admirer of Richard Wagner, and took influence from him especially in his Operas. He frequently included folk music in his compositions, and his music often had nationalistic themes.", excerpts: [
])

let handel = Composer(id: 9, name: "", ipa: "", image: 2009, country: "England", dates: "", bio: "", excerpts: [
])

let haydn = Composer(id: 10, name: "Franz Joseph Haydn", ipa: "ˈfʁants ˈjoːzɛf ˈhaɪdn̩", image: 2010, country: "Austria", dates: "1732-1809", bio: "Haydn was a classical composer who is commonly known as \"The father of the Symphony\". He spent most of his life as a court musician for the Esterházy family. He was isolated in this role, with little to no contact with the rest of the music community, and was forced to create his own style because of this. Haydn was a prolific composer, producing 104 numbered symphonies and an immense amount of chamber music.", excerpts: [
])

let mahler = Composer(id: 11, name: "Gustav Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 2011, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.", excerpts: [
])

let mozart = Composer(id: 12, name: "Wolfgang Amadeus Mozart", ipa: "ˈwʊlf gæŋ ˌæm əˈdeɪ əs ˈmoʊt sɑrt", image: 2012, country: "Germany", dates: "1756-1791", bio: "Mozart gained popularity as a pianist and composer at an early age. He gained employment as a court musician at the Salzburg court, but quickly lost interest and began traveling looking for other employment. In Vienna, he found great fame, but worked his whole life trying to achieve financial stability: a goal he was never able to achieve. Mozart's death is also very mysterious and controvercial.", excerpts: [
])

let ravel = Composer(id: 13, name: "Maurice Ravel", ipa: "moʊˈris rəˈvɛl", image: 2013, country: "France", dates: "1875-1937", bio: "Ravel was an impressionist French composer. He was a careful, and slow composer, and composed much less compared to many other composers. He was also one of the first composers to realize the potential of recorded music, and was one of the first composers to record their music and marked it to a larger audience this way.", excerpts: [
])

let rimskyKorsakov = Composer(id: 14, name: "Nikolai Rimsky-Korsakov", ipa: "nʲɪkəˈlaj ˈrʲimskʲɪj ˈkorsəkəf", image: 2014, country: "Russia", dates: "1844-1908", bio: "Nikolai Rimsky-Korsakov was one of the most famous Russian composers. He was a master orchestrator, publishing a textbook on the subject using musical examples solely from his own compositions, and his most famous compositions are his orchestral works. Rimsky-Korsakov also spent a large portion of his musical life in association with the Russian military.", excerpts: [
])

let schumann = Composer(id: 15, name: "Robert Schumann", ipa: "ˈrɒb ərt ˈʃu mɑn", image: 2015, country: "Germany", dates: "1810-1856", bio: "Schumann was one of the most popular composers of the romantic era. He gave up the study of law to become a concert pianist, but his dreams were crushed by a hand injury. He subsequently pursued a career in composition, and married his teacher's daughter, Clara Wieck. Schumann mainly composed for piano, but later in live began to compose lieder, orchestral works, and one opera.", excerpts: [
])

let scriabin = Composer(id: 16, name: "", ipa: "", image: 2016, country: "", dates: "", bio: "", excerpts: [
])

let sibelius = Composer(id: 17, name: "Jean Sibelius", ipa: "ʒɑn  sɪˈbeɪ li əs", image: 2017, country: "Finland", dates: "1865-1957", bio: "Sibelius is the most well known composer to come out of Finland. His music is credited with helping Finland to develop a national identity, and his most famous work \"Finlandia\" is known as Finland's unofficial national anthem. Sibelius mysteriously stopped composing in the last thirty years of his life, retiring to a quite life in Järvenpää.", excerpts: [
])

let rStrauss = Composer(id: 18, name: "Richard Strauss", ipa: "ˈʁɪçaʁt ˈʃtʁaʊs", image: 2018, country: "Germany", dates: "1864-1949", bio: "Richard Strauss was one of the leading composers of the Romantic Era. He, along with Gustav Mahler, were considered successors of Richard Wagner. Although Strauss composed music for almost every classical genre, he is most famous for his tone poems. Strauss' compositional output began when he was just six years old, and continued almost eighty years later until his death.", excerpts: [
])

let stravinsky = Composer(id: 19, name: "Igor Stravinsky", ipa: "ˈi gɔr strəˈvɪn ski", image: 2019, country: "Russia", dates: "1882-1971", bio: "Igor Stravinsky was one of the most influential composers of the twentieth century. Stravinsky's music is very unique from that of other composers, and often contains russian folk melodies. Throughout his life, the kinds of compositions that he composed also changed dramatically, from symphonies, to chamber music, to ballets.", excerpts: [
])

let tchaikovsky = Composer(id: 20, name: "Pyotr Ilyich Tchaikovsky", ipa: "ˈpyɔtr iˈlyitʃ tʃaɪˈkɒfski", image: 2020, country: "Russia", dates: "1840-1893", bio: "Tchaikovsky was the first Russian composer to gain international fame. Tchaikovsky recieved a western European style music education, which seemed to counter the traditional Russian music practices. This dichotomy posed a great challenge for Tchaikovsky, one that affected his self confidence a lot. Although Tchaikovsky's music gained popular support, his life was deeply affected by depression and personal crises.", excerpts: [
])


let wagner = Composer(id: 21, name: "Richard Wagner", ipa: "ˈʁɪçaʁt ˈvaːɡnɐ", image: 2021, country: "Germany", dates: "1813-1883", bio: "Wagner is one of the most well known composers of all time. His music frequently appears in television shows and movies. He was most well known in his era for his operas, which usually run about four hours. Wagner was unusual as an opera composer because he himself wrote the liberetto for the operas he composed. Wagner had his own opera house constructed, which still stands to this day.", excerpts: [
])


/**
 An Organized model of all of the Compositions and Composers in alphabetical order.
 */
class TrumpetContentModel: ObservableObject {
    /**
     An alphabetical list of all of the compositions in the app.
     */
    var excerpts: [Composition] = [
        bachBrandenburg2, bachCantata, bachChristmasOratorio, bachMagnificant, bachMassB
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        bach, beethoven, berlioz, bizet, brahms, bruckner, debussy, donizetti, dvorak, handel, haydn, mahler, mozart, ravel, rimskyKorsakov, schumann, scriabin, sibelius, rStrauss, stravinsky, tchaikovsky, wagner
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

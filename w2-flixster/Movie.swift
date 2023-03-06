//
//  Movie.swift
//  w2-flixster
//
//  Created by Phuong Anh Le on 3/5/23.
//

import Foundation

struct Movie {
    let movieName: String
    let movieAbout: String
    let movieBackdrop: URL
    let moviePoster: URL
    let movieAverage: String
    let movieVotes: String
    let moviePopularity: String
}

extension Movie {
    
    static var movieList: [Movie] = [
        Movie(movieName: "Knock at the Cabin",
              movieAbout: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
              movieAverage: "6.6 Vote Average",
              movieVotes: "751 Votes",
              moviePopularity: "4286.16 Popularity"),
        
        Movie(movieName: "Black Panther: Wakanda Forever",
              movieAbout: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
              movieAverage: "7.4 Vote Average",
              movieVotes: "3783 Votes",
              moviePopularity: "2949.117 Popularity"),
        
        Movie(movieName: "Puss in Boots: The Last Wish",
              movieAbout: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
              movieAverage: "8.4 Vote Average",
              movieVotes: "4235 Votes",
              moviePopularity: "2820.651 Popularity"),
        
        Movie(movieName: "Plane",
              movieAbout: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!,
              movieAverage: "6.9 Vote Average",
              movieVotes: "754 Votes",
              moviePopularity: "2200.205 Popularity"),
        
        Movie(movieName: "Little Dixie",
              movieAbout: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!,
              movieAverage: "6.3 Vote Average",
              movieVotes: "44 Votes",
              moviePopularity: "1698.096 Popularity"),
        
        Movie(movieName: "Huesera: The Bone Woman",
              movieAbout: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/A2avUoNFstnBhAnHiogXQs4c9Bt.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg")!,
              movieAverage: "6.8 Vote Average",
              movieVotes: "57 Votes",
              moviePopularity: "1511.332 Popularity"),
        
        Movie(movieName: "M3GAN",
              movieAbout: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/dlrWhn0G3AtxYUx2D9P2bmzcsvF.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!,
              movieAverage: "7.l5 Vote Average",
              movieVotes: "1864 Votes",
              moviePopularity: "1420.255 Popularity"),
        
        Movie(movieName: "Shotgun Wedding",
              movieAbout: "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg")!,
              movieAverage: "6.4 Vote Average",
              movieVotes: "578 Votes",
              moviePopularity: "1202.528 Popularity"),
        
        Movie(movieName: "Creed III",
              movieAbout: "After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien - a fighter who has nothing to lose.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/26YLjaC1udGEmSvlM1P5eBGWO5h.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!,
              movieAverage: "7.2 Vote Average",
              movieVotes: "104 Votes",
              moviePopularity: "1194.546 Popularity"),
        
        Movie(movieName: "Ant-Man and the Wasp: Quantumania",
              movieAbout: "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.",
              movieBackdrop: URL(string: "https://image.tmdb.org/t/p/w500/3JSoB7eMbCd8sE8alxNiUtrNiTz.jpg")!,
              moviePoster: URL(string: "https://image.tmdb.org/t/p/w200/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg")!,
              movieAverage: "6.5 Vote Average",
              movieVotes: "856 Votes",
              moviePopularity: "1698.096 Popularity"),
    
    
    ]
}

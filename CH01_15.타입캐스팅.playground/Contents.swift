import UIKit

//타입 캐스팅 -> 인스턴스의 타입을 확인하거나 어떠한 클래스의 인스턴스를 해당 클래스 계층 구조의 슈터 클래스나 서브 클래스로 취급 하는 방법
//1. is

class MediaItem {
    var name: String
    init(name:String){
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String){
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem{
    var artist: String
    init(name: String, artist: String){
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "기생충", director: "봉준호"),
    Song(name: "Butter", artist: "BTS"),
    Movie(name: "올드보이", director: "박찬욱"),
    Song(name: "Wonderwall", artist: "Oasis"),
    Song(name: "Rain", artist: "이적")
]

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")

//2. as

//다운캐스팅
// 실패할 수 있다.

// as? -> 조건부 형식 다운캐스팅 하려는 타입의 옵셔널값으로 반환
// as! -> 강제형식 강제로 언랩핑하여 값을 반환 (성공한다는 확신이 들때 사용)


for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), by \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}

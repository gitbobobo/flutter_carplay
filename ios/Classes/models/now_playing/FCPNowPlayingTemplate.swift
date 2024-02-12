

class FCPNowPlayingTemplate {
    var isAlbumArtistButtonEnabled: Bool
    
    var isUpNextButtonEnabled: Bool
    
    var upNextTitle: String?
    
    var nowPlayingButtons: [FCPNowPlayingButton]
    
    init(obj: [String : Any]) {
        self.upNextTitle = obj["upNextTitle"] as? String
        self.isAlbumArtistButtonEnabled = obj["isAlbumArtistButtonEnabled"] as! Bool
        self.isUpNextButtonEnabled = obj["isUpNextButtonEnabled"] as! Bool
        self.nowPlayingButtons = (obj["nowPlayingButtons"] as! Array<[String : Any]>).map {
            FCPNowPlayingButton(obj: $0)
        }
    }
    
}

import CarPlay

class FCPNowPlayingButton {
    var id: String

    var image: String
    
    var isEnabled: Bool
    
    var isSelected: Bool
    
    init(obj: [String : Any]) {
        self.id = obj["id"] as! String
        self.image = obj["image"] as! String
        self.isEnabled = obj["isEnabled"] as! Bool
        self.isSelected = obj["isSelected"] as! Bool
    }

    var get: CPNowPlayingButton {
        var uiImage: UIImage?
        var trait = FlutterCarPlaySceneDelegate.interfaceController?.carTraitCollection
        if image.starts(with: "sf_") {
            uiImage = UIImage(systemName: image.replacingOccurrences(of: "sf_", with: ""), compatibleWith: trait)
        }else{
            uiImage = UIImage().fromFlutterAsset(name: image)
        }

        let button = CPNowPlayingImageButton(image: uiImage!, handler: { (button) in
             FCPStreamHandlerPlugin.sendEvent(type: FCPChannelTypes.onNowPlayingButtonPressed,
                                         data: ["btnType": FCPNowPlayingButtonTypes.imageButton, "btnId": self.id])
        })
        button.isEnabled = self.isEnabled
        button.isSelected = self.isSelected
        return button
    }
    
}

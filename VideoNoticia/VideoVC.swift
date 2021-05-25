
import UIKit
import AVKit
import AVFoundation


class VideoVC: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //VIDEO
        let ligaVideo = "http://walterebert.com/playground/video/hls/sintel-trailer.m3u8"
    
        let urlvideo = URL(string: ligaVideo)
        
        if let urlvideo = urlvideo {
            let asset = AVAsset (url: urlvideo)
            let item = AVPlayerItem (asset: asset)
            let miPlayer = AVPlayer (playerItem: item)
            
            self.player = miPlayer
            miPlayer.play()
        }
    }
   }

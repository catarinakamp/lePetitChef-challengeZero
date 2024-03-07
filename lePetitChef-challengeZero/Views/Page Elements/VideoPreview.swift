import SwiftUI
import AVKit

struct VideoPreview: View {
    let step: Steps
    @State var player: Player
    
    init(step: Steps) {
        self.step = step
        self.player = Player(videoFileName: step.nomeArquivo)
                
        self.player.changeVideo()
    }
    
    
    var body: some View {
        
            player
                .frame(height: UIScreen.main.bounds.height / 4.83)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(40)
                .foregroundStyle(.white)
        
    }
}

struct Player: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
    }
    
    let videoFileName: String
    var controller = AVPlayerViewController()

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        print("INIT")

        if let videoPath = Bundle.main.path(forResource: videoFileName, ofType: "mov") {
            let videoURL = URL(fileURLWithPath: videoPath)
            let player = AVPlayer(url: videoURL)
            controller.player = player
            player.play()
        }
        controller.videoGravity = .resizeAspectFill
        return controller
    }
    
    func changeVideo() {
        print("Mudei o vídeo para \(videoFileName).")
//        controller.player = nil
        var player = controller.player
        if let videoPath = Bundle.main.path(forResource: videoFileName, ofType: "mov") {
            let videoURL = URL(fileURLWithPath: videoPath)
//            let player = AVPlayer(url: videoURL)
//            controller.player = player
            if player != nil {
                player!.pause()
                player = AVPlayer(url: videoURL)
                player!.play()
            }

        }
        controller.videoGravity = .resizeAspectFill
        
    }
}

#Preview {
    VideoPreview(step: OurRecipes().arrayOfRecipes[3].steps[1])
}

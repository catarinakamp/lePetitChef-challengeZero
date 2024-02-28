import SwiftUI
import AVKit

struct VideoPreview: View {
    var body: some View {
        ZStack{
            // videoFilename com o nome do arquivo do video
            Player(videoFileName: "IMG_0092")
                .frame(height: UIScreen.main.bounds.height / 4.83)
                .padding(40)
            Text("VIDEO")
                .foregroundStyle(.white)
        }
    }
}

struct Player: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
    }
    
    let videoFileName: String

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()

        if let videoPath = Bundle.main.path(forResource: videoFileName, ofType: "mov") {
            let videoURL = URL(fileURLWithPath: videoPath)
            let player = AVPlayer(url: videoURL)
            controller.player = player
        }

        return controller
    }
}

#Preview {
    VideoPreview()
}

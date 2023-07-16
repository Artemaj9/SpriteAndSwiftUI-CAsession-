//
//  ContentView.swift
//  Emitter(CAsession)
//
//  Created by Artem on 16.07.2023.
//

import SwiftUI
import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
       super.didMove(to: view)
        
    setupParticleEmitter()
    }
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        guard let touch = touches.first else
//        { return }
//        let location = touch.location(in: self)
//
//
//        let box = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
//        box.position = location
//        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
//        addChild(box)
     
        func setupParticleEmitter() {
            let particleEmitter = SKEmitterNode(fileNamed: "Snow")
            particleEmitter?.position = CGPoint(x: size.width / 2, y: size.height - 50)
            addChild(particleEmitter!)
        }
    }

struct ContentView: View {
  
        var scene : SKScene {
            let scene = GameScene()
            scene.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            scene.scaleMode = .aspectFill
            return scene
        }
        var body: some View {
            ZStack {
            SpriteView(scene: scene)
                    
              //  .frame(width: proxy.size.width, height: proxy.size.height)
            
            Text("Wonderland!")
                    .foregroundColor(.white.opacity(0.8))
                    .font(.largeTitle)
                    .bold()
        }
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

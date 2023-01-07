//
//  ViewController.swift
//  PencilKitExample
//
//  Created by Sezer İltekin on 7.01.2023.
//

import UIKit
import PencilKit

class ViewController: UIViewController, PKCanvasViewDelegate {
    
    let canvas = PKCanvasView()
    let toolPicker = PKToolPicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        canvas.delegate = self
        canvas.drawingPolicy = .anyInput

        view.addSubview(canvas)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        toolPicker.setVisible(true, forFirstResponder: canvas)
        toolPicker.addObserver(canvas)
        canvas.becomeFirstResponder()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        canvas.frame = view.bounds
    }

}


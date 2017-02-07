//
//  ViewController.swift
//  FrameBoundsDifferens
//
//  Created by Igor Galay on 2/7/17.
//  Copyright © 2017 Rarus. All rights reserved.
//

import UIKit

let kTestImageName = "yosemite"

class ViewController: UIViewController {

    // MARK: - Outlets 
    var educationalView: UIView!
    
    // MARK: Labels
    @IBOutlet weak var frameXLabel: UILabel!
    @IBOutlet weak var frameYLabel: UILabel!
    @IBOutlet weak var frameWidthLabel: UILabel!
    @IBOutlet weak var frameHeightLabel: UILabel!
    
    @IBOutlet weak var boundsXLabel: UILabel!
    @IBOutlet weak var boundsYLabel: UILabel!
    @IBOutlet weak var boundsWidthLabel: UILabel!
    @IBOutlet weak var boundsHeightLabel: UILabel!
    
    @IBOutlet weak var centerXLabel: UILabel!
    @IBOutlet weak var centerYLabel: UILabel!
    
    @IBOutlet weak var rotationLabel: UILabel!
    
    // MARK: Sliders
    @IBOutlet weak var frameXSlider: UISlider!
    @IBOutlet weak var frameYSlider: UISlider!
    @IBOutlet weak var frameWidthSlider: UISlider!
    @IBOutlet weak var frameHeightSlider: UISlider!
    
    @IBOutlet weak var boundsXSlider: UISlider!
    @IBOutlet weak var boundsYSlider: UISlider!
    @IBOutlet weak var boundsWidthSlider: UISlider!
    @IBOutlet weak var boundsHeightSlider: UISlider!
    
    @IBOutlet weak var centerXSlider: UISlider!
    @IBOutlet weak var centerYSlider: UISlider!
    
    @IBOutlet weak var rotationSlider: UISlider!
    
    // MARK: - View Controller lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        constructDefaultView()
        updateUI()
    }
    
    // MARK: - Actions
    @IBAction func frameXSliderValueChanged(_ sender: UISlider) {
        educationalView.frame.origin.x = CGFloat(sender.value)
        updateUI()
    }

    @IBAction func frameYSliderValueChanged(_ sender: UISlider) {
        educationalView.frame.origin.y = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func frameWidthSliderValueChanged(_ sender: UISlider) {
        educationalView.frame.size.width = CGFloat(sender.value)
        updateUI()
    }

    @IBAction func frameHeightSliderValueChanged(_ sender: UISlider) {
        educationalView.frame.size.height = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func boundsXSliderValueChanged(_ sender: UISlider) {
        educationalView.bounds.origin.x = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func boundsYSliderValueChanged(_ sender: UISlider) {
        educationalView.bounds.origin.y = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func boundsWidthSliderValueChanged(_ sender: UISlider) {
        educationalView.bounds.size.width = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func boundsHeightSliderValueChanged(_ sender: UISlider) {
        educationalView.bounds.size.height = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func centerXSliderValueChanged(_ sender: UISlider) {
        educationalView.center.x = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func centerYSliderValueChanged(_ sender: UISlider) {
        educationalView.center.y = CGFloat(sender.value)
        updateUI()
    }
    
    @IBAction func rotationSliderValueChanged(_ sender: UISlider) {
        let rotation = CGAffineTransform(rotationAngle: CGFloat(sender.value))
        educationalView.transform = rotation
        updateUI()
    }
    
    // MARK: - Private methods
    private func updateUI() {
        updateSliders()
        updateLabels()
    }
    
    private func updateLabels() {
        frameXLabel.text = "Frame X = \(Int(educationalView.frame.origin.x))"
        frameYLabel.text = "Frame Y = \(Int(educationalView.frame.origin.y))"
        frameWidthLabel.text = "Frame W = \(Int(educationalView.frame.size.width))"
        frameHeightLabel.text = "Frame H = \(Int(educationalView.frame.size.height))"
        
        boundsXLabel.text = "Bounds X = \(Int(educationalView.bounds.origin.x))"
        boundsYLabel.text = "Bounds Y = \(Int(educationalView.bounds.origin.y))"
        boundsWidthLabel.text = "Bounds W = \(Int(educationalView.bounds.size.width))"
        boundsHeightLabel.text = "Bounds H = \(Int(educationalView.bounds.size.height))"
        
        centerXLabel.text = "Center X = \(Int(educationalView.center.x))"
        centerYLabel.text = "Center Y = \(Int(educationalView.center.y))"
        
        rotationLabel.text = "Rotation = \(Int(rotationSlider.value))"
    }
    
    private func updateSliders() {
        frameXSlider.value = Float(educationalView.frame.origin.x)
        frameYSlider.value = Float(educationalView.frame.origin.y)
        frameWidthSlider.value = Float(educationalView.frame.size.width)
        frameHeightSlider.value = Float(educationalView.frame.size.height)
        
        boundsXSlider.value = Float(educationalView.bounds.origin.x)
        boundsYSlider.value = Float(educationalView.bounds.origin.y)
        boundsWidthSlider.value = Float(educationalView.bounds.size.width)
        boundsHeightSlider.value = Float(educationalView.bounds.size.height)
        
        centerXSlider.value = Float(educationalView.center.x)
        centerYSlider.value = Float(educationalView.center.y)
    }
    
    private func constructDefaultView() {
        educationalView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        let imageView = UIImageView(image: UIImage(named: kTestImageName))
        educationalView.clipsToBounds = true
        educationalView.addSubview(imageView)
        self.view.addSubview(educationalView)
    }
}


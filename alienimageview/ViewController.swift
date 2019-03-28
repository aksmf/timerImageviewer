//
//  ViewController.swift
//  alienimageview
//
//  Created by D7703_30 on 2019. 3. 28..
//  Copyright © 2019년 D7703_30. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var countlabel: UILabel!
    var count = 1
    //timer 객체 선언
    var mytimer = Timer();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageview.image = UIImage(named: "frame\(count).png")
        countlabel.text = String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playbtrPressed(_ sender: Any) {
        if (!mytimer.isValid) {
        mytimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func pausebtrPressed(_ sender: Any) {
        mytimer.invalidate()
    }
    @IBAction func stopbtrPressed(_ sender: Any) {
        mytimer.invalidate()
    }
    
    //Timer 에서 호출되는 함수 정의
    @objc func doAnimation() {
        count += 1
        if count == 0 {
            count = 1
        }
        imageview.image = UIImage(named: "frame\(count).png")
        countlabel.text = String(count)
    }
    
    
}


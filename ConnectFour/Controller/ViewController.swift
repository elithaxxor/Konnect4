//
//  ViewController.swift
//  ConnectFour
//
//  Created by Adel Al-Aali on 1/21/23.
//

import UIKit
import Foundation

class ViewController: UIViewController  {

    // NOTE: Outlets
    @IBOutlet fileprivate weak var collectionView : UICollectionView!
    
    @IBOutlet fileprivate weak var play : UIButton!
    
    @IBOutlet fileprivate weak var currentPlayer : UIView?
    
    @IBOutlet fileprivate weak var gTitle : UIView?

    @IBOutlet fileprivate weak var backgroundColor : UIColor?
    
    //..fin
    internal var timer = AppTimer()

    
    // NOTE: View Hiearchy
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Konnect4 - [\(String(describing: currentPlayer))]"
        self.gTitle?.backgroundColor = .black // TODO: Change this so it shows which players active
        self.timer.setupTimer()
        setupUI()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
    }
    // ..fin
    
    
    fileprivate func setupUI() {
        

    }
    

}


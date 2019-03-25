//
//  DetailViewController.swift
//  IRDb_NQM
//
//  Created by Nnamdi Massally on 3/18/19.
//  Copyright © 2019 Nnamdi Massally. All rights reserved.
//
//  No idea what I'm about to be doing on this project :D
//
//  Somebody please help me
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var mediaTitle: UILabel!
    @IBOutlet weak var mediaRuntime: UILabel!
    @IBOutlet weak var mediaClassification: UILabel!
    @IBOutlet weak var mediaEpisodeNum: UILabel!
    @IBOutlet weak var mediaProducer: UILabel!
    @IBAction func castList(_ sender: UIButton) {
    }
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}


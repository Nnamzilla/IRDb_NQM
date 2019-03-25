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
    @IBOutlet weak var mediaDescription: UILabel!
    @IBOutlet weak var mediaSummary: UITextView!
    @IBOutlet weak var mediaPoster: UIImageView!
    @IBAction func castList(_ sender: UIButton) {
    }
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.name
            }
            title = detail.name
            if let label = mediaRuntime {
                if let ended = detail.yearEnd {
                    label.text = "\(detail.yearStart) - \(ended)"
                } else {
                    label.text = detail.yearStart
                }
            }
            if let label = mediaClassification {
                label.text = detail.format
            }
            if let label = mediaEpisodeNum {
                if let countEpisodes = detail.episodes {
                    if countEpisodes > 1 {
                        label.text = "\(countEpisodes) Episodes"
                    } else {
                        label.text = "\(countEpisodes) Episode"
                    }
                } else {
                    label.text = ""
                }
            }
            if let label = mediaProducer {
                if let network = detail.network {
                    label.text = network
                } else if let studio = detail.studio {
                    label.text = studio
                }
            }
            if let label = mediaDescription {
                label.text = detail.description
            }
            if let textview = mediaSummary {
                textview.text = detail.summary
            }
            if let imageView = mediaPoster {
                let url = URL(string: detail.imageURL)
                let data = try? Data(contentsOf: url!)
                imageView.image = UIImage(data: data!)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: MovieDataModel.Entry? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}


//
//  FirstViewController.swift
//  NoBindingMVVMSample
//
//  Created by UetaMasamichi on 2016/12/10.
//  Copyright © 2016 Masmichi Ueta. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var viewModel: FirstViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel = FirstViewModel()
        
        self.viewModel.stateDidUpdate = { [unowned self] state in
            switch state {
            case .segmentValueChanged(let selectedSegment):
                switch selectedSegment {
                case 0:
                    self.label.text = "first segment selected"
                case 1:
                    self.label.text = "second segment selected"
                default:
                    break
                }
            }
        }
    }
    
    @IBAction func segmentedControlValueDidChange(_ sender: UISegmentedControl) {
        self.viewModel.updateSelectedSegment(selectedSegment: sender.selectedSegmentIndex)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        vc.viewModel = SecondViewModel(text: "Hello from FirstViewController")
    }
}

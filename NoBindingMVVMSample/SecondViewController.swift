//
//  SecondViewController.swift
//  NoBindingMVVMSample
//
//  Created by UetaMasamichi on 2016/12/10.
//  Copyright © 2016 Masmichi Ueta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var viewModel: SecondViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label.text = self.viewModel.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

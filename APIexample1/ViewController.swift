//
//  ViewController.swift
//  APIexample1
//
//  Created by Md. Mehedi Hasan on 13/1/20.
//  Copyright © 2020 Md. Mehedi Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var getTextview: UITextView!
    
    let session = URLSession.shared
    let url = URL(string: "https://api.darksky.net/forecast/e03fba5c687227d65dd03e52b231c81d/37.8267,-122.4233")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    


    @IBAction func getRequestButtonPressed(_ sender: Any) {
        
        let task = session.dataTask(with: url) { data, response, error in
            print(data)
            print(response)
            print(error)
        
        }
        task.resume()
    }
    
}


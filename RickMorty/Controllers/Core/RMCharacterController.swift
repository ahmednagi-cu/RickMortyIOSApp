//
//  RMCharacterController.swift
//  RickMorty
//
//  Created by ahmed nagi on 18/04/2023.
//

import UIKit

class RMCharacterController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        let request =   ApiRequest(endPoint: .character,pathComponents: ["1"])
        print(request.url)
        
    }
    

  

}

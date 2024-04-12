//
//
// Copyright © 2024
//
    

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let api : SchoolApiLogic = SchoolDirectoryApi()
        api.getSchools { result in
            
            switch result {
            case .failure(let error):
                print(error)
                break
            case .success(let schools):
            
                if let schools = schools {
                    print(schools.count)
                }
                break
                
            }
        }
    }


}


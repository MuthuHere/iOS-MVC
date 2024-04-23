//
//
// Copyright © 2024
//
    

import UIKit

class ViewController: UIViewController {
    
    let viewController = SchoolsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewController.getSchools {[weak self] schools, error in
            
            if let error = error {
                let alert = UIAlertController(title: "School", message: "Could not get school list", preferredStyle: .alert)
                
                //actions
                let action = UIAlertAction(title: "OK", style: .default)
                alert.addAction(action)
                
                self?.present(alert, animated: true)
            }
            
            if let schools = schools {
                print(schools[0])
                
//                schools.forEach { school in
//                    print("\(String(describing: school.schoolName))")
//                }
            }
            
            
        }
//
//        let api : SchoolApiLogic = SchoolDirectoryApi()
//        api.getSchools { result in
//            
//            switch result {
//            case .failure(let error):
//                print(error)
//                break
//            case .success(let schools):
//            
//                if let schools = schools {
//                    print(schools.count)
//                }
//                break
//                
//            }
//        }
    }


}


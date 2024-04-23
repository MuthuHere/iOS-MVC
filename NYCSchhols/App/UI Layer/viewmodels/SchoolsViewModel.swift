//
//
// Copyright © 2024 THALES. All rights reserved.
//
    

import Foundation


class SchoolsViewModel {
    
    private(set) var schools : [School] = []
    private(set) var error : DataError? = nil
    
    private let apiService : SchoolApiLogic
    
    init(apiService: SchoolApiLogic = SchoolDirectoryApi()) {
        self.apiService = apiService
    }
    
    func getSchools(completion: @escaping(([School]?, DataError?) -> ())) {
        
        apiService.getSchools {[weak self] result in
            switch result {
                
            case .success(let schools):
                self?.schools = schools ?? []
                completion(schools, nil)
            case .failure(let error):
                self?.error = error
                completion(nil, error)
            }
        }
        
    }
}

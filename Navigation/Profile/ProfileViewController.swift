

import UIKit

class ProfileViewController: UIViewController {

   private let profileHeader: ProfileHeaderView = {
       let profileHeader = ProfileHeaderView()
       profileHeader.translatesAutoresizingMaskIntoConstraints = false
       return profileHeader
   }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeader)
        
        addConstraints()
    }
    
    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        
        //Add ProfileHeaderView constraints
        constraints.append(profileHeader.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(profileHeader.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        constraints.append(profileHeader.heightAnchor.constraint(equalToConstant: 220))
        
        //Activate constraints
        NSLayoutConstraint.activate(constraints)
    }
}

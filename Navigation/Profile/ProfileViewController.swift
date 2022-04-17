

import UIKit

class ProfileViewController: UIViewController {

   private let profileHeader: ProfileHeaderView = {
       let profileHeader = ProfileHeaderView()
       profileHeader.translatesAutoresizingMaskIntoConstraints = false
       return profileHeader
   }()
   
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("New Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeader)
        view.addSubview(button)
        
        addConstraints()
    }
    
    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        
        //Add ProfileHeaderView constraints
        constraints.append(profileHeader.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(profileHeader.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        constraints.append(profileHeader.heightAnchor.constraint(equalToConstant: 220))
      
        //Add button constraints
        constraints.append(button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(button.heightAnchor.constraint(equalToConstant: 50))
        
        //Activate constraints
        NSLayoutConstraint.activate(constraints)
    }
}

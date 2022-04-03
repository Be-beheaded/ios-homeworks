

import UIKit

class ProfileViewController: UIViewController {

   private let profileHeader: ProfileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        profileHeader.frame = view.frame
    }
    
    override func viewWillLayoutSubviews() {
        view.addSubview(profileHeader)
        
    }

    
}

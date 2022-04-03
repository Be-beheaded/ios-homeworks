

import UIKit

class ProfileHeaderView: UIView {
    
    private let profilePic: UIImageView = {
        let profilePic = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        profilePic.image = UIImage(named: "Cat")
        profilePic.translatesAutoresizingMaskIntoConstraints = false
        profilePic.contentMode = .scaleAspectFill
        profilePic.layer.borderWidth = 3
        profilePic.layer.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        profilePic.layer.borderColor = UIColor.white.cgColor
        profilePic.layer.cornerRadius = 60
        profilePic.clipsToBounds = true
        
        return profilePic
    }()

    private let profileName: UILabel = {
        let profileName = UILabel()
        profileName.text = "Hipster Cat"
        profileName.textColor = .black
        profileName.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        profileName.translatesAutoresizingMaskIntoConstraints = false
        
        return profileName
    }()

    private let profileStatus: UILabel = {
        let profileStatus = UILabel()
        profileStatus.text = "Waiting for something..."
        profileStatus.textColor = .gray
        profileStatus.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        profileStatus.translatesAutoresizingMaskIntoConstraints = false
        return profileStatus
    }()

    private let showStatusButton: UIButton = {
        let showStatusButton = UIButton()
        showStatusButton.setTitle("Show status", for: .normal)
        showStatusButton.setTitleColor(.white, for: .normal)
        showStatusButton.backgroundColor = .systemBlue
        showStatusButton.layer.cornerRadius = 4
        showStatusButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        showStatusButton.translatesAutoresizingMaskIntoConstraints = false
        showStatusButton.layer.shadowOffset.width = 4
        showStatusButton.layer.shadowOffset.height = 4
        showStatusButton.layer.shadowRadius = 4
        showStatusButton.layer.shadowColor = UIColor.black.cgColor
        showStatusButton.layer.shadowOpacity = 0.7
        showStatusButton.clipsToBounds = true
        showStatusButton.layer.masksToBounds = false
        
        return showStatusButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(profileName)
        self.addSubview(profilePic)
        self.addSubview(showStatusButton)
        self.addSubview(profileStatus)
       
        addConst()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    @objc private func didTapButton() {
        print("\(profileStatus.text!)")
    }
        
    func addConst(){
        var constraints = [NSLayoutConstraint]()
        
        //Add Name Constraints
        constraints.append(profileName.leadingAnchor.constraint(equalTo: profilePic.trailingAnchor, constant: 16))
        constraints.append(profileName.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(profileName.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27))
        
        //Add Pic Constraints
        constraints.append(profilePic.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16))
        constraints.append(profilePic.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16))
        constraints.append(profilePic.widthAnchor.constraint(equalToConstant: 120))
        constraints.append(profilePic.heightAnchor.constraint(equalToConstant: 120))
        
        //Add Button Constraints
        constraints.append(showStatusButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16))
        constraints.append(showStatusButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16))
        constraints.append(showStatusButton.topAnchor.constraint(equalTo: profilePic.bottomAnchor, constant: 16))
        constraints.append(showStatusButton.heightAnchor.constraint(equalToConstant: 50))
        
        //Add Status Constraints
        constraints.append(profileStatus.leadingAnchor.constraint(equalTo: profileName.leadingAnchor))
        constraints.append(profileStatus.bottomAnchor.constraint(equalTo: showStatusButton.topAnchor, constant: -34))
        

        NSLayoutConstraint.activate(constraints)
    }
}



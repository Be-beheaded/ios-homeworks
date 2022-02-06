
import UIKit


class ProfileView: UIView {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var aboutTextView: UITextView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        
        self.photoImageView.image = UIImage(named: "IMG_9488red")
        self.nameLabel.text = "Андрей"
        self.dateLabel.text = "19.12.1992"
        self.cityLabel.text = "Москва"
    }
        
        private func setupView() {
            let view = self.loadViewFromXib()
            self.addSubview(view)
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
        }
        
    private func loadViewFromXib() -> UIView {
            guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self, options: nil)?.first as? UIView else { return UIView() }
            return view
        }
}

//
//  TextInputField.swift
//  Compassion
//
//  Created by Casper Daris on 03/04/2021.
//

import UIKit

@IBDesignable
class TextInputField: UIView {
    
    // MARK: - Input types
    enum InputType {
        case email
        case password
        case name
        
        /// Set the image of the view
        var image: UIImage? {
            switch self {
                case .email:
                    return UIImage(systemName: "envelope.fill")
                case .password:
                    return UIImage(systemName: "key.fill")
                case .name:
                    return UIImage(systemName: "person.circle.fill")
            }
        }
    }
    
    private var contentView: UIView?
    private var inputType: InputType = .email {
        didSet {
            imageView.image = inputType.image
            switch inputType {
                case .email:
                    textInputField.keyboardType = .emailAddress
                    textInputField.autocorrectionType = .no
                case .password:
                    textInputField.isSecureTextEntry = true
                case .name:
                    textInputField.autocorrectionType = .no
            }
        }
    }
    
    // MARK: - Outlets
    @IBOutlet weak var completeStackView: UIStackView!
    @IBOutlet weak var inputTitleLabel: UILabel!
    @IBOutlet weak var outerInputView: UIView!
    @IBOutlet weak var innerStackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textInputField: UITextField!
    
    @IBInspectable
    var nibName: String?
    
    /// This function initializes the field view
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    /// TO DO: Why this function?
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        addSubview(view)
        contentView = view
    }
    
    /// TO DO: What is load from nib?
    func loadViewFromNib() -> UIView? {
        guard let nibName = nibName else { return nil }
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)
            .first as? UIView
    }
    
    /// This function configures the input field itself and sets the type
    func configure(type: InputType, title: String, placeholder: String, isMandatory: Bool) {
        self.inputType = type
        inputTitleLabel.text = title
        self.textInputField.placeholder = placeholder
        self.outerInputView.layer.cornerRadius = 12
        self.outerInputView.addShadowToView(color: .black, offset: .zero, opacity: 0.3, radius: 2)
    }
    
    /// Getter for the user input
    func getContent() -> String { return textInputField.text ?? "" }
    
    

}

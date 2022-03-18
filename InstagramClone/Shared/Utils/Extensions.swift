//
//  Extensions.swift
//  Instagram_Clone
//
//  Created by Eren Cem Salta on 4/20/21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

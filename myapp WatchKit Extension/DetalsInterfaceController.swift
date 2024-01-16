//
//  DetalsInterfaceController.swift
//  watch1 Watch App
//
//  Created by Polina Fedulova on 30.10.2023.
//

import WatchKit
import Foundation


class DetalsInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var recipeIcon: WKInterfaceImage!
    @IBOutlet weak var recipeName: WKInterfaceLabel!
    @IBOutlet weak var recipeImage: WKInterfaceImage!
    @IBOutlet weak var recipeAuthor: WKInterfaceLabel!
    @IBOutlet weak var recipeText: WKInterfaceLabel!
    @IBOutlet weak var recipeRaiting: WKInterfaceSlider!
    
    var currentItem : Recipe!

    @IBAction func onRatingChange(_ value: Float) {
        
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let item = context as? Recipe {
            
            currentItem = item
            
            recipeIcon.setImageNamed(item.icon)
            recipeName.setText(item.name)
            recipeImage.setImageNamed(item.image)
            recipeAuthor.setText(item.author)
            recipeText.setText(item.text)
        }
        
        // Configure interface objects here.
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        return currentItem.text
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

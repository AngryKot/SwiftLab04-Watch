//
//  TableInterfaceController.swift
//  watch1 Watch App
//
//  Created by Polina Fedulova on 30.10.2023.
//

import WatchKit
import Foundation


class TableInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        var recs : [Recipe] = Recipe.getRecipes()
        table.setNumberOfRows(recs.count, withRowType: "myrow")
        for (index, item) in recs.enumerated() {
            var controller = table.rowController(at: index) as! TableRow
            controller.recipeIcon.setImageNamed(item.icon)
            controller.recipeName.setText(item.name)
        }
        
        // Configure interface objects here.
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> Any? {
        var recs : [Recipe] = Recipe.getRecipes()
        return recs[rowIndex]
   
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

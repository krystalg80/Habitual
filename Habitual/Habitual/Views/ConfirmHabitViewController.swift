//
//  ConfirmHabitViewController.swift
//  Habitual
//
//  Created by Krystal Galdamez on 4/3/23.
//

import UIKit

class ConfirmHabitViewController: UIViewController {
   
    var habitImage: Habit.Images!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var habitImageView: UIImageView!
    
    @IBOutlet weak var habitNameInputField: UITextField!
    

    @IBAction func createHabitButtonPressed(_ sender: Any) {
    
        var persistenceLayer = PersistenceLayer()
            guard let habitText = habitNameInputField.text else { return }
            
            persistenceLayer.createNewHabit(name: habitText, image: habitImage)
            self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    private func updateUI() {
        title = "New Habit"
            habitImageView.image = habitImage.image
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    
}

//
//  CaloriesViewController.swift
//  BeFit
//
//  Created by Camila Aichele on 10/24/22.
//

import UIKit
import Parse

class CaloriesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(identifier: "LoginViewController")
        let delegate = self.view.window?.windowScene?.delegate as! SceneDelegate
        delegate.window?.rootViewController = loginViewController
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

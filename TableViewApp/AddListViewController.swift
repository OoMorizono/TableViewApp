//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 森園王 on 2021/10/31.
//

import UIKit

class AddListViewController: UIViewController {
    @IBOutlet weak var addTextField: UITextField!
    var taskArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = UserDefaults.standard
        if userDefaults.object(forKey: "add") != nil{
            taskArray = userDefaults.object(forKey:"add") as! [String]}
        print("viewDidLordから")

        // Do any additional setup after loading the view.
    }
    


    @IBAction func addTask(_ sender: Any) {
        print("ボタンを押した直後")
        let userDefaults = UserDefaults.standard
        taskArray.append(addTextField.text!)
        
        print("配列にタスクを追加直後")
        print(taskArray)
        userDefaults.set(taskArray, forKey: "add")
        self.navigationController?.popViewController(animated: true)
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

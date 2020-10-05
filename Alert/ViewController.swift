//
//  ViewController.swift
//  Alert
//
//  Created by anny on 2020/9/10.
//  Copyright © 2020 anny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myPet: UIImageView!
    
    @IBOutlet weak var mylabel: UILabel!
    
    @IBAction func showAlert(_ sender: UIButton) {
        
        let controller = UIAlertController(title: "貓貓可愛", message: "是否覺得貓貓很可愛?", preferredStyle: .alert)

        let okAction = UIAlertAction(title: "是的", style: .default) { (_) in
            self.mylabel.text = "可愛的貓貓唷"
            self.myPet.image = UIImage(named: "MyCat")
            self.mylabel.isHidden = false
        }
        let noAction = UIAlertAction(title: "我比較喜歡狗", style: .default) { (_) in
            self.mylabel.text = "我要換成狗狗"
            self.myPet.image = UIImage(named: "MyDog")
            self.mylabel.isHidden = false
        }

        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)

        controller.addAction(okAction)
        controller.addAction(noAction)
        controller.addAction(cancelAction)

        present(controller, animated: true, completion: nil)
        
/*      // 中間彈跳視窗
        let controller = UIAlertController(title: "要允許此App取用您的位置嗎？", message: "此App需開啟定位服務", preferredStyle: .alert)

        let allowAction = UIAlertAction(title: "使用App期間允許", style: .default, handler: nil)
        let allowOnceAction = UIAlertAction(title: "允許一次", style: .default, handler: nil)
        let allowNotAction = UIAlertAction(title: "不允許", style: .default, handler: nil)

        controller.addAction(allowAction)
        controller.addAction(allowOnceAction)
        controller.addAction(allowNotAction)

        present(controller, animated: true, completion: nil)
         
        // 由下往上彈跳視窗
        let controllerDown = UIAlertController(title: "此照片會從裝置中刪除", message: "" , preferredStyle: .actionSheet)

        let deleteAction = UIAlertAction(title: "刪除此照片", style: .destructive, handler: nil)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)

        controllerDown.addAction(deleteAction)
        controllerDown.addAction(cancelAction)

        present(controllerDown, animated: true, completion: nil)

        
        // 增添文字輸入框 輸入帳號密碼
        let controller = UIAlertController(title: "登入", message: "請輸入帳號與密碼" , preferredStyle: .alert)
        controller.addTextField { (textField) in
           textField.placeholder = "帳號"
        }
        controller.addTextField { (textField) in
           textField.placeholder = "密碼"
           textField.isSecureTextEntry = true
        }

        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
           let account = controller.textFields?[0].text
           let password = controller.textFields?[1].text
           print(account!, password!)
        }
        
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        
        controller.addAction(okAction)
        controller.addAction(cancelAction)
        
        present(controller, animated: true, completion: nil)
 */
    }
    
    @objc func hitMe(thisButton:UIButton){
        print("你要幹什麼＠＠")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup aftern loading the view.
        
          // 嘗試程式碼產生UIButton 以及 圖片Button
//        let button = UIButton(type: .system)
//        button.frame = CGRect(x: 0, y: 100, width: 100, height: 50)
//        button.setTitle("點我", for: .normal)
//        button.setTitle("點下去惹", for: .highlighted)
//        view.addSubview(button)
//        button.addTarget(self, action: #selector(ViewController.hitMe(thisButton:)), for: .touchUpInside)
//
//        let bb = UIButton(frame: CGRect(x: 0, y: 200, width: 100, height: 50))
//        bb.backgroundColor = .black
//        bb.setTitleColor(.yellow, for: .normal)
//        bb.setTitle("點!!", for: .normal)
//        bb.setTitle("點下!!", for: .highlighted)
//        view.addSubview(bb)
//        bb.addTarget(self, action: #selector(ViewController.hitMe(thisButton:)), for: .touchUpInside)
        
//        let imageButton = UIButton(type: .custom)
//        imageButton.frame = CGRect(x: 0, y: 300, width: 114, height: 54)
//        imageButton.setImage(UIImage(named: "PlayButton"), for: .normal)
//        imageButton.setImage(UIImage(named: "PlayButtonPressed"), for: .highlighted)
//        view.addSubview(imageButton)
//        imageButton.addTarget(self, action: #selector(ViewController.hitMe(thisButton:)), for: .touchUpInside)
    }
}


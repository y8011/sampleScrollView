//
//  ImageViewController.swift
//  sampleScrollView
//
//  Created by yuka on 2018/06/05.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController
,UIScrollViewDelegate
{

    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 店長メソッド使うための宣言
        myScrollView.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(myScrollView!)
    }

    // 何をズームするのかを決めるメソッド
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return myImageView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

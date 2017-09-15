//
//  ViewController.swift
//  ItsuDaregame
//
//  Created by Maho Misumi on 2017/09/14.
//  Copyright © 2017年 Maho Misumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dareLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var doushitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前","一週間前","昨日","今日"]
    let dareArray: [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let dokoArray: [String] = ["僕が","大統領が","先生が","友達が"]
    let doushitaArray: [String] = ["叫んだ","演説した","怒った","踊った"]
    
    var index: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func change() {
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[index]
        dareLabel.text = dareArray[index]
        dokoLabel.text = dokoArray[index]
        doushitaLabel.text = doushitaArray[index]
        
        //インデックスの値を＋１する
        index = index + 1
        
        //インデックスの値が３になったら0に戻す
        if index > 3 {
            index = 0
        }
        
    }
    
    @IBAction func reset() {
        //それぞれのラベルを元に戻す
        itsuLabel.text = "----"
        dareLabel.text = "----"
        dokoLabel.text = "----"
        doushitaLabel.text = "----"
        
        //インデックスの値を０に戻す
        index = 0
        
        
    
    }
    
    @IBAction func random() {
        
        //乱数を作成してそれぞれのindexの中に入れる
        let itsuIndex = Int(arc4random_uniform(4))
        let dareIndex = Int(arc4random_uniform(4))
        let dokoIndex = Int(arc4random_uniform(4))
        let doushitaIndex = Int(arc4random_uniform(4))
        
        //コンソールに出力して、それぞれの値を確かめよう
        print("いつ: \(itsuIndex)")
        print("だれ: \(dareIndex)")
        print("どこ: \(dokoIndex)")
        print("どうした: \(doushitaIndex)")
        
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[itsuIndex]
        dareLabel.text = dareArray[dareIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        doushitaLabel.text = doushitaArray[doushitaIndex]
        

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


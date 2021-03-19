//
//  ViewController.swift
//  Pass_by_Value_ Test
//
//  Created by HIRO on 2021/03/16.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayTest1st: [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        self.tableView.reloadData()
    }
    func viewDidAppear() {
        self.tableView.reloadData()
    }
    
    //セルの個数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //配列の個数をリターン
        return arrayTest1st.count
    }
    
    //Table View CellのIdentifierを指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //変数の中身を作る
        cell.textLabel!.text = arrayTest1st[indexPath.row]
        //戻り値の設定（表示する中身)
        return cell
    }
}

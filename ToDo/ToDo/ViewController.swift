//
//  ViewController.swift
//  ToDo
//
//  Created by 김준철 on 3/26/24.
//

import UIKit

class TodoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // 데이터 모델 - 할 일 목록
    var todoList = [String]()
    
    // IBOutlet 연결
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var todoItemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableView 설정
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // 할 일 추가 버튼 액션
    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let newTodoItem = todoItemTextField.text, !newTodoItem.isEmpty else {
            return // 텍스트 필드가 비어있으면 추가하지 않음
        }
        
        // 할 일 목록에 추가
        todoList.append(newTodoItem)
        
        // 텍스트 필드 초기화
        todoItemTextField.text = ""
        
        // 테이블 뷰 리로드
        tableView.reloadData()
    }
    
    // UITableViewDataSource 프로토콜 메서드 - 테이블 뷰 섹션의 행 수 반환
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    // UITableViewDataSource 프로토콜 메서드 - 테이블 뷰 셀 설정
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text = todoList[indexPath.row]
        return cell
    }
}

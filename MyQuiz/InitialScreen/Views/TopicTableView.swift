//
//  TopicTableView.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 28.09.2024.
//

import Foundation
import UIKit

final class TopicTableView: UITableView {
    var presenter: InitialPresenterProtocol?
    
    var categories    = [String]()
    var topics        = [Topic]()
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TopicTableView {
    func updateTableView() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func topicButtonTapped(row: Int, section: Int) {
        let topic = topics.getTopicsByCategory(categories[section])[row]
        presenter?.topicTapped(with: topic)
    }
    
    func updateCategories(with categories: [String]) {
        self.categories = categories
        updateTableView()
    }
    
    func updateTopics(with topics: [Topic]) {
        self.topics = topics
        updateTableView()
    }
}

extension TopicTableView {
    private func configure() {
        delegate        = self
        dataSource      = self
        separatorStyle  = .none
        backgroundColor = Colors.backgroundColor
        showsVerticalScrollIndicator = false
        
        register(TopicCell.self, forCellReuseIdentifier: "topicCell")
    }
}

extension TopicTableView: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.getTopicsByCategory(categories[section]).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: "topicCell", for: indexPath) as! TopicCell
        
        cell.topicTapAction = { [weak self] in
            self?.topicButtonTapped(row: indexPath.row, section: indexPath.section)
        }
        
        let topic = topics.getTopicsByCategory(categories[indexPath.section])[indexPath.row]
        cell.setTopic(topic)
                
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell") as! TopicCell
        
        let section = categories[section]
        cell.setSection(section)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
}

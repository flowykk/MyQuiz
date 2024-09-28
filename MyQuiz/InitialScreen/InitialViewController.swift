//
//  InitialViewController.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation
import UIKit

// MARK: - InitialViewControllerProtocol
protocol InitialViewControllerProtocol: AnyObject {
    var presenter: InitialPresenterProtocol? { get set }
     
    var topicsAnswers: [Topic] { get set }
    
    var topics: [Topic] { get set }
    var categories: [String] { get set }
    
    func updateCategories(with categories: [String])
    func updateTopics(with topics: [Topic])
    func topicButtonTapped(row: Int, section: Int)
}

// MARK: - InitialViewControllerProtocol Implementation
final class InitialViewController: UIViewController, InitialViewControllerProtocol {
    weak var presenter: InitialPresenterProtocol?
    
    var topicsAnswers = [Topic]()
    var categories    = [String]()
    var topics        = [Topic]()
    
    private let topicsTableView = UITableView()
    
    private let resetStatsButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateTableView()
    }
}

// MARK: - class functions
extension InitialViewController {
    func updateCategories(with categories: [String]) {
        self.categories = categories
        updateTableView()
    }
    
    func updateTopics(with topics: [Topic]) {
        self.topics = topics
        updateTableView()
    }
    
    func topicButtonTapped(row: Int, section: Int) {
        let topic = topics.getTopicsByCategory(categories[section])[row]
        presenter?.topicTapped(with: topic)
    }
    
    @objc
    private func updateTableView() {
        DispatchQueue.main.async {
            self.topicsTableView.reloadData()
        }
    }
    
    @objc
    private func resetStatsButtonTapped() {
        presenter?.showClearDataAlert()
        updateTableView()
    }
    
    @objc
    private func settingsButtonTapped() {
        presenter?.settingsButtonTapped()
    }
}

// MARK: - UI Configuration
extension InitialViewController {
    private func configureUI() {
        view.backgroundColor = Colors.backgroundColor
        
        configureNavigationItem()
        configureTrashButton()
        
        configureResetStatsButton()
        configureTopicsTableView()
    }
    
    private func configureNavigationItem() {
        navigationItem.title = "FQuiz"
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:Colors.labelsColor!]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    
    private func configureTrashButton() {
        let largeFont     = UIFont.systemFont(ofSize: 15, weight: .bold)
        let configuration = UIImage.SymbolConfiguration(font: largeFont)
        let image         = UIImage(systemName: "gearshape.fill", withConfiguration: configuration)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: image,
            style: .plain,
            target: self,
            action: #selector(settingsButtonTapped))
        navigationItem.leftBarButtonItem?.tintColor = Colors.labelsColor
    }
    
    private func configureResetStatsButton() {
        resetStatsButton.setTitle("Очистить статистику", for: .normal)
        resetStatsButton.backgroundColor = .systemPink
        resetStatsButton.layer.cornerRadius = 15
        resetStatsButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        
        resetStatsButton.addTarget(self, action: #selector(resetStatsButtonTapped), for: .touchUpInside)
        
        view.addSubview(resetStatsButton)
        resetStatsButton.pinHorizontal(to: view, 15)
        resetStatsButton.pinTop(to: view.safeAreaLayoutGuide.topAnchor, 10)
        resetStatsButton.setHeight(45)
    }
    
    private func configureTopicsTableView() {
        topicsTableView.delegate        = self
        topicsTableView.dataSource      = self
        topicsTableView.separatorStyle  = .none
        topicsTableView.backgroundColor = Colors.backgroundColor
        topicsTableView.showsVerticalScrollIndicator = false
        
        topicsTableView.register(TopicCell.self, forCellReuseIdentifier: "topicCell")
        
        view.addSubview(topicsTableView)
        topicsTableView.pinHorizontal(to: view, 15)
        topicsTableView.pinTop(to: resetStatsButton.bottomAnchor, 5)
        topicsTableView.pinBottom(to: view)
    }
}

extension InitialViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.getTopicsByCategory(categories[section]).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath) as! TopicCell
        
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

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
}

// MARK: - InitialViewControllerProtocol Implementation
final class InitialViewController: UIViewController, InitialViewControllerProtocol {
weak var presenter: InitialPresenterProtocol?
    
    var topicsAnswers = [Topic]()
    
    private let topicsTableView = TopicTableView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicsTableView.presenter = presenter
        presenter?.topicsTableView = topicsTableView
        
        presenter?.fetchData()
        configureUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        configureTopicsTableView()
        topicsTableView.updateTableView()
    }
}

// MARK: - class functions
extension InitialViewController {
    @objc
    private func trashButtonTapped() {
        presenter?.showClearDataAlert()
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
        configureSettingsButton()
        configureTrashButton()
        
        configureTopicsTableView()
    }
    
    private func configureNavigationItem() {
        navigationItem.title = "FQuiz"
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:Colors.labelsColor!]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    
    private func configureSettingsButton() {
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
    
    private func configureTrashButton() {
        let largeFont     = UIFont.systemFont(ofSize: 15, weight: .bold)
        let configuration = UIImage.SymbolConfiguration(font: largeFont)
        let image         = UIImage(systemName: "trash.fill", withConfiguration: configuration)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: image,
            style: .plain,
            target: self,
            action: #selector(trashButtonTapped))
        navigationItem.rightBarButtonItem?.tintColor = Colors.labelsColor
    }
    
    private func configureTopicsTableView() {
        view.addSubview(topicsTableView)
        topicsTableView.pinHorizontal(to: view, 15)
        topicsTableView.pinVertical(to: view)
    }
}

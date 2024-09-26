//
//  TopicCell.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 24.09.2024.
//

import Foundation
import UIKit

// MARK: - CustomCell for TopicTableView
final class TopicCell: UITableViewCell {
    var topic = Topic()
    
    private let sectionView  = UIView()
    private let sectionLabel = UILabel()
    
    private let topicView   = UIView()
    private let topicLabel  = UILabel()
    private let progressBar = UIProgressView()
    
    private let correctAnswersLabel = UILabel()
    private let questionsCountLabel = UILabel()
    
    var topicTapAction: (() -> Void)?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureTapGesture()
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setSection(_ section: String) {
        sectionLabel.text = section
        configureSection()
    }
    
    func setTopic(_ topic: Topic) {
        self.topic = topic
        configureTopic()
    }
}

extension TopicCell {
    @objc
    private func handleTapOnPlayer(sender: UITapGestureRecognizer) {
        let location = sender.location(in: self)
        if topicView.frame.contains(location) {
            topicTapAction?()
        }
    }
}

extension TopicCell {
    private func configureUI() {
        self.selectionStyle = .none
        self.backgroundColor = Colors.backgroundColor?.withAlphaComponent(0)
    }
    
    private func configureSection() {
        configureSectionView()
        configureSectionLabel()
    }
    
    private func configureTopic() {
        configureTopicView()
        configureTopicLabel()
        configureProgressBar()
        
        configureQuestionsCountLabel()
        configureCorrectAnswersLabel()
    }
    
    private func configureTopicView() {
        topicView.backgroundColor    = .systemGray6
        topicView.layer.cornerRadius = 15
        
        contentView.addSubview(topicView)
        topicView.pinHorizontal(to: self)
        topicView.pinVertical(to: self, 2)
    }
    
    private func configureTopicLabel() {
        topicLabel.text          = topic.name
        topicLabel.textAlignment = .left
        topicLabel.font          = .systemFont(ofSize: 16, weight: .medium)
        topicLabel.textColor     = Colors.labelsColor
        
        topicView.addSubview(topicLabel)
        topicLabel.pinTop(to: topicView.topAnchor, 10)
        topicLabel.pinLeft(to: topicView.leadingAnchor, 10)
    }
    
    private func configureProgressBar() {
        progressBar.progress           = Float(100 * topic.correctAnswers / topic.getQuestions().count) / 100
        progressBar.tintColor          = Colors.correctColor
        progressBar.trackTintColor     = .systemGray4
        progressBar.layer.cornerRadius = 4
        
        topicView.addSubview(progressBar)
        progressBar.pinTop(to: topicLabel.bottomAnchor, 5)
        progressBar.pinHorizontal(to: topicView, 10)
        progressBar.setHeight(8)
    }
    
    private func configureQuestionsCountLabel() {
        questionsCountLabel.text          = String(topic.getQuestions().count)
        questionsCountLabel.textAlignment = .right
        questionsCountLabel.font          = .systemFont(ofSize: 16, weight: .semibold)
        questionsCountLabel.textColor     = Colors.labelsColor
        
        topicView.addSubview(questionsCountLabel)
        questionsCountLabel.pinTop(to: topicView.topAnchor, 10)
        questionsCountLabel.pinRight(to: topicView.trailingAnchor, 10)
        questionsCountLabel.setWidth(25)
    }
    
    private func configureCorrectAnswersLabel() {
        correctAnswersLabel.text          = String(topic.correctAnswers)
        correctAnswersLabel.textColor     = Colors.correctColor
        correctAnswersLabel.textAlignment = .right
        correctAnswersLabel.font          = .systemFont(ofSize: 16, weight: .semibold)
        
        topicView.addSubview(correctAnswersLabel)
        correctAnswersLabel.pinTop(to: topicView.topAnchor, 10)
        correctAnswersLabel.pinRight(to: questionsCountLabel.leadingAnchor, 5)
    }
    
    private func configureSectionView() {
        sectionView.backgroundColor    = .systemYellow
        sectionView.layer.cornerRadius = 15
        
        contentView.addSubview(sectionView)
        sectionView.pin(to: self)
    }
    
    private func configureSectionLabel() {
        sectionLabel.textAlignment = .center
        sectionLabel.font          = .systemFont(ofSize: 18, weight: .semibold)
        sectionLabel.textColor     = .darkGray
        
        sectionView.addSubview(sectionLabel)
        sectionLabel.pin(to: sectionView)
    }
}

extension TopicCell {
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapOnPlayer))
        addGestureRecognizer(tapGesture)
    }
}

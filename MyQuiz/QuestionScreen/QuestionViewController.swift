//
//  QuestionViewController.swift
//  MyQuiz
//
//  Created by Данила Рахманов on 23.09.2024.
//

import Foundation
import UIKit

// MARK: - QuestionViewControllerProtocol
protocol QuestionViewControllerProtocol: AnyObject {
    var presenter: QuestionPresenterProtocol? { get set }
    
    var questions: [Question] { get set }
    var topic: Topic { get set }
    
    var currentQuestionOptions: [String] { get set }
    var currentQuestionIndex: Int { get set }
    var correctAnswers: Int { get set }
    var incorrectAnswers: Int { get set }
    var isAnswered: Bool { get set }
    
    func setTopic(topic: Topic)
    func setQuestions(with questions: [Question])
    
    func updateCountingLabels()
    func reset()
    func next()
    func resetTest()
}

// MARK: - QuestionViewControllerProtocol Implementation
final class QuestionViewController: UIViewController, QuestionViewControllerProtocol {
    weak var presenter: QuestionPresenterProtocol?
    
    var questions = [Question]()
    var topic = Topic()
    
    var currentQuestionOptions = [String]()
    var currentQuestionIndex = 0
    var correctAnswers = 0
    var incorrectAnswers = 0
    var isAnswered = false
    
    private let correctAnswersLabel = UILabel()
    private let incorrectAnswersLabel = UILabel()
    private let questionCountLabel = UILabel()
    private let progressBar = UIProgressBar()
    
    private let questionImageView = UIImageView()
    private let questionLabel = UILabel()
    private var optionButtons: [UIButton] = (0..<4).map { _ in UIButton(type: .system) }
    
    private var heightImageConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - class functions
extension QuestionViewController {
    func setQuestions(with questions: [Question]) {
        self.questions = questions
        self.questions.shuffle()
                
        progressBar.maxValue = CGFloat(self.questions.count)
        questionCountLabel.text = "0/\(self.questions.count)"
        
        configureUI()
        loadQuestion()
    }
    
    func setTopic(topic: Topic) {
        self.topic = topic
        navigationItem.title = topic.name
    }
    
    func loadQuestion() {
        guard currentQuestionIndex < questions.count else {
            presenter?.showStopTestAlert()
            return
        }
        
        let question = questions[currentQuestionIndex]
        updateQuestionLabel()
        updateQuestionImageView(by: question)
        updateQuestionOptions(by: question)
        updateOptionButtons()
        updateStatisticsLabels()
        
        isAnswered = false
        reset()
    }
    
    func next() {
        currentQuestionIndex += 1
        progressBar.progress += 1
        
        loadQuestion()
    }
    
    func reset() {
        for button in optionButtons {
            button.backgroundColor = .systemGray5
            button.isEnabled       = true
        }
    }
        
    func resetTest() {
        currentQuestionIndex = 0
        correctAnswers       = 0
        incorrectAnswers     = 0
        progressBar.progress = 0
        questions.shuffle()
        
        loadQuestion()
    }
    
    func updateCountingLabels() {
        correctAnswersLabel.text   = "\(correctAnswers)"
        incorrectAnswersLabel.text = "\(incorrectAnswers)"
    }
    
    @objc
    private func optionSelected(_ sender: UIButton) {
        guard let receivedAnswer = sender.title(for: .normal) else { return }
        
        guard let isCorrect = presenter?.optionSelected(withAnswer: receivedAnswer) else { return }
        if isCorrect {
            sender.backgroundColor = Colors.correctColor
        } else {
            sender.backgroundColor = .systemRed
        }
        
        for button in optionButtons {
            button.isEnabled = false
        }
        
        isAnswered = true
        presenter?.showAlert(helpText: questions[currentQuestionIndex].helpText, isCorrect: isCorrect)
    }
    
    @objc
    private func backButtonTapped() {
        presenter?.showQuitTestAlert()
        presenter?.backButtonTapped()
    }
    
    @objc
    private func infoButtonTapped() {
        presenter?.infoButtonTapped(with: questions[currentQuestionIndex].helpText)
    }
}

// MARK: - UI Configuration
extension QuestionViewController {
    private func configureUI() {
        view.backgroundColor = Colors.backgroundColor
        
        configureNavigationItem()
        configureBackButton()
        configureInfoButton()
        
        configureQuestionCountLabel()
        configureCorrectAnswersLabel()
        configureIncorrectAnswersLabel()
        configureProgressBar()
        
        configureQuestionImageView()
        configureQuestionLabel()
        configureOptionButtons()
    }
    
    private func configureNavigationItem() {
        navigationItem.hidesBackButton = true
    }
    
    private func configureBackButton() {
        let largeFont     = UIFont.systemFont(ofSize: 16, weight: .black)
        let configuration = UIImage.SymbolConfiguration(font: largeFont)
        let image         = UIImage(systemName: "chevron.left", withConfiguration: configuration)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: image,
            style: .plain,
            target: self,
            action: #selector(backButtonTapped))
        navigationItem.leftBarButtonItem?.tintColor = Colors.labelsColor
    }
    
    private func configureInfoButton() {
        let largeFont     = UIFont.systemFont(ofSize: 16, weight: .black)
        let configuration = UIImage.SymbolConfiguration(font: largeFont)
        let image         = UIImage(systemName: "info.circle", withConfiguration: configuration)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: image,
            style: .plain,
            target: self,
            action: #selector(infoButtonTapped))
        navigationItem.rightBarButtonItem?.tintColor = Colors.labelsColor
    }
    
    private func configureQuestionImageView() {
        questionImageView.image = UIImage(named: "placeholder")
        questionImageView.layer.masksToBounds = true
        questionImageView.layer.cornerRadius  = 30
        questionImageView.layer.borderWidth   = 3
        questionImageView.layer.borderColor   = UIColor.systemGray6.cgColor
        
        let width = UIScreen.main.bounds.width * 0.90
        let height = getHeight(forImage: questionImageView.image!)
        
        view.addSubview(questionImageView)
        questionImageView.pinTop(to: progressBar.bottomAnchor, 25)
        questionImageView.pinCenterX(to: view.centerXAnchor)
        questionImageView.setWidth(width)
        
        heightImageConstraint = questionImageView.heightAnchor.constraint(equalToConstant: height)
    }
    
    private func configureCorrectAnswersLabel() {
        correctAnswersLabel.text = "0"
        correctAnswersLabel.textColor     = Colors.correctColor
        correctAnswersLabel.textAlignment = .left
        correctAnswersLabel.numberOfLines = 0
        
        correctAnswersLabel.font = .systemFont(ofSize: 16, weight: .bold)
        
        view.addSubview(correctAnswersLabel)
        correctAnswersLabel.pinTop(to: view.safeAreaLayoutGuide.topAnchor, 5)
        correctAnswersLabel.pinLeft(to: view.leadingAnchor, 20)
        correctAnswersLabel.setWidth(50)
        correctAnswersLabel.setHeight(20)
    }
    
    private func configureIncorrectAnswersLabel() {
        incorrectAnswersLabel.text = "0"
        incorrectAnswersLabel.textColor     = .systemRed
        incorrectAnswersLabel.textAlignment = .right
        incorrectAnswersLabel.numberOfLines = 0
        
        incorrectAnswersLabel.font = .systemFont(ofSize: 16, weight: .bold)
        
        view.addSubview(incorrectAnswersLabel)
        incorrectAnswersLabel.pinTop(to: view.safeAreaLayoutGuide.topAnchor, 5)
        incorrectAnswersLabel.pinRight(to: view.trailingAnchor, 20)
        incorrectAnswersLabel.setWidth(50)
        incorrectAnswersLabel.setHeight(20)
    }
    
    private func configureQuestionCountLabel() {
        questionCountLabel.textColor     = Colors.labelsColor
        questionCountLabel.textAlignment = .center
        questionCountLabel.numberOfLines = 0
        
        questionCountLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        
        view.addSubview(questionCountLabel)
        questionCountLabel.pinTop(to: view.safeAreaLayoutGuide.topAnchor, 5)
        questionCountLabel.pinCenterX(to: view.centerXAnchor)
        questionCountLabel.setWidth(50)
        questionCountLabel.setHeight(20)
    }
    
    private func configureProgressBar() {
        view.addSubview(progressBar)
        progressBar.pinTop(to: questionCountLabel.bottomAnchor, 5)
        progressBar.pinCenterX(to: view.centerXAnchor)
    }
    
    private func configureQuestionLabel() {
        questionLabel.textColor     = Colors.labelsColor
        questionLabel.textAlignment = .center
        questionLabel.numberOfLines = 0
        
        questionLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        
        view.addSubview(questionLabel)
        questionLabel.pinTop(to: questionImageView.bottomAnchor, 25)
        questionLabel.pinHorizontal(to: view, 20)
    }
    
    private func configureOptionButtons() {
        let stackView     = UIStackView(arrangedSubviews: optionButtons)
        stackView.axis    = .vertical
        stackView.spacing = 10
        
        for button in optionButtons {
            button.setTitleColor(Colors.labelsColor, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
            button.layer.cornerRadius = 10
            button.backgroundColor = .systemGray5
            
            button.addTarget(self, action: #selector(optionSelected(_:)), for: .touchUpInside)
            
            button.setHeight(50)
        }
        
        view.addSubview(stackView)
        stackView.pinTop(to: questionLabel.bottomAnchor, 20)
        stackView.pinHorizontal(to: view, 20)
    }
    
    private func getHeight(forImage image: UIImage) -> CGFloat {
        let width = UIScreen.main.bounds.width * 0.90
        let targetSize = CGSize(width: width, height: width)

        let widthScaleRatio = targetSize.width / image.size.width
        let heightScaleRatio = targetSize.height / image.size.height

        let scaleFactor = min(widthScaleRatio, heightScaleRatio)

        let scaledImageSize = CGSize(
            width: image.size.width * scaleFactor,
            height: image.size.height * scaleFactor
        )
        
        return scaledImageSize.height
    }
    
    private func updateQuestionLabel() {
        questionLabel.text = questions[currentQuestionIndex].question[0]
    }
    
    private func updateQuestionImageView(by question: Question) {
        questionImageView.image         = UIImage(named: question.image != "" ? question.image : "placeholder")
        heightImageConstraint?.constant = self.getHeight(forImage: questionImageView.image!)
        heightImageConstraint?.isActive = true
    }
    
    private func updateQuestionOptions(by question: Question) {
        currentQuestionOptions = [question.optionA, question.optionB, question.optionC, question.optionD]
        currentQuestionOptions.shuffle()
        currentQuestionOptions.removeEmptyStrings()
    }
    
    private func updateOptionButtons() {
        for button in optionButtons { button.isHidden = true }
        for (index, value) in currentQuestionOptions.enumerated() {
            optionButtons[index].setTitle(value, for: .normal)
            optionButtons[index].isHidden = false
        }
        configureOptionButtons()
    }
    
    private func updateStatisticsLabels() {
        correctAnswersLabel.text   = String(correctAnswers)
        incorrectAnswersLabel.text = String(incorrectAnswers)
        questionCountLabel.text    = "\(currentQuestionIndex + 1)/\(questions.count)"
    }
}

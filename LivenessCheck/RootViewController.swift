//
//  RootViewController.swift
//  LivenessCheck
//
//  Created by Alisher Baygazin on 29.05.2024.
//

import UIKit
import Liveness

class RootViewController: UIViewController {

    private let livenessViewController: LivenessViewController

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        livenessViewController = LivenessViewController(isRecordingEnabled: true)
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSubviews()
        setLayoutConstraints()
        stylize()
        setActions()
    }

    private func addSubviews() {
        addChild(livenessViewController)
        view.addSubview(livenessViewController.view)
        livenessViewController.didMove(toParent: self)
    }

    private func setLayoutConstraints() {
        var layoutConstraints = [NSLayoutConstraint]()

        livenessViewController.view.translatesAutoresizingMaskIntoConstraints = false
        layoutConstraints += [
            livenessViewController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            livenessViewController.view.leftAnchor.constraint(equalTo: view.leftAnchor),
            livenessViewController.view.rightAnchor.constraint(equalTo: view.rightAnchor),
            livenessViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]

        NSLayoutConstraint.activate(layoutConstraints)
    }

    private func stylize() {
        livenessViewController.view.backgroundColor = .clear
        livenessViewController.shouldSetMaxBrightness = true
    }

    private func setActions() {
        livenessViewController.delegate = self
        livenessViewController.dataSource = self
    }
}

extension RootViewController: LivenessDelegate {

    func liveness(didCaptureFaceIn image: UIImage) {
        print("didCaptureFaceIn")
    }

    func liveness(willPassAction action: LivenessAction) {
        print("willPassAction")
    }

    func liveness(didPassActionWith result: LivenessResult) {
        print("didPassActionWith")
    }

    func livenessDidSucceed() {
        print("livenessDidSucceed")
    }

    func liveness(didRecordVideoTo url: URL) {
        print("didRecordVideoTo")
    }
}

extension RootViewController: LivenessDataSource {

    func liveness(textForAlert alert: LivenessAlert) -> String? {
        defaultLiveness(textForAlert: alert)
    }

    func liveness(textForAction action: LivenessAction) -> String? {
        defaultLiveness(textForAction: action)
    }

    func liveness(descriptionTextForAction action: LivenessAction) -> String? {
        defaultLiveness(descriptionTextForAction: action)
    }

    func liveness(textForPassedAction action: LivenessAction) -> String? { defaultLiveness(textForPassedAction: action) }
}

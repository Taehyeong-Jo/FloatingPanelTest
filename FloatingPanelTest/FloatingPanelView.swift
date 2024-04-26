//
//  FloatingPanelView.swift
//  FloatingPanelTest
//
//  Created by Den Jo on 4/26/24.
//

import SwiftUI
import FloatingPanel

struct FloatingPanelView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> FloatingPanelController {
        let floatingPanelController = FloatingPanelController()
        let contentViewController = ContentViewController()
        floatingPanelController.set(contentViewController: contentViewController)
        floatingPanelController.track(scrollView: contentViewController.tableView)
        return floatingPanelController
    }
    
    func updateUIViewController(_ uiViewController: FloatingPanelController, context: Context) {
        // Update UI if needed
    }
}

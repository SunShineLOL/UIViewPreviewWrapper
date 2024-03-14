//
//  UIViewPreviewWrapper.swift
//  PreviewWrapper
//
//  Created by czn on 2024/3/13.
//

import SwiftUI
#if os(iOS)
/// 预览 UIViewController
public struct UIViewControllerPreviewWrapper<T: UIViewController>: UIViewControllerRepresentable {
    let viewController: T

    public init(_ viewControllerBuilder: @escaping () -> T) {
        viewController = viewControllerBuilder()
    }

    public func makeUIViewController(context: Context) -> T {
        return viewController
    }

    public func updateUIViewController(_ uiViewController: T, context: Context) {
        
    }
}

/// 预览 UIView
public struct UIViewPreviewWrapper<T: UIView>: UIViewRepresentable {

    let view: T
    public init(_ viewBuilder: @escaping () -> T) {
        view = viewBuilder()
    }

    public func makeUIView(context: Context) -> UIView {
        return view
    }

    public func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}
#endif

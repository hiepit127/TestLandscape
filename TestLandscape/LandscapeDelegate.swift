//
//  LockOrientation.swift
//
//  Created by hiepit99 on 20/07/2024.
//

import Foundation
import UIKit

public class LockOrientationManager {
    var orientationMark: UIInterfaceOrientationMask = .portrait
    var lastOrientation: UIInterfaceOrientationMask = .portrait
    
    private static let instance = LockOrientationManager()
    
    public static func getOrientation() -> UIInterfaceOrientationMask {
        return instance.orientationMark
    }
    
    init() {
        
    }
    
    deinit {
        
    }
    
    func getInterfaceOrientation() -> UIInterfaceOrientation {
        if let windowScence = getWindowScence() {
            return windowScence.interfaceOrientation
        }
        return .unknown
    }
    
    public static func isPortait() -> Bool {
        instance.getWindowScence()?.interfaceOrientation == .portrait

    }
    
    public static func lockToOrientation(newOrientation: UIInterfaceOrientation, using mask: UIInterfaceOrientationMask) {
        instance.orientationMark = mask
        if #available(iOS 16.0, *) {
            if let windowScence = instance.getWindowScence() {
                let windowScenceGeometry = UIWindowScene.GeometryPreferences.iOS(interfaceOrientations: mask)
                windowScence.requestGeometryUpdate(windowScenceGeometry) { error in
                    print("Update Geometry error : \(error.localizedDescription)")
                }
            }
        } else {
            UIDevice.current.setValue(UIInterfaceOrientation.unknown.rawValue, forKey: "orientation")
            UIDevice.current.setValue(newOrientation.rawValue, forKey: "orientation")
        }
        UIViewController.attemptRotationToDeviceOrientation()
    }
    
    func getWindowScence() -> UIWindowScene? {
        for scence in UIApplication.shared.connectedScenes {
            if let windowScence = scence as? UIWindowScene {
                return windowScence
            }
        }
        return nil
    }
}

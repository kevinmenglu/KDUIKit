//
//  KDCommonDefine.swift
//  KDUIKit
//
//  Created by 徐梦路 on 2018/11/23.
//

import Foundation
//import UIKit
//import SnapKit
//@_exported import KDUIKit

//MARK:屏幕尺寸
let KDScreenWidth : CGFloat = UIScreen.main.bounds.width
let KDScreenHeigth : CGFloat = UIScreen.main.bounds.height
let KDPortraitWidth : CGFloat = min(KDScreenWidth, KDScreenHeigth)//竖屏的宽度
let KDPortraitHeight : CGFloat = max(KDScreenHeigth, KDScreenWidth)//竖屏的高度
let KDRelativeIphone6WidthRatio : CGFloat = KDPortraitWidth / 375.0
let KDRelativeIphone6HeightRatio : CGFloat = KDPortraitHeight / 667.0
//MARK:以iphone6屏幕宽度为基准做等比例缩放
func KDAutoLayoutWidth(_ width: CGFloat) -> CGFloat {
    return width * KDRelativeIphone6WidthRatio;
}
//MARK:以iphone6屏幕高度为基准做等比例缩放
func KDAutoLayoutHeight(_ height: CGFloat) -> CGFloat {
    return KDRelativeIphone6HeightRatio * height;
}

/// 是否为小尺寸设备，这里主要指iphone4和5
let KDSmallDevice : Bool = KDPortraitWidth < 375


//MARK:颜色相关
func KDColor(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}

func KDColor(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, a: CGFloat) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

func KDColorWithHexValue(_ hexValue: UInt32) -> UIColor {
    //return UIColor.kdColor(withHex: hexValue)
    return UIColor.kdColorWithHex(hexValue)
}

func KDColorWithHexValueAndAlpha(_ hexValue: UInt32, _ alphaValue: CGFloat) -> UIColor {
    return UIColor.kdColor(withHex: hexValue, andAlpha: alphaValue)
}

let KDWhiteColor : UIColor = UIColor.white
let KDBlackColor : UIColor = UIColor.black
let KDClearColor : UIColor = UIColor.clear
let KDRedColor : UIColor = UIColor.red
let KDCyanColor : UIColor = KDColor(80,227,194)//青色
let KDGrayColor : UIColor = KDColor(163,163,163)//灰色

//MARK:字体相关
func KDSystemFont(_ fontSize: CGFloat) -> UIFont {
    return UIFont.systemFont(ofSize: fontSize)
}

func KDSystemBoldFont(_ fontSize: CGFloat) -> UIFont {
    return UIFont.boldSystemFont(ofSize: fontSize)
}

func KDThinFont(_ fontSize: CGFloat) -> UIFont {
    return KDUtilities.shareInstance().customThinFont(fontSize);
}

func KDLightFont(_ fontSize: CGFloat) -> UIFont {
    return KDUtilities.shareInstance().customLightFont(fontSize)
}

func KDRegularFont(_ fontSize: CGFloat) -> UIFont {
    return KDUtilities.shareInstance().customRegularFont(fontSize)
}

func KDMediumFont(_ fontSize: CGFloat) -> UIFont {
    return KDUtilities.shareInstance().customMediumFont(fontSize)
}

func KDSemiboldFont(_ fontSize: CGFloat) -> UIFont {
    return KDUtilities.shareInstance().customSemiboldFont(fontSize)
}



//MARK:获取图片相关
func KDGetImage(_ imageName: String) -> UIImage? {
    return UIImage(named: imageName)
}

func KDGetImageRenderInOriginal(_ imageName: String) -> UIImage? {
    return UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
}



//MARK:空指针保护
func NilToNULL(_ obj: AnyObject?) -> AnyObject {
    if let opionalNilObj = obj {
        return opionalNilObj
    }else{
        return NSNull()
    }
}

func NULLToNil(_ obj: AnyObject?) -> AnyObject? {
    if obj is NSNull {
        return nil
    }else{
        return obj
    }
}

//MARK:其他

let KDFileManager: FileManager = FileManager.default
let KDSystemVersion: Double =  Double(UIDevice.current.systemVersion)!
let KDNotificationCenter: NotificationCenter = NotificationCenter.default

func KDClassFromString(_ className: String) -> AnyClass? {
    guard let spaceName = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else {
        return NSClassFromString("")
    }
    let typeClass: AnyClass? = NSClassFromString(spaceName + "." + className)
    return typeClass
    
}

let KDBuildVersion = Bundle.main.infoDictionary!["CFBundleVersion"]
let KDBundleVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"]
let KDAppName = Bundle.main.infoDictionary!["CFBundleDisplayName"]








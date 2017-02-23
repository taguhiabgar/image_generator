//
//  Renderer.swift
//  ImageGenerator
//
//  Created by Taguhi Abgaryan on 2/23/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

struct RGBColor {
    var alpha: UInt8 = 0
    var red: UInt8 = 0
    var green: UInt8 = 0
    var blue: UInt8 = 0
}

class Renderer {
    
    public static func generateRandomImage(width: Int, height: Int) -> UIImage? {
        return imageFromPixelData(pixels: Renderer.randomPixelData(width: width, height: height), width: width, height: height)
    }
    
    private static func randomPixelData(width: Int, height: Int) -> [RGBColor] {
        var data = [RGBColor]()
        for _ in 0..<width * height {
            let colorsNumber = UInt32(UInt8.max)
            let a = arc4random() % colorsNumber
            let r = arc4random() % colorsNumber
            let g = arc4random() % colorsNumber
            let b = arc4random() % colorsNumber
            let pixel = RGBColor(alpha: UInt8(a), red: UInt8(r), green: UInt8(g), blue: UInt8(b))
            data.append(pixel)
        }
        return data
    }
    
    private static func imageFromPixelData(pixels: [RGBColor], width: Int, height: Int) -> UIImage? {
        let rgbColorSpace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo:CGBitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedFirst.rawValue)
        let bitsPerComponent = 8
        let bitsPerPixel = 32
        assert(pixels.count == Int(width * height))
        var data = pixels // to make it mutable
        let dataLength = data.count * MemoryLayout<RGBColor>.size
        let providerRef = CGDataProvider(data: NSData(bytes: &data, length: dataLength))
        let image = CGImage(
            width: width,
            height: height,
            bitsPerComponent: bitsPerComponent,
            bitsPerPixel: bitsPerPixel,
            bytesPerRow: width * Int(MemoryLayout<RGBColor>.size),
            space: rgbColorSpace,
            bitmapInfo: bitmapInfo,
            provider: providerRef!,
            decode: nil,
            shouldInterpolate: true,
            intent: .defaultIntent
        )
        return UIImage(cgImage: image!)
    }
    
    private static func message(_ message: String) -> String {
        return "Renderer: \(message)"
    }
}


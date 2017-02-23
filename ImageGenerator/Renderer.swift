//
//  Renderer.swift
//  ImageGenerator
//
//  Created by Taguhi Abgaryan on 2/23/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

class Renderer {
    struct PixelData {
        var a: UInt8 = 0
        var r: UInt8 = 0
        var g: UInt8 = 0
        var b: UInt8 = 0
    }
    
    public static func generateRandomImage(width: Int, height: Int) -> UIImage? {
        return imageFromPixelData(pixels: Renderer.randomPixelData(width: width, height: height), width: width, height: height)
    }
    
    private static func randomPixelData(width: Int, height: Int) -> [PixelData] {
        var data = [PixelData]()
        for _ in 0..<width * height {
            let colorsNumber = UInt32(UInt8.max)
            let a = arc4random() % colorsNumber
            let r = arc4random() % colorsNumber
            let g = arc4random() % colorsNumber
            let b = arc4random() % colorsNumber
            let pixel = PixelData(a: UInt8(a), r: UInt8(r), g: UInt8(g), b: UInt8(b))
            data.append(pixel)
        }
        return data
    }
    
    private static func imageFromPixelData(pixels: [PixelData], width: Int, height: Int) -> UIImage? {
        assert(width > 0 && height > 0, Renderer.message("Width and Height are not supposed to be nil."))
        let pixelDataSize = MemoryLayout<PixelData>.size
        assert(pixelDataSize == 4 && pixels.count == Int(width * height))
        let data: Data = pixels.withUnsafeBufferPointer {
            return Data(buffer: $0)
        }
        let cfdata = NSData(data: data) as CFData
        let provider = CGDataProvider(data: cfdata)
        assert(provider != nil, Renderer.message("CGDataProvider is not supposed to be nil."))
        let cgimage: CGImage! = CGImage(
            width: width,
            height: height,
            bitsPerComponent: 8,
            bitsPerPixel: 32,
            bytesPerRow: width * pixelDataSize,
            space: CGColorSpaceCreateDeviceRGB(),
            bitmapInfo: CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedFirst.rawValue),
            provider: provider!,
            decode: nil,
            shouldInterpolate: true,
            intent: .defaultIntent
        )
        assert(cgimage != nil, Renderer.message("CGImage is not supposed to be nil."))
        return UIImage(cgImage: cgimage)
    }
    
    private static func message(_ message: String) -> String {
        return "Renderer: \(message)"
    }
}


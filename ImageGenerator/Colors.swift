//
//  Colors.swift
//  ImageGenerator
//
//  Created by Taguhi Abgaryan on 2/24/17.
//  Copyright © 2017 Taguhi Abgaryan. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1.0)
    }
}

struct ColorCollection {
    
    let key: String
    let mainColor: UIColor
    let colors: [UIColor]
    
}

class Colors {
    
    public static let collections = [
        allColorsCollection,
        blueCollection,
        magentaCollection,
        cyanCollection,
        greenCollection,
        grayCollection,
        maroonCollection,
        orangeCollection,
        pinkCollection,
        redCollection,
        whiteCollection,
        yellowCollection,
        purpleCollection,
        ]
    
    // MARK: - Collections
    
    public static let blueCollection = ColorCollection(key: "blue", mainColor: blue, colors: [
        aliceblue,
        lavender,
        powderblue,
        lightblue,
        lightskyblue,
        skyblue,
        deepskyblue,
        lightsteelblue,
        dodgerblue,
        cornflowerblue,
        steelblue,
        cadetblue,
        mediumslateblue,
        slateblue,
        darkslateblue,
        royalblue,
        blue,
        mediumblue,
        darkblue,
        navy,
        midnightblue,
        blueviolet,
        indigo,
        ])
    
    public static let magentaCollection = ColorCollection(key: "magenta", mainColor: magenta, colors: [
        magenta,
        fuchsia,
        darkmagenta,
        purple,
        indigo,
        ])
    
    public static let cyanCollection = ColorCollection(key: "cyan", mainColor: cyan, colors: [
        lightcyan,
        cyan,
        aqua,
        aquamarine,
        mediumaquamarine,
        paleturquoise,
        turquoise,
        mediumturquoise,
        darkturquoise,
        lightseagreen,
        cadetblue,
        darkcyan,
        teal,
        ])
    
    public static let greenCollection = ColorCollection(key: "green", mainColor: green, colors: [
        lawngreen,
        chartreuse,
        limegreen,
        lime,
        forestgreen,
        green,
        darkgreen,
        greenyellow,
        yellowgreen,
        springgreen,
        mediumspringgreen,
        lightgreen,
        palegreen,
        darkseagreen,
        mediumseagreen,
        lightseagreen,
        seagreen,
        olive,
        darkolivegreen,
        olivedrab,
        ])
    
    public static let grayCollection = ColorCollection(key: "gray", mainColor: gray, colors: [
        gainsboro,
        lightgray,
        silver,
        darkgray,
        gray,
        dimgray,
        lightslategray,
        slategray,
        darkslategray,
        black,
        ])
    
    public static let maroonCollection = ColorCollection(key: "maroon", mainColor: maroon, colors: [
        maroon,
        darkred,
        brown,
        firebrick,
        crimson,
        ])
    
    public static let orangeCollection = ColorCollection(key: "orange", mainColor: orange, colors: [
        coral,
        tomato,
        orangered,
        gold,
        orange,
        darkorange,
        ])
    
    public static let pinkCollection = ColorCollection(key: "pink", mainColor: pink, colors: [
        pink,
        lightpink,
        hotpink,
        deeppink,
        palevioletred,
        mediumvioletred,
        ])
    
    public static let redCollection = ColorCollection(key: "red", mainColor: red, colors: [
        lightsalmon,
        salmon,
        darksalmon,
        lightcoral,
        indianred,
        crimson,
        firebrick,
        red,
        darkred,
        maroon,
        tomato,
        orangered,
        palevioletred,
        ])
    
    public static let whiteCollection = ColorCollection(key: "white", mainColor: white, colors: [
        white,
        snow,
        honeydew,
        mintcream,
        azure,
        aliceblue,
        ghostwhite,
        whitesmoke,
        seashell,
        beige,
        oldlace,
        floralwhite,
        ivory,
        antiquewhite,
        linen,
        lavenderblush,
        mistyrose,
        navajowhite,
        ])
    
    public static let yellowCollection = ColorCollection(key: "yellow", mainColor: yellow, colors: [
        lightyellow,
        lemonchiffon,
        lightgoldenrodyellow,
        papayawhip,
        moccasin,
        peachpuff,
        palegoldenrod,
        khaki,
        darkkhaki,
        yellow,
        olive,
        greenyellow,
        yellowgreen,
        ])
    
    public static let purpleCollection = ColorCollection(key: "purple", mainColor: purple, colors: [
        lavender,
        thistle,
        plum,
        violet,
        orchid,
        fuchsia,
        magenta,
        mediumOrchid,
        mediumPurple,
        blueViolet,
        darkViolet,
        darkOrchid,
        darkMagenta,
        purple,
        indigo,
        ])
    
    public static let allColorsCollection = ColorCollection(key: "all", mainColor: black, colors: [
        lavender,
        thistle,
        plum,
        violet,
        orchid,
        fuchsia,
        magenta,
        mediumOrchid,
        mediumPurple,
        blueViolet,
        darkViolet,
        darkOrchid,
        darkMagenta,
        purple,
        indigo,
        aliceblue,
        powderblue,
        lightblue,
        lightskyblue,
        skyblue,
        deepskyblue,
        lightsteelblue,
        dodgerblue,
        cornflowerblue,
        steelblue,
        cadetblue,
        mediumslateblue,
        slateblue,
        darkslateblue,
        royalblue,
        blue,
        mediumblue,
        darkblue,
        navy,
        midnightblue,
        blueviolet,
        darkmagenta,
        lightcyan,
        cyan,
        aqua,
        aquamarine,
        mediumaquamarine,
        paleturquoise,
        turquoise,
        mediumturquoise,
        darkturquoise,
        lightseagreen,
        darkcyan,
        teal,
        lawngreen,
        chartreuse,
        limegreen,
        lime,
        forestgreen,
        green,
        darkgreen,
        greenyellow,
        yellowgreen,
        springgreen,
        mediumspringgreen,
        lightgreen,
        palegreen,
        darkseagreen,
        mediumseagreen,
        seagreen,
        olive,
        darkolivegreen,
        olivedrab,
        gainsboro,
        lightgray,
        silver,
        darkgray,
        gray,
        dimgray,
        lightslategray,
        slategray,
        darkslategray,
        black,
        maroon,
        darkred,
        brown,
        firebrick,
        crimson,
        coral,
        tomato,
        orangered,
        gold,
        orange,
        darkorange,
        pink,
        lightpink,
        hotpink,
        deeppink,
        palevioletred,
        mediumvioletred,
        lightsalmon,
        salmon,
        darksalmon,
        lightcoral,
        indianred,
        red,
        white,  
        snow,  
        honeydew,  
        mintcream,  
        azure,  
        ghostwhite,  
        whitesmoke,  
        seashell,  
        beige,  
        oldlace,  
        floralwhite,  
        ivory,  
        antiquewhite,  
        linen,  
        lavenderblush,  
        mistyrose,  
        navajowhite,
        lightyellow,  
        lemonchiffon,  
        lightgoldenrodyellow,  
        papayawhip,  
        moccasin,  
        peachpuff,  
        palegoldenrod,  
        khaki,  
        darkkhaki,  
        yellow,
        ])
    
    // MARK: - Colors
    
    // --- Purple ---
    private static let lavender = UIColor.rgb(230,230,250)
    private static let thistle = UIColor.rgb(216,191,216)
    private static let plum = UIColor.rgb(221,160,221)
    private static let violet = UIColor.rgb(238,130,238)
    private static let orchid = UIColor.rgb(218,112,214)
    private static let fuchsia = UIColor.rgb(255,0,255)
    private static let magenta = UIColor.rgb(255,0,255)
    private static let mediumOrchid = UIColor.rgb(186,85,211)
    private static let mediumPurple = UIColor.rgb(147,112,219)
    private static let blueViolet = UIColor.rgb(138,43,226)
    private static let darkViolet = UIColor.rgb(148,0,211)
    private static let darkOrchid = UIColor.rgb(153,50,204)
    private static let darkMagenta = UIColor.rgb(139,0,139)
    private static let purple = UIColor.rgb(128,0,128)
    private static let indigo = UIColor.rgb(75,0,130)
    
    // Blue
    private static let aliceblue =  UIColor.rgb(240,248,255)
    private static let powderblue =  UIColor.rgb(176,224,230)
    private static let lightblue =  UIColor.rgb(173,216,230)
    private static let lightskyblue =  UIColor.rgb(135,206,250)
    private static let skyblue =  UIColor.rgb(135,206,235)
    private static let deepskyblue =  UIColor.rgb(0,191,255)
    private static let lightsteelblue =  UIColor.rgb(176,196,222)
    private static let dodgerblue =  UIColor.rgb(30,144,255)
    private static let cornflowerblue =  UIColor.rgb(100,149,237)
    private static let steelblue =  UIColor.rgb(70,130,180)
    private static let cadetblue =  UIColor.rgb(95,158,160)
    private static let mediumslateblue =  UIColor.rgb(123,104,238)
    private static let slateblue =  UIColor.rgb(106,90,205)
    private static let darkslateblue =  UIColor.rgb(72,61,139)
    private static let royalblue =  UIColor.rgb(65,105,225)
    private static let blue =  UIColor.rgb(0,0,255)
    private static let mediumblue =  UIColor.rgb(0,0,205)
    private static let darkblue =  UIColor.rgb(0,0,139)
    private static let navy =  UIColor.rgb(0,0,128)
    private static let midnightblue =  UIColor.rgb(25,25,112)
    private static let blueviolet =  UIColor.rgb(138,43,226)
    
    // Magenta
    private static let darkmagenta =  UIColor.rgb(139,0,139)
    
    // Cyan
    private static let lightcyan =  UIColor.rgb(224,255,255)
    private static let cyan =  UIColor.rgb(0,255,255)
    private static let aqua =  UIColor.rgb(0,255,255)
    private static let aquamarine =  UIColor.rgb(127,255,212)
    private static let mediumaquamarine =  UIColor.rgb(102,205,170)
    private static let paleturquoise =  UIColor.rgb(175,238,238)
    private static let turquoise =  UIColor.rgb(64,224,208)
    private static let mediumturquoise =  UIColor.rgb(72,209,204)
    private static let darkturquoise =  UIColor.rgb(0,206,209)
    private static let lightseagreen =  UIColor.rgb(32,178,170)
    private static let darkcyan =  UIColor.rgb(0,139,139)
    private static let teal =  UIColor.rgb(0,128,128)
    
    // Green
    private static let lawngreen =  UIColor.rgb(124,252,0)
    private static let chartreuse = UIColor.rgb(127,255,0)
    private static let limegreen =  UIColor.rgb(50,205,50)
    private static let lime =  UIColor.rgb(0,255,0)
    private static let forestgreen =  UIColor.rgb(34,139,34)
    private static let green =  UIColor.rgb(0,128,0)
    private static let darkgreen =  UIColor.rgb(0,100,0)
    private static let greenyellow =  UIColor.rgb(173,255,47)
    private static let yellowgreen =  UIColor.rgb(154,205,50)
    private static let springgreen =  UIColor.rgb(0,255,127)
    private static let mediumspringgreen =  UIColor.rgb(0,250,154)
    private static let lightgreen =  UIColor.rgb(144,238,144)
    private static let palegreen =  UIColor.rgb(152,251,152)
    private static let darkseagreen =  UIColor.rgb(143,188,143)
    private static let mediumseagreen =  UIColor.rgb(60,179,113)
    private static let seagreen =  UIColor.rgb(46,139,87)
    private static let olive =  UIColor.rgb(128,128,0)
    private static let darkolivegreen =  UIColor.rgb(85,107,47)
    private static let olivedrab =  UIColor.rgb(107,142,35)
    
    // Grey
    private static let gainsboro =  UIColor.rgb(220,220,220)
    private static let lightgray =  UIColor.rgb(211,211,211)
    private static let silver =  UIColor.rgb(192,192,192)
    private static let darkgray =  UIColor.rgb(169,169,169)
    private static let gray =  UIColor.rgb(128,128,128)
    private static let dimgray =  UIColor.rgb(105,105,105)
    private static let lightslategray =  UIColor.rgb(119,136,153)
    private static let slategray =  UIColor.rgb(112,128,144)
    private static let darkslategray =  UIColor.rgb(47,79,79)
    private static let black = UIColor.rgb(0,0,0)
    
    // Maroon
    private static let maroon = UIColor.rgb(128,0,0)
    private static let darkred = UIColor.rgb(139,0,0)
    private static let brown = UIColor.rgb(165,42,42)
    private static let firebrick = UIColor.rgb(178,34,34)
    private static let crimson = UIColor.rgb(220,20,60)
    
    // Orange
    private static let coral =  UIColor.rgb(255,127,80)
    private static let tomato =  UIColor.rgb(255,99,71)
    private static let orangered =  UIColor.rgb(255,69,0)
    private static let gold =  UIColor.rgb(255,215,0)
    private static let orange =  UIColor.rgb(255,165,0)
    private static let darkorange =  UIColor.rgb(255,140,0)
    
    // Pink
    private static let pink =  UIColor.rgb(255,192,203)
    private static let lightpink =  UIColor.rgb(255,182,193)
    private static let hotpink =  UIColor.rgb(255,105,180)
    private static let deeppink =  UIColor.rgb(255,20,147)
    private static let palevioletred =  UIColor.rgb(219,112,147)
    private static let mediumvioletred =  UIColor.rgb(199,21,133)
    
    // Red
    private static let lightsalmon = UIColor.rgb(255,160,122)
    private static let salmon = UIColor.rgb(250,128,114)
    private static let darksalmon = UIColor.rgb(233,150,122)
    private static let lightcoral = UIColor.rgb(240,128,128)
    private static let indianred = UIColor.rgb(205,92,92)
    private static let red = UIColor.rgb(255,0,0)
    
    // White
    private static let white =  UIColor.rgb(255,255,255)
    private static let snow =  UIColor.rgb(255,250,250)
    private static let honeydew =  UIColor.rgb(240,255,240)
    private static let mintcream =  UIColor.rgb(245,255,250)
    private static let azure =  UIColor.rgb(240,255,255)
    private static let ghostwhite =  UIColor.rgb(248,248,255)
    private static let whitesmoke =  UIColor.rgb(245,245,245)
    private static let seashell =  UIColor.rgb(255,245,238)
    private static let beige =  UIColor.rgb(245,245,220)
    private static let oldlace =  UIColor.rgb(253,245,230)
    private static let floralwhite =  UIColor.rgb(255,250,240)
    private static let ivory =  UIColor.rgb(255,255,240)
    private static let antiquewhite =  UIColor.rgb(250,235,215)
    private static let linen =  UIColor.rgb(250,240,230)
    private static let lavenderblush =  UIColor.rgb(255,240,245)
    private static let mistyrose =  UIColor.rgb(255,228,225)
    private static let navajowhite =  UIColor.rgb(255,222,173)
    
    // Yellow
    private static let lightyellow =  UIColor.rgb(255,255,224)
    private static let lemonchiffon =  UIColor.rgb(255,250,205)
    private static let lightgoldenrodyellow =  UIColor.rgb(250,250,210)
    private static let papayawhip =  UIColor.rgb(255,239,213)
    private static let moccasin =  UIColor.rgb(255,228,181)
    private static let peachpuff =  UIColor.rgb(255,218,185)
    private static let palegoldenrod =  UIColor.rgb(238,232,170)
    private static let khaki =  UIColor.rgb(240,230,140)
    private static let darkkhaki =  UIColor.rgb(189,183,107)
    private static let yellow =  UIColor.rgb(255,255,0)

}


 

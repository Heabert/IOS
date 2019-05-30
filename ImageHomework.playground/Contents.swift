import UIKit
var str = "Hello, playground"

let Building = UIImage(named: "Building.jpg")!
let Car = UIImage(named: "Car.jpg")!
let Marvel = UIImage(named: "Marvel.jpg")!
let Raptors = UIImage(named: "raptors.png")!
let RM = UIImage(named: "RM.jpg")!





func BlurFilterExample(Building: UIImage) -> UIImage {
    // convert UIImage to CIImage
    let inputCIImage = CIImage(image: Building)!
    
    
    // Create Blur CIFilter, and set the input image
    let blurFilter = CIFilter(name: "CIGaussianBlur")!
    blurFilter.setValue(inputCIImage, forKey: kCIInputImageKey)
    blurFilter.setValue(8, forKey: kCIInputRadiusKey)
    let context = CIContext(options: nil)
    
    // Get the filtered output image and return it
    if let output = blurFilter.outputImage{
        if let ciImg = context.createCGImage(output, from:output.extent)
        {
            let finalResult = UIImage(cgImage: ciImg)
            return finalResult
            }
    }
    return Building
}



BlurFilterExample(Building: Building)

func invertFileterExample(Car: UIImage) -> UIImage{
    
    let inputCIImage = CIImage(image: Car)!
    
    let invertFilter = CIFilter(name: "CIColorInvert")!
    invertFilter.setValue(inputCIImage, forKey: kCIInputImageKey)
    let context = CIContext(options: nil)
    if let output = invertFilter.outputImage{
        if let ciImg = context.createCGImage(output, from:output.extent){
            let finalResult = UIImage(cgImage: ciImg)
            return finalResult
        }
    }
    return Car
}

invertFileterExample(Car: Car)

func halfFileterExample(Marvel: UIImage) -> UIImage{

    let inputCIImage = CIImage(image: Marvel)!
    
let halfTfilter = CIFilter(name: "CICMYKHalftone")!
halfTfilter.setValue(inputCIImage, forKey: kCIInputImageKey)
halfTfilter.setValue(25, forKey: kCIInputWidthKey)

let context = CIContext(options: nil)

    if let output = halfTfilter.outputImage{
        if let ciImg = context.createCGImage(output, from:output.extent)
        {
            let finalResult = UIImage(cgImage: ciImg)
            return finalResult
        }
    }
    return Marvel
}



halfFileterExample(Marvel: Marvel)

func EffectNoirExample(raptors: UIImage) -> UIImage{
    
    let inputCIImage = CIImage(image: raptors)!
    
    let EffectNoir = CIFilter(name: "CIPhotoEffectNoir")!
    EffectNoir.setValue(inputCIImage, forKey: kCIInputImageKey)
    
    let context = CIContext(options: nil)
    
    if let output = EffectNoir.outputImage{
        if let ciImg = context.createCGImage(output, from:output.extent)
        {
            let finalResult = UIImage(cgImage: ciImg)
            return finalResult
        }
    }
    return raptors
}

EffectNoirExample(raptors: Raptors)


func WdgeWorkExample(RM: UIImage) -> UIImage{
    
    let inputCIImage = CIImage(image: RM)!
    
    let WdgeWork = CIFilter(name: "CIEdgeWork")!
    WdgeWork.setValue(inputCIImage, forKey: kCIInputImageKey)
    WdgeWork.setValue(3.0, forKey: kCIInputRadiusKey)
    
    let context = CIContext(options: nil)
    
    if let output = WdgeWork.outputImage{
        if let ciImg = context.createCGImage(output, from:output.extent)
        {
            let finalResult = UIImage(cgImage: ciImg)
            return finalResult
        }
    }
    return RM
}
WdgeWorkExample(RM: RM)

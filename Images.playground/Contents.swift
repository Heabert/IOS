import UIKit
// What is UI image?
// any raw image meaning jpg, png you use UI image to import or export..

// what is CI image
// Ci is the refrence for content (look) of that image. You use CI to modify the image.

//All stackic assests goes into the Resources folder
//all your classes, libaries, goes under Sources.
let inputImg = UIImage(named: "Dog.jpg")!
var str = "Hello, playground"

let rawImg = CIImage(image: inputImg)
//create a dictionary that will feed the fliter. the iput image will be the key and the value is the style.
//let sepiaParams: [String : Any] = [kCIInputImageKey : rawImg]
let CropParams: [String : Any] = [ kCIInputImageKey : rawImg, "inputSize" : CIVector(string:"[194 269]"), "inputCropAmount" : 1 , "inputCenterStretchAmount" : 1]
//DEFINE THE FLITER
//let sepiaFilter = CIFilter(name: "CIPhotoEffectNoir", parameters: sepiaParams)
let sepiaFilter = CIFilter(name: "CIStretchCrop", parameters: CropParams)
//create a conext for the UI to interact with the user, and it uses options for the paramters
let context = CIContext(options: nil)


if let output = sepiaFilter?.outputImage{
   if let ciImg = context.createCGImage(output, from:output.extent)
   {
    let finalResult = UIImage(cgImage: ciImg)
    }
}
// hOME WORK

// NEED FIVE FUNCTION THAT IMPLEMTNTS FIVE FILTERS? ALL THE FLITERS SHOULD TAKE ui IMAGE..

func BlurFilterExample(Building: UIImage) -> UIImage {
    // convert UIImage to CIImage
    let inputCIImage = CIImage(image: Building)!
    
    // Create Blur CIFilter, and set the input image
    let blurFilter = CIFilter(name: "CIGaussianBlur")!
    blurFilter.setValue(inputCIImage, forKey: kCIInputImageKey)
    blurFilter.setValue(8, forKey: kCIInputRadiusKey)
    
    // Get the filtered output image and return it
    if let output = sepiaFilter?.outputImage{
        if let ciImg = context.createCGImage(output, from:output.extent){
    
            let finalResult = UIImage(cgImage: ciImg)
        
// If
        return finalResult
        
        }
    }
       return Building
}


//Xcode project
//Create an application that the user can option to uploaod an image and can choice from a varity of filters and view it.
// back func from the filters, all thats needed is the user interface.

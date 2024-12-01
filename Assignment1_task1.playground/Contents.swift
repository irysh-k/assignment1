//#1

func rectangle () -> (width: Double, height: Double) {
    let width = 5.0
    let height = 3.0
    
    let area = width*height
    let perimeter = 2*(width + height)
    
    return (width: width, height: height)
}

print(rectangle())

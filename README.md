# ProgressAnimation
Simple circular progress bar animation that is used to show progress to the user.

# How to use
- Initialize a new instance of CircularProgressBar
let xPosition = view.center.x
let yPosition = view.center.y
let position = CGPoint(x: xPosition, y: yPosition)
let progresBar = CircularProgressBar(radius: 100, position: position, innerTrackColor: .defaultInnerColor, outerTrackColor: .defaultOuterColor, lineWidth: 20)
- Add to progressBar to views sublayer        
view.layer.addSublayer(progressBar)

# Preview
<img src="progress.png?raw=true" width="340px">

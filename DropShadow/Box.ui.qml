import QtQuick 2.15
import QtGraphicalEffects 1.15
import Eduport 1.4

DropShadow {
	horizontalOffset: Eduport.bsBoxShadowOffsetX
	verticalOffset: Eduport.bsBoxShadowOffsetY
	radius: Eduport.bsBoxShadowBlurRadius / 5
	samples: radius * 2 + 1
	color: Eduport.bsBoxShadowColor
}

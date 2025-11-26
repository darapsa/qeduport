import QtQuick
import Qt5Compat.GraphicalEffects
import Eduport

DropShadow {
	horizontalOffset: Eduport.bsBoxShadowOffsetX
	verticalOffset: Eduport.bsBoxShadowOffsetY
	radius: Eduport.bsBoxShadowBlurRadius / 5
	samples: radius * 2 + 1
	color: Eduport.bsBoxShadowColor
}

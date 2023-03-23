import QtQuick 2.15
import QtQuick.Controls 2.15
import Eduport 1.4

Button {
	id: button
	horizontalPadding: Eduport.bsBtnPaddingX
	verticalPadding: Eduport.bsBtnPaddingY
	font: Eduport.bsBtnFont
	contentItem: Text {
		text: button.text
		font: button.font
		color: Eduport.bsBtnColor
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
	}
	background: Rectangle {
		color: Eduport.bsBtnBg
		border {
			width: Eduport.bsBtnBorderWidth
			color: Eduport.bsBtnBorderColor
		}
		radius: Eduport.bsBtnBorderRadius
	}
}

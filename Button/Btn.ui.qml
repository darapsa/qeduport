import QtQuick 2.15
import QtQuick.Controls 2.15
import Eduport 1.4

Button {
	property color bsBtnColor: Eduport.bsBtnColor
	property color bsBtnBg: Eduport.bsBtnBg
	property color bsBtnBorderColor: Eduport.bsBtnBorderColor
	property color bsBtnActiveColor: Eduport.bsBtnColor
	property color bsBtnActiveBg: Eduport.bsBtnBg
	property color bsBtnActiveBorderColor: Eduport.bsBtnBorderColor
	property color bsBtnDisabledColor: Eduport.bsBtnColor
	property color bsBtnDisabledBg: Eduport.bsBtnBg
	property color bsBtnDisabledBorderColor: Eduport.bsBtnBorderColor
	property real bsBtnBorderRadius: Eduport.bsBtnBorderRadius
	id: button
	horizontalPadding: Eduport.bsBtnPaddingX
	verticalPadding: Eduport.bsBtnPaddingY
	font: Eduport.bsBtnFont
	contentItem: Text {
		text: button.text
		font: button.font
		color: button.down
			? bsBtnActiveColor
			: button.enabled
				? bsBtnColor
				: bsBtnDisabledColor
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
	}
	background: Rectangle {
		color: button.down
			? bsBtnActiveBg
			: button.enabled
				? bsBtnBg
				: bsBtnDisabledBg
		border {
			width: Eduport.bsBtnBorderWidth
			color: button.down
				? bsBtnActiveBorderColor
				: button.enabled
					? bsBtnBorderColor
					: bsBtnDisabledBorderColor
		}
		radius: bsBtnBorderRadius
	}
}

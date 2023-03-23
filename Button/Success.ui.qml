import QtQuick 2.15
import QtQuick.Controls 2.15
import Eduport 1.4

Btn {
	id: button
	background: Rectangle {
		color: button.down ? Eduport.bsBtnSuccessActiveBG
			: button.enabled
			? Eduport.bsBtnSuccessBg
			: Eduport.bsBtnSuccessDisabledBg
		border {
			width: Eduport.bsBtnBorderWidth
			color: button.down
				? Eduport.bsBtnSuccessActiveBorderColor
				: button.enabled
				? Eduport.bsBtnSuccessBorderColor
				: Eduport.bsBtnSuccessDisabledBorderColor
		}
		radius: Eduport.bsBtnBorderRadius
	}
}

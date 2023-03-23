import QtQuick 2.15
import QtQuick.Controls 2.15
import Eduport 1.4

Btn {
	id: button
	background: Rectangle {
		color: button.down ? Eduport.bsBtnPrimaryActiveBG
			: button.enabled
			? Eduport.bsBtnPrimaryBg
			: Eduport.bsBtnPrimaryDisabledBg
		border {
			width: Eduport.bsBtnBorderWidth
			color: button.down
				? Eduport.bsBtnPrimaryActiveBorderColor
				: button.enabled
				? Eduport.bsBtnPrimaryBorderColor
				: Eduport.bsBtnPrimaryDisabledBorderColor
		}
		radius: Eduport.bsBtnBorderRadius
	}
}

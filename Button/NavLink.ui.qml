import QtQuick
import QtQuick.Controls
import Eduport

Btn {
	id: button
	font: Eduport.bodyFont
	contentItem: Text {
		text: modelData
		font: button.font
		color: checked
			? Eduport.navPillsLinkActiveColor : Eduport.bsPrimary
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
	}
	background: Rectangle {
		color: checked
			? Eduport.navPillsLinkActiveBg : Eduport.bsBtnBg
		radius: Eduport.navPillsBorderRadius
	}
}

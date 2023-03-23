import QtQuick 2.15
import QtQuick.Controls 2.15
import Eduport 1.4

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

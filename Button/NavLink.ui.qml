import QtQuick 2.15
import QtQuick.Controls 2.15
import Bootstrap 5.3

Btn {
	id: button
	font: Bootstrap.bodyFont
	contentItem: Text {
		text: modelData
		font: button.font
		color: checked
			? Bootstrap.navPillsLinkActiveColor : Bootstrap.primary
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
	}
	background: Rectangle {
		color: checked
			? Bootstrap.navPillsLinkActiveBg : Bootstrap.btnBg
		radius: Bootstrap.navPillsBorderRadius
	}
}

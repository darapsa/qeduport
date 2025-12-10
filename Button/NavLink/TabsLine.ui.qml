import QtQuick
import QtQuick.Controls
import Eduport
import ".."

NavLink {
	id: button
	contentItem: Text {
		text: modelData
		font: button.font
		color: Eduport.bsPrimary
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
	}
	background: Rectangle {
		color: checked ? "#1a066ac9" : Eduport.bsBtnBg
		radius: Eduport.navPillsBorderRadius
	}
}

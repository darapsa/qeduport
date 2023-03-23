import QtQuick 2.15
import QtQuick.Controls 2.15
import Eduport 1.4
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

import QtQuick 2.15
import QtQuick.Controls 2.15
import Bootstrap 5.3
import ".."

NavLink {
	id: button
	contentItem: Text {
		text: modelData
		font: button.font
		color: Bootstrap.primary
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
	}
	background: Rectangle {
		color: checked ? "#1a066ac9" : Bootstrap.btnBg
		radius: Bootstrap.navPillsBorderRadius
	}
}

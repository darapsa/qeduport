import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ToolBar {
	RowLayout {
		anchors.fill: parent
		layoutDirection: Qt.RightToLeft
		ToolButton {
			icon.source: "https://eduport.webestica.com/assets/images/avatar/01.jpg"
			icon.color: "transparent"
			onClicked: optionsMenu.open()
			Menu {
				id: optionsMenu
				y: parent.height
				Action {
					text: qsTr("Edit Profile")
				}
				Action {
					text: qsTr("Account Settings")
				}
				Action {
					text: qsTr("Help")
				}
				Action {
					text: qsTr("Sign Out")
				}
				Action {
					text: qsTr("Dark Mode")
				}
			}
		}
	}
}

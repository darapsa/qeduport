import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ToolBar {
	FontLoader {
		id: roboto
		name: "Roboto"
		source: "Roboto/Roboto-Medium.ttf"
	}

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
				delegate: MenuItem {
					font {
						family: Qt.platform.os
							== "android"
							|| Qt.platform.os
							== "linux"
							|| Qt.platform.os
							== "osx"
							|| Qt.platform.os
							== "unix"
							|| Qt.platform.os
							== "windows"
							? "Roboto"
							: roboto.name
						pixelSize: 15
						weight: Font.Medium
					}
				}
			}
		}
	}
}

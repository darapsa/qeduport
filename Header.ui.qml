import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ToolBar {
	property alias logo: logo
	property alias toolButton: toolButton
	property alias optionsMenu: optionsMenu
	property alias optionProfile: profile
	property alias optionSettings: settings
	property alias optionHelp: help
	property alias optionSign: sign
	property bool doesntEmbed: Qt.platform.os === "android"
				|| Qt.platform.os === "linux"
				|| Qt.platform.os === "osx"
				|| Qt.platform.os === "unix"
				|| Qt.platform.os === "windows"

	background: Rectangle {
		implicitHeight: 64
	}

	FontLoader {
		id: roboto
		source: doesntEmbed ? "" : "Roboto/Roboto-Medium.ttf"
	}

	Item {
		anchors.fill: parent

		ToolButton {
			id: logo
			anchors.left: parent.left
			icon.source: "https://eduport.webestica.com/assets/images/logo.svg"
			icon.width: 115
			background: Rectangle {
				implicitHeight: 64
			}
		}

		ToolButton {
			id: toolButton
			anchors.right: parent.right
			icon.source: "https://eduport.webestica.com/assets/images/avatar/01.jpg"
			icon.color: "transparent"
			background: Rectangle {
				implicitHeight: 64
			}

			Menu {
				id: optionsMenu
				y: parent.height
				Action {
					id: profile
					text: qsTr("Edit Profile")
				}
				Action {
					id: settings
					text: qsTr("Account Settings")
				}
				Action {
					id: help
					text: qsTr("Help")
				}
				Action {
					id: sign
					text: qsTr("Sign Out")
				}
				delegate: MenuItem {
					font {
						family: doesntEmbed ? "Roboto"
							: roboto.name
						pixelSize: 15
						weight: Font.Medium
					}
				}
			}
		}
	}
}

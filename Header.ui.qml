import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4

ToolBar {
	property alias logo: logo
	property alias profile: profile
	property string imageSource: "https://eduport.webestica.com/assets/images/avatar/01.jpg"
	property alias menu: menu
	property alias editProfile: editProfile
	property alias accountSettings: accountSettings
	property alias help: help
	property alias log: log

	background: Rectangle {
		implicitHeight: 70
	}

	Item {
		anchors.fill: parent

		ToolButton {
			id: logo
			anchors {
				left: parent.left
				verticalCenter: parent.verticalCenter
			}
			icon {
				source: "https://eduport.webestica.com/assets/images/logo.svg"
				width: 115
			}
			background: Rectangle {
				color: "transparent"
			}
		}

		ToolButton {
			id: profile
			anchors {
				right: parent.right
				verticalCenter: parent.verticalCenter
			}
			contentItem: Image {
				source: imageSource
				sourceSize {
					width: 40
					height: 40
				}
				layer {
					enabled: true
					effect: OpacityMask {
						maskSource: Rectangle {
							width: 40
							height: 40
							radius: 40
						}
					}
				}
			}
			background: Rectangle {
				color: "transparent"
			}

			Menu {
				id: menu
				y: parent.height
				Action {
					id: editProfile
					text: qsTr("Edit Profile")
				}
				Action {
					id: accountSettings
					text: qsTr("Account Settings")
				}
				Action {
					id: help
					text: qsTr("Help")
				}
				Action {
					id: log
					text: qsTr("Sign Out")
				}
				delegate: MenuItem {
					font: Eduport.bsBtnFont
				}
			}
		}
	}
}

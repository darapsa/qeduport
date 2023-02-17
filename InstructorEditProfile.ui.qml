import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	property bool doesntEmbed: Qt.platform.os === "android"
				|| Qt.platform.os === "linux"
				|| Qt.platform.os === "osx"
				|| Qt.platform.os === "unix"
				|| Qt.platform.os === "windows"
	contentHeight: main.height

	FontLoader {
		id: bold
		source: "Roboto/Roboto-Bold.ttf"
	}

	ColumnLayout {
		id: main

		RowLayout {

			ColumnLayout {
				Layout.leftMargin: 15
				Layout.rightMargin: 15

				Rectangle {
					Layout.fillWidth: true
					implicitHeight: editProfile.height
					radius: 8
					border {
						width: 1
						color: "#1a000000"
					}

					ColumnLayout {
						id: editProfile
						anchors {
							left: parent.left
							right: parent.right
						}

						Rectangle {
							Layout.fillWidth: true
							implicitHeight: cardHeader.height
							border {
								width: 1
								color: "#1a000000"
							}

							Label {
								id: cardHeader
								text: qsTr("Edit Profile")
								padding: 16
								anchors {
									left: parent.left
									right: parent.right
								}
								font {
									family: doesntEmbed ? "Roboto" : bold.name
									weight: Font.Bold
									pointSize: 23
								}
							}
						}

						ColumnLayout {
							Layout.topMargin: 41.6
							Layout.leftMargin: 32.8
							Layout.rightMargin: 32.8
							Layout.bottomMargin: 16
						}
					}
				}
			}
		}
	}
}

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

	FontLoader {
		id: regular
		source: "Roboto/Roboto-Regular.ttf"
	}

	ColumnLayout {
		id: main
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

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

						Label {
							id: cardHeader
							Layout.fillWidth: true
							text:
							qsTr("Edit Profile")
							padding: 16
							font {
								family:
								doesntEmbed
								? "Roboto"
								: bold.name
								weight: Font
									.Bold
								pointSize: 23
							}
						}

						Rectangle {
							Layout.fillWidth: true
							height: 1
							border {
								width: .5
								color:
								"#0a000000"
							}
						}

						ColumnLayout {
							Layout.topMargin: 41.6
							Layout.leftMargin: 32.8
							Layout.rightMargin: 32.8
							Layout.bottomMargin: 16

							Label {
								Layout.fillWidth: true
								text: qsTr("Profile picture")
								padding: 16
								color:
								"#747579"
								font {
									family: doesntEmbed ? "Roboto" : regular.name
									pointSize: 15
								}
							}

							RowLayout {

								Image {
									source: "https://eduport.webestica.com/assets/images/avatar/07.jpg"
									fillMode: Image.PreserveAspectFit
								}

								Button {
									id: uploadButton
									horizontalPadding: 16
									verticalPadding: 8
									contentItem: Text {
										color: uploadButton.down ? "#ffffff" : "#066ac9"
										text: qsTr("Change")
										horizontalAlignment: Text .AlignHCenter
										verticalAlignment: Text .AlignVCenter
										font {
											family: doesntEmbed ? "Roboto" : regular.name
											pointSize: 15
										}
									}
									background: Rectangle {
										radius: 5.2
										color: uploadButton.down ? "#066ac9" : Qt.rgba(.0235, .416, .788, .1)
										border {
											color: uploadButton.down ? "#066ac9" : "transparent"
											width: 1
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

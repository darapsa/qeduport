import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4
import "../Label" as Lbl
import "../TextField" as TxtFld
import "../Button" as Btn

Flickable {
	property alias firstName: firstName
	property alias lastName: lastName
	property alias userName: userName
	property alias emailID: emailID
	property alias phoneNumber: phoneNumber
	property alias location: location
	property alias saveButton: saveButton
	contentHeight: main.height

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

						Lbl.H3 {
							id: cardHeader
							Layout.fillWidth: true
							text: qsTr("Edit Profile")
							padding: 16
						}

						Rectangle {
							Layout.fillWidth: true
							height: 1
							border {
								width: .5
								color: "#0a000000"
							}
						}

						ColumnLayout {
							Layout.topMargin: -9.6
							Layout.leftMargin: 7.2
							Layout.rightMargin: 7.2
							Layout.bottomMargin: 16

							ColumnLayout {
								Layout.topMargin: 25.6
								Layout.leftMargin: 12.8
								Layout.rightMargin: 12.8

								Lbl.Body {
									Layout.fillWidth: true
									Layout.bottomMargin: 8
									text: qsTr("Profile picture")
								}

								RowLayout {

									Image {
										id: avatar
										Layout.rightMargin: 25.6
										source: "https://eduport.webestica.com/assets/images/avatar/07.jpg"
										sourceSize {
											width: 82
											height: 82
										}
										layer.enabled: true
										layer.effect: OpacityMask {
											maskSource: Rectangle {
												width: 82
												height: 82
												radius: 82
											}
										}
									}

									Button {
										id: uploadButton
										horizontalPadding: 16
										verticalPadding: 8
										text: qsTr("Change")
										font: Eduport.bsBtnFont
										contentItem: Text {
											color: uploadButton.down ? "#ffffff" : "#066ac9"
											text: uploadButton.text
											font: uploadButton.font
											horizontalAlignment: Text.AlignHCenter
											verticalAlignment: Text.AlignVCenter
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

							ColumnLayout {
								Layout.topMargin: 25.6
								Layout.leftMargin: 12.8
								Layout.rightMargin: 12.8

								Lbl.Body {
									Layout.fillWidth: true
									Layout.bottomMargin: 8
									text: qsTr("Full name")
								}

								Rectangle {
									Layout.fillWidth: true
									implicitHeight: firstName.height
									radius: 5.2
									border {
										width: 1
										color: "#dde0e3"
									}

									TxtFld.Input {
										id: firstName
										text: "Lori"
										placeholderText: qsTr("First name")
										width: parent.width / 2
										anchors.left: parent.left
										topPadding: 8
										leftPadding: 16
										rightPadding: 16
										bottomPadding: 8
									}

									Rectangle {
										width: 1
										height: firstName.height
										anchors.horizontalCenter: parent.horizontalCenter
										border {
											width: .5
											color: "#88dde0e3"
										}
									}

									TxtFld.Input {
										id: lastName
										text: "Stevens"
										placeholderText: qsTr("Last name")
										width: parent.width / 2
										anchors.right: parent.right
										topPadding: 8
										leftPadding: 16
										rightPadding: 16
										bottomPadding: 8
									}
								}
							}

							ColumnLayout {
								Layout.topMargin: 25.6
								Layout.leftMargin: 12.8
								Layout.rightMargin: 12.8

								Lbl.Body {
									Layout.fillWidth: true
									Layout.bottomMargin: 8
									text: qsTr("Username")
								}

								Rectangle {
									Layout.fillWidth: true
									implicitHeight: userName.height
									radius: 5.2
									border {
										width: 1
										color: "#dde0e3"
									}

									Lbl.Body {
										id: domainName
										text: "Eduport.com"
										height: userName.height
										width: parent.width / 2
										anchors.left: parent.left
										verticalAlignment: Text.AlignVCenter
										topPadding: 6
										leftPadding: 12
										rightPadding: 12
										bottomPadding: 6
										background: Rectangle {
											color: "#e9ecef"
										}
									}

									Rectangle {
										width: 1
										height: userName.height
										anchors.horizontalCenter: parent.horizontalCenter
										border {
											width: .5
											color: "#88dde0e3"
										}
									}

									TxtFld.Input {
										id: userName
										text: "loristev"
										width: parent.width / 2
										anchors.right: parent.right
										topPadding: 8
										leftPadding: 16
										rightPadding: 16
										bottomPadding: 8
									}
								}
							}

							ColumnLayout {
								Layout.topMargin: 25.6
								Layout.leftMargin: 12.8
								Layout.rightMargin: 12.8

								Lbl.Body {
									Layout.fillWidth: true
									Layout.bottomMargin: 8
									text: qsTr("Email id")
								}

								Rectangle {
									Layout.fillWidth: true
									implicitHeight: emailID.height
									radius: 5.2
									border {
										width: 1
										color: "#dde0e3"
									}

									TxtFld.Input {
										id: emailID
										text: "example@gmail.com"
										placeholderText: qsTr("Email")
										topPadding: 8
										leftPadding: 16
										rightPadding: 16
										bottomPadding: 8
										anchors {
											left: parent.left
											right: parent.right
										}
									}
								}
							}

							ColumnLayout {
								Layout.topMargin: 25.6
								Layout.leftMargin: 12.8
								Layout.rightMargin: 12.8

								Lbl.Body {
									Layout.fillWidth: true
									Layout.bottomMargin: 8
									text: qsTr("Phone number")
								}

								Rectangle {
									Layout.fillWidth: true
									implicitHeight: phoneNumber.height
									radius: 5.2
									border {
										width: 1
										color: "#dde0e3"
									}

									TxtFld.Input {
										id: phoneNumber
										text: "1234567890"
										placeholderText: qsTr("Phone number")
										topPadding: 8
										leftPadding: 16
										rightPadding: 16
										bottomPadding: 8
										anchors {
											left: parent.left
											right: parent.right
										}
									}
								}
							}

							ColumnLayout {
								Layout.topMargin: 25.6
								Layout.leftMargin: 12.8
								Layout.rightMargin: 12.8

								Lbl.Body {
									Layout.fillWidth: true
									Layout.bottomMargin: 8
									text: qsTr("Location")
								}

								Rectangle {
									Layout.fillWidth: true
									implicitHeight: location.height
									radius: 5.2
									border {
										width: 1
										color: "#dde0e3"
									}

									TxtFld.Input {
										id: location
										text: "California"
										topPadding: 8
										leftPadding: 16
										rightPadding: 16
										bottomPadding: 8
										anchors {
											left: parent.left
											right: parent.right
										}
									}
								}
							}

							Btn.Primary {
								id: saveButton
								Layout.topMargin: 25.6
								Layout.leftMargin: 12.8
								Layout.rightMargin: 12.8
								text: qsTr("Save changes")
							}
						}
					}
				}
			}
		}
	}
}

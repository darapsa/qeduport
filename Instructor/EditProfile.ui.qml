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
					color: Eduport.bsBodyBg
					border {
						color: Eduport.bsBorderColor
						width: 1
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
							text:
							qsTr("Edit Profile")
							padding: 16
						}

						MenuSeparator {
							contentItem: Rectangle {
								implicitWidth:
								editProfile
									.width
								implicitHeight:
									1
								color: Eduport
								.bsBorderColor
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
									color: Eduport.bsBodyBg
									border {
										width: 1
										color: Eduport.bsGray300
									}

									TxtFld.Input {
										id: firstName
										text: "Lori"
										placeholderText: qsTr("First name")
										width: parent.width / 2
										anchors.left: parent.left
										background: Rectangle {
											color: "transparent"
										}
									}

									ToolSeparator {
										anchors.centerIn: parent
										contentItem: Rectangle {
											implicitWidth: 1
											implicitHeight: firstName.height
											color: Eduport.bsGray300
										}
									}

									TxtFld.Input {
										id: lastName
										text: "Stevens"
										placeholderText: qsTr("Last name")
										width: parent.width / 2
										anchors.right: parent.right
										background: Rectangle {
											color: "transparent"
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
									text: qsTr("Username")
								}

								Rectangle {
									Layout.fillWidth: true
									implicitHeight: userName.height
									radius: 5.2
									color: Eduport.bsBodyBg
									border {
										width: 1
										color: Eduport.bsGray300
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
										color: Eduport.bsBodyColor
										background: Rectangle {
											color: Eduport.bsTertiaryBg
										}
									}

									ToolSeparator {
										anchors.centerIn: parent
										contentItem: Rectangle {
											implicitWidth: 1
											implicitHeight: firstName.height
											color: Eduport.bsGray300
										}
									}

									TxtFld.Input {
										id: userName
										text: "loristev"
										width: parent.width / 2
										anchors.right: parent.right
										background: Rectangle {
											color: "transparent"
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
									text: qsTr("Email id")
								}

								TxtFld.Input {
									id: emailID
									text: "example@gmail.com"
									placeholderText: qsTr("Email")
									Layout.fillWidth: true
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

								TxtFld.Input {
									id: phoneNumber
									text: "1234567890"
									placeholderText: qsTr("Phone number")
									Layout.fillWidth: true
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

								TxtFld.Input {
									id: location
									text: "California"
									Layout.fillWidth: true
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

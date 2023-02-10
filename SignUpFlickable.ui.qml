import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

GridLayout {
	property alias signUpEmail: email
	property alias signUpPassword: password
	property alias signUpConfirmPassword: confirmPassword
	property alias signUpButton: button
	property alias signUpSignIn: signIn

	ColumnLayout {
		Layout.margins: 16

		ColumnLayout {
			spacing: 16
			ColumnLayout {
				id: columnLayout
				Layout.fillWidth: true
				
				Label {
					id: signUpTitle
					text: qsTr("Sign Up Title")
					font.family: "Roboto"
					font.weight: Font.Medium
					font.pointSize: 40
				}
				
				Label {
					id: signUpSubtitle
					color: "#6c757d"
					text: qsTr("Sign Up Subtitle")
					font.weight: Font.Normal
					font.pointSize: 22
				}
			}
			ColumnLayout {
				Label {
					text: qsTr("Email address *")
					font.pixelSize: 16
					font.family: "roboto"
				}
				Rectangle {
					implicitHeight: 56
					color: "#f5f7f9"
					radius: 8
					border.width: 0
					Layout.fillWidth: true

					RowLayout {
						anchors.fill: parent
						Image {
							id: envelope
							source: "Bootstrap/icons/envelope-fill.svg"
							Layout.maximumHeight: 24
							Layout.maximumWidth: 24
							Layout.margins: 16
						}
						TextField {
							id: email
							placeholderText: qsTr("E-mail")
							font.pixelSize: 16
							font.family: "roboto"
							Layout.fillWidth: true
							Layout.fillHeight: true
							background: Rectangle {
								color: "transparent"
							}
						}
					}
				}
			}

			ColumnLayout {
				Label {
					text: qsTr("Password *")
					font.pixelSize: 16
					font.family: "roboto"
				}
				Rectangle {
					implicitHeight: 56
					color: "#f5f7f9"
					radius: 8
					border.width: 0
					Layout.fillWidth: true
					RowLayout {
						anchors.fill: parent
						Image {
							source: "Font-Awesome/svgs/solid/lock.svg"
							Layout.maximumHeight: 24
							Layout.maximumWidth: 24
							Layout.margins: 16
						}
						TextField {
							id: password
							placeholderText: qsTr("Password")
							font.pixelSize: 16
							Layout.fillWidth: true
							Layout.fillHeight: true
							background: Rectangle {
								color: "transparent"
							}
						}
					}			
				}
			}

			ColumnLayout {
				Label {
					text: qsTr("Confirm password *")
					font.pixelSize: 16
					font.family: "roboto"
				}
				Rectangle {
					implicitHeight: 56
					color: "#f5f7f9"
					radius: 8
					border.width: 0
					Layout.fillWidth: true
					RowLayout {
						anchors.fill: parent
						Image {
							source: "Font-Awesome/svgs/solid/lock.svg"
							Layout.maximumHeight: 24
							Layout.maximumWidth: 24
							Layout.margins: 16
						}
						TextField {
							id: confirmPassword
							placeholderText: qsTr("Confirm password")
							font.pixelSize: 16
							Layout.fillWidth: true
							Layout.fillHeight: true
							background: Rectangle {
								color: "transparent"
							}
						}
					}			
				}
			}
			RowLayout {
				Layout.fillWidth: true
				CheckBox {
					id: agreementCheckBox
					text: "By signing up, you agree to the <a href=\"#\">terms of service</a>"
					font.pointSize: 14
					font.family: "Roboto"
					Layout.fillWidth: true
					contentItem: Text {
						color: "#6c757d"
						text: agreementCheckBox.text
						verticalAlignment: Text.AlignVCenter
						leftPadding: agreementCheckBox.indicator.width + agreementCheckBox.spacing
					}
				}
			}

			Button {
				id: button
				text: qsTr("Sign Up")
				font.pixelSize: 16
				implicitHeight: 40
				Layout.fillWidth: true

				contentItem: Text {
					color: "#ffffff"
					text: "Login"
					horizontalAlignment: Text.AlignHCenter
					verticalAlignment: Text.AlignVCenter
					font.weight: Font.Medium
					font.family: "Roboto"
					font.pointSize: 14
				}

				background: Rectangle {
					color: button.down ? "#055aab" : "#066ac9"
					radius: 8
				}
			}
		}

		RowLayout {
			Layout.alignment: Qt.AlignHCenter
			Label {
				text: qsTr("Already have an account?")
				font.pixelSize: 16
			}
			Text {
				id: signIn
				text: "<a href=\"sign-in.html\">Sign in here</a>"
				font.pixelSize: 16
				font.underline: false
				linkColor: Qt.rgba(.0235, .416, .788, 1.0)
			}
		}
	}
}

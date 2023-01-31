import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

GridLayout {
	property alias signInEmail: email
	property alias signInPassword: password
	property alias signInButton: button
	property alias signInSignUp: signUp

	ColumnLayout {
		Layout.rightMargin: 16
		Layout.leftMargin: 16

		ColumnLayout {
			spacing: 16
			ColumnLayout {
				id: columnLayout
				Layout.fillWidth: true
				
				Label {
					id: signInTitle
					text: qsTr("Sign In Title")
					font.family: "Roboto"
					font.weight: Font.Medium
					font.pointSize: 40
				}
				
				Label {
					id: signInSubtitle
					color: "#6c757d"
					text: qsTr("Sign In Subtitle")
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
							sourceSize {
								width: 24
								height: 24
							}
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
			Label {
				id: passwordHelper
				text: "Your password must atleast 8 characters long"
				font.pixelSize: 12
				color: "#6c757d"
			}
			RowLayout {
				Layout.fillWidth: true
				CheckBox {
					id: rememberCheckBox
					text: qsTr("Remember me")
					font.pointSize: 14
					font.family: "Roboto"
					Layout.fillWidth: true
					contentItem: Text {
						color: "#6c757d"
						text: rememberCheckBox.text
						verticalAlignment: Text.AlignVCenter
						leftPadding: rememberCheckBox.indicator.width + rememberCheckBox.spacing
					}
				}
				Text {
					id: forgotPassword
					text: "<a href=\"#\">Forgot password?</a>"
					font.family: "Roboto"
					font.pointSize: 14
					horizontalAlignment: Text.AlignRight
					Layout.fillWidth: true
					linkColor: Qt.rgba(.0235, .416, .788, 1.0)
				}
			}
			Button {
				id: button
				text: qsTr("Login")
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
				text: qsTr("Don't have an account?")
				font.pixelSize: 16
			}
			Text {
				id: signUp
				text: "<a href=\"sign-up.html\">Signup here</a>"
				font.pixelSize: 16
				font.underline: false
				linkColor: Qt.rgba(.0235, .416, .788, 1.0)
			}
		}
	}
}

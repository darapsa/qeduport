import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

GridLayout {
	property alias signInEmail: email
	property alias signInPassword: password
	property alias signInButton: button
	property alias signInSignUp: signUp

	ColumnLayout {
		Layout.margins: 15

		ColumnLayout {

			ColumnLayout {
				Label {
					text: qsTr("Email address *")
					font.pixelSize: 15
				}
				RowLayout {
					Image {
						id: envelope
						source: "Bootstrap/icons/envelope-fill.svg"
					}
					TextField {
						id: email
						placeholderText: qsTr("E-mail")
						font.pixelSize: 15
						Layout.fillWidth: true
					}
				}
			}

			ColumnLayout {
				Label {
					text: qsTr("Password *")
					font.pixelSize: 15
				}
				RowLayout {
					Image {
						source: "Font-Awesome/svgs/solid/lock.svg"
						sourceSize {
							width: envelope.height
							height: envelope.height
						}
					}
					TextField {
						id: password
						placeholderText: qsTr("password")
						font.pixelSize: 15
						Layout.fillWidth: true
					}
				}
			}

			Button {
				id: button
				text: qsTr("Login")
				font.pixelSize: 15
				Layout.fillWidth: true
			}
		}

		RowLayout {
			Layout.alignment: Qt.AlignHCenter
			Label {
				text: qsTr("Don't have an account?")
				font.pixelSize: 15
			}
			Text {
				id: signUp
				text: "<a href=\"sign-up.html\">Signup here</a>"
				font.pixelSize: 15
				font.underline: false
				linkColor: Qt.rgba(.0235, .416, .788, 1.0)
			}
		}
	}
}

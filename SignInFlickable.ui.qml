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
				}
				RowLayout {
					Image {
						id: envelope
						source: "Bootstrap/icons/envelope-fill.svg"
					}
					TextField {
						id: email
						placeholderText: qsTr("E-mail")
						Layout.fillWidth: true
					}
				}
			}

			ColumnLayout {
				Label {
					text: qsTr("Password *")
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
						Layout.fillWidth: true
					}
				}
			}

			Button {
				id: button
				text: qsTr("Login")
				Layout.fillWidth: true
			}
		}

		RowLayout {
			Layout.alignment: Qt.AlignHCenter
			Label {
				text: qsTr("Don't have an account?")
			}
			Text {
				id: signUp
				text: "<a href=\"sign-up.html\">Signup here</a>"
				linkColor: Qt.rgba(.0235, .416, .788, 1.0)
				font.underline: false
			}
		}
	}
}

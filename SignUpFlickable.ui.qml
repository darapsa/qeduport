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

			ColumnLayout {
				Label {
					text: qsTr("Confirm Password *")
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
						id: confirmPassword
						placeholderText: qsTr("password")
						Layout.fillWidth: true
					}
				}
			}

			Button {
				id: button
				text: qsTr("Sign Up")
				Layout.fillWidth: true
			}
		}

		RowLayout {
			Layout.alignment: Qt.AlignHCenter
			Label {
				text: qsTr("Already have an account?")
			}
			Text {
				id: signIn
				text: "<a href=\"sign-in.html\">Sign in here</a>"
				linkColor: Qt.rgba(.0235, .416, .788, 1.0)
				font.underline: false
			}
		}
	}
}

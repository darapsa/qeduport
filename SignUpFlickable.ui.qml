import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

GridLayout {

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
						id: password
						placeholderText: qsTr("password")
						Layout.fillWidth: true
					}
				}
			}

			Button {
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
				text: "<a href=\"sign-in.html\">Sign in here</a>"
				linkColor: Qt.rgba(.0235, .416, .788, 1.0)
				font.underline: false
			}
		}
	}
}

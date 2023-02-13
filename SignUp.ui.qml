import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	property alias signUpEmail: email
	property alias signUpPassword: password
	property alias signUpConfirmPassword: confirmPassword
	property alias signUpButton: button
	property alias signUpSignIn: signIn
	contentHeight: container.height

	FontLoader {
		id: heebo
		name: "Heebo"
		source: "Heebo/Heebo-Bold.ttf"
	}

	GridLayout {
		id: container
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		ColumnLayout {
			Layout.margins: 16

			ColumnLayout {
				spacing: 16

				ColumnLayout {
					id: columnLayout

					Label {
						id: signUpTitle
						text: qsTr("Sign up for your account!")
						wrapMode: Text.Wrap
						Layout.fillWidth: true
						font.family: heebo.name
						font.weight: Font.Medium
						font.pointSize: 40
					}

					Label {
						id: signUpSubtitle
						color: "#6c757d"
						text: qsTr("Nice to see you! Please Sign up with your account.")
						wrapMode: Text.Wrap
						Layout.fillWidth: true
						font.weight: Font.Normal
						font.pointSize: 22
						font.family: "Roboto"
					}
				}

				ColumnLayout {

					Label {
						text: qsTr("Email address *")
						font.pixelSize: 16
						font.family: "Roboto"
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
								font.family: "Roboto"
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
						font.family: "Roboto"
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
								placeholderText: "*********"
								echoMode: TextInput.Password
								font.pixelSize: 16
								font.family: "Roboto"
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
						text: qsTr("Confirm Password *")
						font.pixelSize: 16
						font.family: "Roboto"
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
								placeholderText: "*********"
								echoMode: TextInput.Password
								font.pixelSize: 16
								font.family: "Roboto"
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

					CheckBox {
						id: agreementCheckBox
						text: "By signing up, you agree to the <a href=\"#\">terms of service</a>"
						font.pointSize: 14
						font.family: "Roboto"
						Layout.fillWidth: true
						contentItem: Text {
							color: "#6c757d"
							text: agreementCheckBox.text
							font: agreementCheckBox.font
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
						text: "Sign Up"
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
					font.family: "Roboto"
				}

				Text {
					id: signIn
					text: "<a href=\"sign-in.html\">Sign in here</a>"
					font.pixelSize: 16
					font.family: "Roboto"
					font.underline: false
					linkColor: Qt.rgba(.0235, .416, .788, 1.0)
				}
			}
		}
	}
}

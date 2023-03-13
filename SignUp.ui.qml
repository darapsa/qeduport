import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	property string titleHeader: qsTr("Sign up for your account!")
	property alias titleParagraph: titleParagraph
	property string emailLabel: qsTr("Email address *")
	property string emailImage: "Bootstrap/icons/envelope-fill.svg"
	property alias email: email
	property alias password: password
	property alias confirmPassword: confirmPassword
	property alias button: button
	property alias signIn: signIn
	readonly property bool doesntEmbed: Qt.platform.os === "android"
				|| Qt.platform.os === "linux"
				|| Qt.platform.os === "osx"
				|| Qt.platform.os === "unix"
				|| Qt.platform.os === "windows"
	contentHeight: container.height

	FontLoader {
		id: heebo
		source: "Heebo/Heebo-Bold.ttf"
	}

	FontLoader {
		id: medium
		source: doesntEmbed ? "" : "Roboto/Roboto-Medium.ttf"
	}

	FontLoader {
		id: regular
		source: doesntEmbed ? "" : "Roboto/Roboto-Regular.ttf"
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
						text: titleHeader
						wrapMode: Text.Wrap
						Layout.fillWidth: true
						font {
							family: heebo.name
							pointSize: 21.75 + .013125 * columnLayout.width
						}
					}

					Label {
						id: titleParagraph
						color: "#6c757d"
						text: qsTr("Nice to see you! Please Sign up with your account.")
						wrapMode: Text.Wrap
						Layout.fillWidth: true
						font {
							pointSize: 18.75
							family: doesntEmbed ? "Roboto" : regular.name
						}
					}
				}

				ColumnLayout {

					Label {
						text: emailLabel
						font {
							pointSize: 15
							family: doesntEmbed ? "Roboto" : regular.name
						}
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
								source: emailImage
								Layout.maximumHeight: 24
								Layout.maximumWidth: 24
								Layout.margins: 16
							}

							TextField {
								id: email
								placeholderText: qsTr("E-mail")
								font {
									pointSize: 16
									family: doesntEmbed ? "Roboto" : regular.name
								}
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
						font {
							pointSize: 15
							family: doesntEmbed ? "Roboto" : regular.name
						}
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
								font {
									pointSize: 16
									family: doesntEmbed ? "Roboto" : regular.name
								}
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
						font {
							pointSize: 15
							family: doesntEmbed ? "Roboto" : regular.name
						}
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
								font {
									pointSize: 16
									family: doesntEmbed ? "Roboto" : regular.name
								}
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
						font {
							pointSize: 15
							family: doesntEmbed ? "Roboto" : regular.name
						}
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
					implicitHeight: 40
					Layout.fillWidth: true

					contentItem: Text {
						color: "#ffffff"
						text: button.text
						horizontalAlignment: Text.AlignHCenter
						verticalAlignment: Text.AlignVCenter
						font {
							pointSize: 15
							family: doesntEmbed ? "Roboto" : medium.name
							weight: Font.Medium
						}
					}

					background: Rectangle {
						color: button.down ? "#0555a1" : button.enabled ? "#066ac9" : "#a6066ac9"
						radius: 8
					}
				}
			}

			RowLayout {
				Layout.alignment: Qt.AlignHCenter

				Label {
					text: qsTr("Already have an account?")
					font {
						pointSize: 15
						family: doesntEmbed ? "Roboto" : regular.name
					}
				}

				Text {
					id: signIn
					text: "<a href=\"sign-in.html\">Sign in here</a>"
					font {
						pointSize: 15
						family: doesntEmbed ? "Roboto" : regular.name
						underline: false
					}
					linkColor: Qt.rgba(.0235, .416, .788, 1.0)
				}
			}
		}
	}
}

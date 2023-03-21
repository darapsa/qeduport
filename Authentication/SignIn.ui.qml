import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Bootstrap 5.3
import Eduport 1.4
import "../Button" as BsBtn

Flickable {
	property string titleHeader: qsTr("Login into Eduport!")
	property alias titleParagraph: titleParagraph
	property string emailLabel: qsTr("Email address *")
	property string emailImage: "../Bootstrap/icons/envelope-fill.svg"
	property alias email: email
	property alias password: password
	property alias button: button
	property alias signUp: signUp
	contentHeight: container.height

	GridLayout {
		id: container
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		ColumnLayout {
			Layout.rightMargin: 16
			Layout.leftMargin: 16

			ColumnLayout {
				spacing: 16
				ColumnLayout {
					id: columnLayout

					Label {
						Layout.fillWidth: true
						text: titleHeader
						wrapMode: Label.Wrap
						font {
							family: Eduport.hFont
									.family
							pointSize: 21.75
								+ .013125
								* columnLayout
									.width
						}
					}

					Label {
						id: titleParagraph
						text: qsTr("Nice to see you! Please log in with your account.")
						wrapMode: Label.Wrap
						color: "#6c757d"
						Layout.fillWidth: true
						font {
							family: Bootstrap
								.bodyFont.family
							pointSize: Eduport
								.leadFontSize
						}
					}
				}

				ColumnLayout {
					Label {
						text: emailLabel
						font {
							family: Bootstrap
								.bodyFont.family
							pointSize: Bootstrap
								.bodyFont
								.pointSize
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
									family: Bootstrap.bodyFont.family
									pointSize: Eduport.formControlFontSize
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
							family: Bootstrap
								.bodyFont.family
							pointSize: Bootstrap
								.bodyFont
								.pointSize
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
								source: "../Font-Awesome/svgs/solid/lock.svg"
								Layout.maximumHeight: 24
								Layout.maximumWidth: 24
								Layout.margins: 16
							}

							TextField {
								id: password
								placeholderText: qsTr("password")
								echoMode: TextInput.Password
								font {
									family: Bootstrap.bodyFont.family
									pointSize: Eduport.formControlFontSize
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

				Label {
					id: passwordHelper
					text: qsTr("Your password must be 8 characters at least")
					font {
						family: Bootstrap.bodyFont
								.family
						pointSize: Eduport
							.formTextFontSize
					}
					color: "#6c757d"
				}
				RowLayout {
					Layout.fillWidth: true
					CheckBox {
						id: rememberCheckBox
						text: qsTr("Remember me")
						font {
							family: Bootstrap.bodyFont.family
							pointSize: Bootstrap.bodyFont.pointSize
						}
						Layout.fillWidth: true
						contentItem: Text {
							color: "#6c757d"
							text: rememberCheckBox.text
							font: rememberCheckBox.font
							verticalAlignment: Text.AlignVCenter
							leftPadding: rememberCheckBox.indicator.width + rememberCheckBox.spacing
						}
					}
					Text {
						id: forgotPassword
						text: "<a href=\"#\">Forgot password?</a>"
						font {
							family: Bootstrap.bodyFont.family
							pointSize: Bootstrap.bodyFont.pointSize
						}
						horizontalAlignment: Text.AlignRight
						Layout.fillWidth: true
						linkColor: Qt.rgba(.0235, .416, .788, 1.0)
					}
				}

				BsBtn.Primary {
					id: button
					text: qsTr("Login")
					implicitHeight: 40
					Layout.fillWidth: true
				}
			}

			RowLayout {
				Layout.alignment: Qt.AlignHCenter

				Label {
					text: qsTr("Don't have an account?")
					font {
						family: Bootstrap.bodyFont.family
						pointSize: Bootstrap.bodyFont.pointSize
					}
				}

				Text {
					id: signUp
					text: "<a href=\"sign-up.html\">Signup here</a>"
					font {
						family: Bootstrap.bodyFont.family
						pointSize: Bootstrap.bodyFont.pointSize
						underline: false
					}
					linkColor: Qt.rgba(.0235, .416, .788, 1.0)
				}
			}
		}
	}
}

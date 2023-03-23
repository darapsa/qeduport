import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Bootstrap 5.3
import Eduport 1.4
import "../Label" as Lbl
import "../TextField" as TxtFld
import "../Button" as BsBtn

Flickable {
	property string titleHeader: qsTr("Sign up for your account!")
	property alias titleParagraph: titleParagraph
	property string emailLabel: qsTr("Email address *")
	property string emailImage: "../Bootstrap/icons/envelope-fill.svg"
	property alias email: email
	property alias password: password
	property alias confirmPassword: confirmPassword
	property alias button: button
	property alias signIn: signIn
	contentHeight: container.height

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

					Lbl.H2 {
						Layout.fillWidth: true
						text: titleHeader
					}

					Lbl.Body {
						id: titleParagraph
						color: "#6c757d"
						text: qsTr("Nice to see you! Please Sign up with your account.")
						Layout.fillWidth: true
						font.pointSize: Eduport
								.leadFontSize
					}
				}

				ColumnLayout {

					Lbl.Body {
						text: emailLabel
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

							TxtFld.Input {
								id: email
								placeholderText: qsTr("E-mail")
								Layout.fillWidth: true
								Layout.fillHeight: true
							}
						}
					}
				}

				ColumnLayout {

					Lbl.Body {
						text: qsTr("Password *")
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

							TxtFld.Input {
								id: password
								placeholderText: "*********"
								echoMode: TextInput.Password
								Layout.fillWidth: true
								Layout.fillHeight: true
							}
						}
					}
				}

				ColumnLayout {

					Lbl.Body {
						text: qsTr("Confirm Password *")
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

							TxtFld.Input {
								id: confirmPassword
								placeholderText: "*********"
								echoMode: TextInput.Password
								Layout.fillWidth: true
								Layout.fillHeight: true
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
							family: Bootstrap
								.bodyFont.family
							weight: Bootstrap
								.bodyFont.weight
							pointSize: Bootstrap
								.bodyFont
								.pointSize
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

				BsBtn.Primary {
					id: button
					text: qsTr("Sign Up")
					implicitHeight: 40
					Layout.fillWidth: true
				}
			}

			RowLayout {
				Layout.alignment: Qt.AlignHCenter

				Lbl.Body {
					text: qsTr("Already have an account?")
				}

				Text {
					id: signIn
					text: "<a href=\"sign-in.html\">Sign in here</a>"
					font {
						family: Bootstrap.bodyFont
									.family
						weight: Bootstrap.bodyFont
									.weight
						pointSize: Bootstrap.bodyFont
								.pointSize
						underline: false
					}
					linkColor: Qt.rgba(.0235, .416, .788, 1.0)
				}
			}
		}
	}
}
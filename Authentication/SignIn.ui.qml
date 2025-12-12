import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects
import Bootstrap
import Eduport
import "../TextField" as TxtFld
import "../Button" as Btn

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
						Bootstrap.heading: 2
					}

					Label {
						id: titleParagraph
						text: qsTr("Nice to see you! Please log in with your account.")
						color: "#6c757d"
						Layout.fillWidth: true
						wrapMode: Label.Wrap
						font.pointSize: Eduport
								.leadFontSize
					}
				}

				ColumnLayout {
					Label {
						text: emailLabel
						wrapMode: Label.Wrap
					}

					Rectangle {
						Layout.fillWidth: true
						implicitHeight: email.height
						radius: 5.2
						color: Eduport.bsLight

						RowLayout {
							anchors.fill: parent

							Image {
								Layout
								.topMargin: 16
								Layout
								.leftMargin: 20
								Layout
								.rightMargin: 20
								Layout
								.bottomMargin:
									16
								source:
								emailImage
								sourceSize {
									width:
									20
									height:
									20
								}

								layer {
									enabled: true
									effect: MultiEffect {
										brightness: 1.0
										colorization: 1.0
										colorizationColor: Eduport.bsSecondary
									}
								}
							}

							TxtFld.Input {
								Layout
								.fillWidth: true
								Layout
								.leftMargin: -1
								id: email
								placeholderText:
								qsTr("E-mail")
								topPadding: 16
								leftPadding: 5
								rightPadding: 30
								bottomPadding:
									16
								background:
								Rectangle {
									color:
									"transparent"
								}
							}
						}
					}
				}

				ColumnLayout {

					Label {
						text: qsTr("Password *")
						wrapMode: Label.Wrap
					}

					Rectangle {
						Layout.fillWidth: true
						implicitHeight: password.height
						radius: 5.2
						color: Eduport.bsLight

						RowLayout {
							anchors.fill: parent

							Image {
								Layout
								.topMargin: 16
								Layout
								.leftMargin: 20
								Layout
								.rightMargin: 20
								Layout
								.bottomMargin:
									16
								source: "../Font-Awesome/svgs/solid/lock.svg"
								sourceSize {
									width:
									18
									height:
									20
								}

								layer {
									enabled: true
									effect: MultiEffect {
										brightness: 1.0
										colorization: 1.0
										colorizationColor: Eduport.bsSecondary
									}
								}
							}

							TxtFld.Input {
								Layout
								.fillWidth: true
								Layout
								.leftMargin: -1
								id: password
								placeholderText:
								qsTr("password")
								echoMode:
								TextInput
								.Password
								topPadding: 16
								leftPadding: 5
								rightPadding: 30
								bottomPadding:
									16
								background:
								Rectangle {
									color:
									"transparent"
								}
							}
						}
					}
				}

				Label {
					id: passwordHelper
					text: qsTr("Your password must be 8 characters at least")
					wrapMode: Label.Wrap
					font.pointSize: Eduport
							.formTextFontSize
					color: "#6c757d"
				}
				RowLayout {
					Layout.fillWidth: true
					CheckBox {
						id: rememberCheckBox
						text: qsTr("Remember me")
						font {
							family: Eduport
								.bodyFont.family
							weight: Eduport
								.bodyFont.weight
							pointSize: Eduport
								.bodyFont
								.pointSize
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
							family: Eduport
								.bodyFont.family
							weight: Eduport
								.bodyFont.weight
							pointSize: Eduport
								.bodyFont
								.pointSize
						}
						horizontalAlignment: Text.AlignRight
						Layout.fillWidth: true
						linkColor: Qt.rgba(.0235, .416, .788, 1.0)
					}
				}

				Btn.Primary {
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
					wrapMode: Label.Wrap
				}

				Text {
					id: signUp
					text: "<a href=\"sign-up.html\">Signup here</a>"
					font {
						family: Eduport.bodyFont
									.family
						weight: Eduport.bodyFont
									.weight
						pointSize: Eduport.bodyFont
								.pointSize
						underline: false
					}
					linkColor: Qt.rgba(.0235, .416, .788, 1.0)
				}
			}
		}
	}
}

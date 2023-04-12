import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Bootstrap 5.3
import Eduport 1.4
import "../TextField" as TxtFld
import "../Button" as Btn

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

					Label {
						Layout.fillWidth: true
						text: titleHeader
						wrapMode: Label.Wrap
						Bootstrap.heading: 2
					}

					Label {
						id: titleParagraph
						color: "#6c757d"
						text: qsTr("Nice to see you! Please Sign up with your account.")
						wrapMode: Label.Wrap
						Layout.fillWidth: true
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

								ColorOverlay {
									color:
									Eduport
									.bsSecondary
									source:
									parent
									anchors
									.fill:
									parent
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

								ColorOverlay {
									color:
									Eduport
									.bsSecondary
									source:
									parent
									anchors
									.fill:
									parent
								}
							}

							TxtFld.Input {
								Layout
								.fillWidth: true
								Layout
								.leftMargin: -1
								id: password
								placeholderText:
								"*********"
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

				ColumnLayout {

					Label {
						text: qsTr("Confirm Password *")
						wrapMode: Label.Wrap
					}

					Rectangle {
						Layout.fillWidth: true
						implicitHeight: confirmPassword
									.height
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

								ColorOverlay {
									color:
									Eduport
									.bsSecondary
									source:
									parent
									anchors
									.fill:
									parent
								}
							}

							TxtFld.Input {
								Layout
								.fillWidth: true
								Layout
								.leftMargin: -1
								id:
								confirmPassword
								placeholderText:
								"*********"
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

				RowLayout {
					Layout.fillWidth: true

					CheckBox {
						id: agreementCheckBox
						text: "By signing up, you agree to the <a href=\"#\">terms of service</a>"
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
							text: agreementCheckBox.text
							font: agreementCheckBox.font
							verticalAlignment: Text.AlignVCenter
							leftPadding: agreementCheckBox.indicator.width + agreementCheckBox.spacing
						}
					}
				}

				Btn.Primary {
					id: button
					text: qsTr("Sign Up")
					implicitHeight: 40
					Layout.fillWidth: true
				}
			}

			RowLayout {
				Layout.alignment: Qt.AlignHCenter

				Label {
					text: qsTr("Already have an account?")
					wrapMode: Label.Wrap
				}

				Text {
					id: signIn
					text: "<a href=\"sign-in.html\">Sign in here</a>"
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

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Bootstrap 5.3
import Eduport 1.4
import "../Button" as Btn
import "Checkout"
import "Checkout/RightSidebar"

Flickable {
	property alias alert: alert
	property alias login: login
	property alias personalInfo: personalInfo
	property alias orderSummary: orderSummary
	property alias premium: premium
	contentHeight: body.height

	ColumnLayout {
		id: body
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		GridLayout {
			columns: width < 1200 ? 1 : 2
			rows: width < 1200 ? 2 : 1
			columnSpacing: 0
			rowSpacing: 0
			Layout.fillWidth: true

			ColumnLayout {
				Layout.maximumWidth: body.width < 1200
					? body.width : body.width * 2 / 3

				RowLayout {
					id: alert
					Layout.alignment: Qt.AlignHCenter

					Label {
						text: qsTr("Already have an account?")
						wrapMode: Label.Wrap
					}

					Text {
						id: login
						text: "<a href=\"sign-in.html\">" + qsTr("Log in") + "</a>"
						font {
							family: Eduport.bodyFont.family
							weight: Eduport.bodyFont.weight
							pointSize: Eduport.bodyFont.pointSize
							underline: false
						}
					}
				}

				Rectangle {
					Layout.fillWidth: true
					Layout.margins: 16
					implicitHeight: personalInfo.height
					radius: 8
					color: Eduport.bsCardBg

					PersonalInfo {
						id: personalInfo
						anchors {
							left: parent.left
							right: parent.right
						}
					}
				}
			}

			GridLayout {
				columns: width < 786 ? 1 : 2
				rows: width < 786 ? 2 : 1
				columnSpacing: 0
				rowSpacing: 0
				Layout.alignment: Qt.AlignTop

				Rectangle {
					Layout.fillWidth: true
					implicitHeight: orderSummary.height
					Layout.margins: 16
					radius: 8
					color: Eduport.bsCardBg

					OrderSummary {
						id: orderSummary
						anchors {
							left: parent.left
							right: parent.right
						}
					}
				}

				Rectangle {
					id: premium
					Layout.fillWidth: true
					implicitHeight: premiumAdCard.height
					radius: 8
					color: "#1d3b53"
					Layout.margins: 16

					ColumnLayout {
						id: premiumAdCard
						anchors {
							left: parent.left
							right: parent.right
						}
						Layout.margins: 16

						Label {
							text: qsTr("Access 25K Online courses from 120 institutions, Start today!")
							wrapMode: Label.Wrap
							Bootstrap.heading: 5
							color: "#ffffff"
							Layout.fillWidth: true
							Layout.rightMargin: 16
							Layout.leftMargin: 16
							Layout.topMargin: 16
						}

						Label {
							text: qsTr("Here is the description of premium features which will allow users to get benefits and save a lot of money")
							color: "#ffffff"
							wrapMode: Label.Wrap
							Layout.fillWidth: true
							Layout.margins: 16
						}

						Button {
							id: premiumButton 
							text: qsTr("Purchase Premium")
							font: Eduport.bsBtnFont
							Layout.margins: 16
							implicitHeight: 36
							contentItem: Text {
								color: "#000000"
								text: premiumButton.text
								font: premiumButton.font
								horizontalAlignment: Text.AlignHCenter
								verticalAlignment: Text.AlignVCenter
							}
							background: Rectangle {
								color: "#f7c32e"
								radius: 8
							}
						}
					}
				}
			}
		}
	}
}

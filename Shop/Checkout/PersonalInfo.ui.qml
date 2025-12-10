import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Bootstrap
import Eduport
import "../../TextField"
import "PersonalInfo/PaymentMethod"

ColumnLayout {
	property alias name: name
	property alias email: email
	property alias mobile: mobile
	property alias country: country
	property alias state: province
	property alias postal: postal
	property alias address: address
	property alias paymentMethodNetBanking: paymentMethodNetBanking

	Label {
		text: qsTr("Personal Details")
		wrapMode: Label.Wrap
		Bootstrap.heading: 5
		Layout.fillWidth: true
		Layout.rightMargin: 16
		Layout.leftMargin: 16
		Layout.topMargin: 16
	}

	GridLayout {
		Layout.margins: 16
		columns: body.width < 768 ? 1 : 2
		rows: body.width < 768 ? 4 : 7
		columnSpacing: 0
		rowSpacing: 16

		ColumnLayout {

			Label {
				text: qsTr("Your name *")
				wrapMode: Label.Wrap
				Layout.fillWidth: true
			}

			Rectangle {
				implicitHeight: 56
				color: "#f5f7f9"
				radius: 8
				border.width: 0
				Layout.fillWidth: true
				RowLayout {
					anchors.fill: parent
					Input {
						id: name
						placeholderText: qsTr("Name")
						Layout.fillWidth: true
						Layout.fillHeight: true
					}
				}
			}
		}

		ColumnLayout {

			Label {
				text: qsTr("Email address *")
				wrapMode: Label.Wrap
				Layout.fillWidth: true
			}

			Rectangle {
				implicitHeight: 56
				color: "#f5f7f9"
				radius: 8
				border.width: 0
				Layout.fillWidth: true
				RowLayout {
					anchors.fill: parent
					Input {
						id: email
						placeholderText: qsTr("Email")
						Layout.fillWidth: true
						Layout.fillHeight: true
					}
				}
			}
		}

		ColumnLayout {

			Label {
				text: qsTr("Mobile number *")
				wrapMode: Label.Wrap
				Layout.fillWidth: true
			}

			Rectangle {
				implicitHeight: 56
				color: "#f5f7f9"
				radius: 8
				border.width: 0
				Layout.fillWidth: true
				RowLayout {
					anchors.fill: parent
					Input {
						id: mobile
						placeholderText:
							qsTr("Mobile number")
						Layout.fillWidth: true
						Layout.fillHeight: true
					}
				}
			}
		}

		ColumnLayout {

			Label {
				text: qsTr("Select country *")
				wrapMode: Label.Wrap
				Layout.fillWidth: true
			}
			Rectangle {
				implicitHeight: 56
				color: "#f5f7f9"
				radius: 8
				border.width: 0
				Layout.fillWidth: true
				RowLayout {
					anchors.fill: parent
					Input {
						id: country
						placeholderText:
							qsTr("Select country")
						Layout.fillWidth: true
						Layout.fillHeight: true
					}
				}
			}
		}

		ColumnLayout {

			Label {
				text: qsTr("Select state *")
				wrapMode: Label.Wrap
				Layout.fillWidth: true
			}

			Rectangle {
				implicitHeight: 56
				color: "#f5f7f9"
				radius: 8
				border.width: 0
				Layout.fillWidth: true
				RowLayout {
					anchors.fill: parent
					Input {
						id: province
						placeholderText:
							qsTr("Select state")
						Layout.fillWidth: true
						Layout.fillHeight: true
					}
				}
			}
		}

		ColumnLayout {

			Label {
				text: qsTr("Postal code *")
				wrapMode: Label.Wrap
				Layout.fillWidth: true
			}

			Rectangle {
				implicitHeight: 56
				color: "#f5f7f9"
				radius: 8
				border.width: 0
				Layout.fillWidth: true
				RowLayout {
					anchors.fill: parent
					Input {
						id: postal
						placeholderText:
								qsTr("PIN code")
						Layout.fillWidth: true
						Layout.fillHeight: true
					}
				}
			}
		}

		ColumnLayout {

			Label {
				text: qsTr("Address *")
				wrapMode: Label.Wrap
				Layout.fillWidth: true
			}

			Rectangle {
				implicitHeight: 56
				color: "#f5f7f9"
				radius: 8
				border.width: 0
				Layout.fillWidth: true
				RowLayout {
					anchors.fill: parent
					Input {
						id: address
						placeholderText: qsTr("Address")
						Layout.fillWidth: true
						Layout.fillHeight: true
					}
				}
			}
		}
	}

	ColumnLayout {

		Label {
			text: qsTr("Payment method")
			wrapMode: Label.Wrap
			Bootstrap.heading: 5
			Layout.fillWidth: true
			Layout.margins: 16
		}

		ColumnLayout {

			Rectangle {
				implicitHeight: paymentCard.height
				Layout.margins: 16
				Layout.fillWidth: true
				border.width: 1
				radius: 8
				border.color: "#4d000000"
				color: Eduport.bsAccordionBg

				ColumnLayout {
					id: paymentCard
					anchors {
						left: parent.left
						right: parent.right
					}
					Label {
						text:
						qsTr("Credit or Debit Card")
						wrapMode: Label.Wrap
						Layout.fillWidth: true
						padding: 16
					}
				}
			}

			Rectangle {
				implicitHeight: paymentMethodNetBanking.height
				Layout.margins: 16
				Layout.fillWidth: true
				border.width: 1
				radius: 8
				border.color: "#4d000000"
				color: Eduport.bsAccordionBg

				NetBanking {
					id: paymentMethodNetBanking
					anchors {
						left: parent.left
						right: parent.right
					}
				}
			}
		}
	}
}


import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Eduport 1.4
import "../../TextField"
import "../../Label"

ColumnLayout {
	property alias name: name
	property alias email: email
	property alias mobile: mobile
	property alias country: country
	property alias state: province
	property alias postal: postal
	property alias address: address
	property alias banks: banks

	H5 {
		text: qsTr("Personal Details")
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

			Body {
				text: qsTr("Your name *")
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

			Body {
				text: qsTr("Email address *")
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

			Body {
				text: qsTr("Mobile number *")
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

			Body {
				text: qsTr("Select country *")
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

			Body {
				text: qsTr("Select state *")
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

			Body {
				text: qsTr("Postal code *")
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

			Body {
				text: qsTr("Address *")
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

		H5 {
			text: qsTr("Payment method")
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

				ColumnLayout {
					id: paymentCard
					anchors {
						left: parent.left
						right: parent.right
					}
					Body {
						text:
						qsTr("Credit or Debit Card")
						Layout.fillWidth: true
						padding: 16
					}
				}
			}

			Rectangle {
				implicitHeight: paymentNetBanking.height
				Layout.margins: 16
				Layout.fillWidth: true
				border.width: 1
				radius: 8
				border.color: "#4d000000"

				ColumnLayout {
					id: paymentNetBanking
					anchors {
						left: parent.left
						right: parent.right
					}

					Body {
						text:
						qsTr("Pay with Net Banking")
						Layout.fillWidth: true
						Layout.rightMargin: 16
						Layout.leftMargin: 16
						Layout.topMargin: 16
					}

					ColumnLayout {
						Layout.margins: 16
						Body {
							text: qsTr("In order to complete your transaction, we will transfer you over to Eduport secure servers.")
							Layout.fillWidth: true
						}

						Body {
							text: qsTr("Select your bank from the drop-down list and click proceed to continue with your payment.")
							Layout.fillWidth: true
						}

						ComboBox {
							id: banks
							Layout.fillWidth: true
							font.pointSize: 14
							font.family: "roboto"
							Layout.topMargin: 24
							model: ListModel {
								ListElement {
									label: "Please choose one"
								}
								ListElement {
									label: "Bank of America"
								}
								ListElement {
									label: "Bank of India"
								}
								ListElement {
									label: "Bank of London"
								}
							}
							delegate: ItemDelegate {
								contentItem: Text {
									text: label
									font {
										family: Eduport.bodyFont.family
										weight: Eduport.bodyFont.weight
										pointSize: Eduport.bodyFont.pointSize
									}
								}
							}
							background: Rectangle {
								radius: 8
								implicitHeight: 36
								implicitWidth: 200
								color: "#f5f7f9"
							}
						}
					}
				}
			}
		}
	}
}


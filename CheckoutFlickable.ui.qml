import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	property alias checkoutAlert: alert
	property alias checkoutLogin: login
	property alias checkoutName: name
	property alias checkoutEmail: email
	property alias checkoutMobile: mobile
	property alias checkoutCountry: country
	property alias checkoutState: province
	property alias checkoutPostal: postal
	property alias checkoutAddress: address
	contentHeight: main.height

	ColumnLayout {
		id: main
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		RowLayout {
			id: alert
			Layout.alignment: Qt.AlignHCenter
			Label {
				text: qsTr("Already have an account?")
			}
			Text {
				id: login
				text: "<a href=\"sign-in.html\">Log in</a>"
				font.underline: false
			}
		}

		GridLayout {
			ColumnLayout {
				Label {
					text: qsTr("Your name *")
					Layout.fillWidth: true
				}
				TextField {
					id: name
					placeholderText: qsTr("Name")
					Layout.fillWidth: true
				}

				Layout.topMargin: 16
				Layout.leftMargin: 8
				Layout.rightMargin: 8
			}

			ColumnLayout {
				Label {
					text: qsTr("Email address *")
					Layout.fillWidth: true
				}
				TextField {
					id: email
					placeholderText: qsTr("Email")
					Layout.fillWidth: true
				}

				Layout.topMargin: 16
				Layout.leftMargin: 8
				Layout.rightMargin: 8
			}

			ColumnLayout {
				Label {
					text: qsTr("Mobile number *")
					Layout.fillWidth: true
				}
				TextField {
					id: mobile
					placeholderText: qsTr("Mobile number")
					Layout.fillWidth: true
				}

				Layout.topMargin: 16
				Layout.leftMargin: 8
				Layout.rightMargin: 8
			}

			ColumnLayout {
				Label {
					text: qsTr("Select country *")
					Layout.fillWidth: true
				}
				TextField {
					id: country
					placeholderText: qsTr("Select country")
					Layout.fillWidth: true
				}

				Layout.topMargin: 16
				Layout.leftMargin: 8
				Layout.rightMargin: 8
			}

			ColumnLayout {
				Label {
					text: qsTr("Select state *")
					Layout.fillWidth: true
				}
				TextField {
					id: province
					placeholderText: qsTr("Select state")
					Layout.fillWidth: true
				}

				Layout.topMargin: 16
				Layout.leftMargin: 8
				Layout.rightMargin: 8
			}

			ColumnLayout {
				Label {
					text: qsTr("Postal code *")
					Layout.fillWidth: true
				}
				TextField {
					id: postal
					placeholderText: qsTr("PIN code")
					Layout.fillWidth: true
				}

				Layout.topMargin: 16
				Layout.leftMargin: 8
				Layout.rightMargin: 8
			}

			ColumnLayout {
				Label {
					text: qsTr("Address *")
					Layout.fillWidth: true
				}
				TextField {
					id: address
					placeholderText: qsTr("Address")
					Layout.fillWidth: true
				}

				Layout.topMargin: 16
				Layout.leftMargin: 8
				Layout.rightMargin: 8
			}

			width: parent.width
			columns: width < 786 ? 1 : 2
			rows: width < 786 ? 4 : 7
			columnSpacing: 0
			rowSpacing: 0
		}

		ColumnLayout {
			Label {
				text: qsTr("Payment method")
				Layout.fillWidth: true
			}
			ColumnLayout {
				Frame {
					Layout.fillWidth: true
					ColumnLayout {
						anchors.fill: parent
							Label {
								text: qsTr("Credit or Debit Card")
								Layout.fillWidth: true
							}
					}
				}
				Frame {
					Layout.fillWidth: true
					ColumnLayout {
						anchors.fill: parent
						Label {
							text: qsTr("Pay with Net Banking")
							Layout.fillWidth: true
						}
						ColumnLayout {
							Label {
								text: qsTr("In order to complete your transaction, we will transfer you over to Eduport secure servers. ")
								Layout.fillWidth: true
								wrapMode: Text.Wrap
							}
							Label {
								text: qsTr("Select your bank from the drop-down list and click proceed to continue with your payment.")
								Layout.fillWidth: true
								wrapMode: Text.Wrap
							}
							ComboBox {
								model: ListModel {
									ListElement {
										text: "Bank of America"
									}
									ListElement {
										text: "Bank of India"
									}
									ListElement {
										text: "Bank of London"
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

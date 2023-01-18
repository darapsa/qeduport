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
	contentHeight: container.height

	GridLayout {
		id: container
		columns: width < 1200 ? 1 : 2
		rows: width < 1200 ? 2 : 1
		columnSpacing: 0
		rowSpacing: 0
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		ColumnLayout {

			RowLayout {
				id: alert
				Layout.alignment: Qt.AlignHCenter

				Label {
					text: qsTr("Already have an account?")
					font.pixelSize: 15
				}

				Text {
					id: login
					text: "<a href=\"sign-in.html\">"
						+ qsTr("Log in") + "</a>"
					font.pixelSize: 15
					font.underline: false
				}
			}

			ColumnLayout {

				Label {
					text: qsTr("Personal Details")
					font.pixelSize: 21
					Layout.fillWidth: true
				}

				GridLayout {
					columns: width < 768 ? 1 : 2
					rows: width < 768 ? 4 : 7
					columnSpacing: 0
					rowSpacing: 0

					ColumnLayout {
						Layout.topMargin: 16
						Layout.leftMargin: 8
						Layout.rightMargin: 8

						Label {
							text: qsTr("Your name *")
							font.pixelSize: 15
							Layout.fillWidth: true
						}

						TextField {
							id: name
							placeholderText: qsTr("Name")
							font.pixelSize: 15
							Layout.fillWidth: true
						}
					}

					ColumnLayout {
						Layout.topMargin: 16
						Layout.leftMargin: 8
						Layout.rightMargin: 8

						Label {
							text: qsTr("Email address *")
							font.pixelSize: 15
							Layout.fillWidth: true
						}

						TextField {
							id: email
							placeholderText: qsTr("Email")
							font.pixelSize: 15
							Layout.fillWidth: true
						}
					}

					ColumnLayout {
						Layout.topMargin: 16
						Layout.leftMargin: 8
						Layout.rightMargin: 8

						Label {
							text: qsTr("Mobile number *")
							font.pixelSize: 15
							Layout.fillWidth: true
						}

						TextField {
							id: mobile
							placeholderText: qsTr("Mobile number")
							font.pixelSize: 15
							Layout.fillWidth: true
						}
					}

					ColumnLayout {
						Layout.topMargin: 16
						Layout.leftMargin: 8
						Layout.rightMargin: 8

						Label {
							text: qsTr("Select country *")
							font.pixelSize: 15
							Layout.fillWidth: true
						}

						TextField {
							id: country
							placeholderText: qsTr("Select country")
							font.pixelSize: 15
							Layout.fillWidth: true
						}
					}

					ColumnLayout {
						Layout.topMargin: 16
						Layout.leftMargin: 8
						Layout.rightMargin: 8

						Label {
							text: qsTr("Select state *")
							font.pixelSize: 15
							Layout.fillWidth: true
						}

						TextField {
							id: province
							placeholderText: qsTr("Select state")
							font.pixelSize: 15
							Layout.fillWidth: true
						}
					}

					ColumnLayout {
						Layout.topMargin: 16
						Layout.leftMargin: 8
						Layout.rightMargin: 8

						Label {
							text: qsTr("Postal code *")
							font.pixelSize: 15
							Layout.fillWidth: true
						}

						TextField {
							id: postal
							placeholderText: qsTr("PIN code")
							font.pixelSize: 15
							Layout.fillWidth: true
						}
					}

					ColumnLayout {
						Layout.topMargin: 16
						Layout.leftMargin: 8
						Layout.rightMargin: 8

						Label {
							text: qsTr("Address *")
							font.pixelSize: 15
							Layout.fillWidth: true
						}

						TextField {
							id: address
							placeholderText: qsTr("Address")
							font.pixelSize: 15
							Layout.fillWidth: true
						}
					}
				}

				ColumnLayout {

					Label {
						text: qsTr("Payment method")
						font.pixelSize: 21
						Layout.fillWidth: true
					}

					ColumnLayout {

						Frame {
							Layout.fillWidth: true

							ColumnLayout {
								anchors.fill: parent

								Label {
									text: qsTr("Credit or Debit Card")
									font.pixelSize: 15
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
									font.pixelSize: 15
									Layout.fillWidth: true
								}

								ColumnLayout {

									Label {
										text: qsTr("In order to complete your transaction, we will transfer you over to Eduport secure servers.")
										font.pixelSize: 15
										wrapMode: Text.Wrap
										Layout.fillWidth: true
									}

									Label {
										text: qsTr("Select your bank from the drop-down list and click proceed to continue with your payment.")
										font.pixelSize: 15
										wrapMode: Text.Wrap
										Layout.fillWidth: true
									}

									ComboBox {
										model: ListModel {
											ListElement {
												text: "Please choose one"
											}
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

		GridLayout {
			columns: width < 786 ? 1 : 2
			rows: width < 786 ? 2 : 1
			columnSpacing: 0
			rowSpacing: 0
			Layout.alignment: Qt.AlignTop

			Frame {
				Layout.fillWidth: true

				ColumnLayout {
					anchors.fill: parent

					Label {
						text: qsTr("Order Summary")
						font.pixelSize: 21
						Layout.fillWidth: true
					}

					ColumnLayout {

						Item {
							Layout.fillWidth: true
							implicitHeight: codeLabel.implicitHeight
								+ codeValue.implicitHeight

							Label {
								id: codeLabel
								text: qsTr("Transaction code")
								font.pixelSize: 15
								anchors.verticalCenter: parent.verticalCenter
							}

							Label {
								id: codeValue
								text: "AB12365E"
								font.pixelSize: 15
								anchors {
									right: parent.right
									verticalCenter: parent.verticalCenter
								}
							}
						}

						RowLayout {

							TextField {
								placeholderText: qsTr("COUPON CODE")
								font.pixelSize: 15
								Layout.fillWidth: true
							}

							Button {
								text: qsTr("Apply")
								font.pixelSize: 15
							}
						}
					}

					ColumnLayout {

						Item {
							Layout.fillWidth: true
							implicitHeight: priceLabel.implicitHeight
								+ priceValue.implicitHeight

							Label {
								id: priceLabel
								text: qsTr("Original Price")
								font.pixelSize: 15
								anchors.verticalCenter: parent.verticalCenter
							}

							Label {
								id: priceValue
								text: "$500"
								font.pixelSize: 15
								anchors {
									right: parent.right
									verticalCenter: parent.verticalCenter
								}
							}
						}

						Item {
							Layout.fillWidth: true
							implicitHeight: discountLabel.implicitHeight
								+ discountValue.implicitHeight

							Label {
								id: discountLabel
								text: qsTr("Coupon Discount")
								font.pixelSize: 15
								anchors.verticalCenter: parent.verticalCenter
							}

							Label {
								id: discountValue
								text: "-" + "$20"
								font.pixelSize: 15
								anchors {
									right: parent.right
									verticalCenter: parent.verticalCenter
								}
							}
						}

						Item {
							Layout.fillWidth: true
							implicitHeight: totalLabel.implicitHeight
								+ totalValue.implicitHeight

							Label {
								id: totalLabel
								text: qsTr("Total")
								font.pixelSize: 21
								anchors.verticalCenter: parent.verticalCenter
							}

							Label {
								id: totalValue
								text: "$480"
								font.pixelSize: 21
								anchors {
									right: parent.right
									verticalCenter: parent.verticalCenter
								}
							}
						}
					}

					Button {
						text: qsTr("Place Order")
						font.pixelSize: 15
						Layout.fillWidth: true
					}
				}
			}

			Frame {
				Layout.fillWidth: true
				Layout.alignment: Qt.AlignTop

				ColumnLayout {
					anchors.fill: parent

					Label {
						text: qsTr("Access 25K Online courses from 120 institutions, Start today!")
						Layout.fillWidth: true
						wrapMode: Text.Wrap
					}

					Label {
						text: qsTr("Here is the description of premium features which will allow users to get benefits and save a lot of money")
						Layout.fillWidth: true
						wrapMode: Text.Wrap
					}

					Button {
						text: qsTr("Purchase Premium")
						Layout.fillWidth: true
					}
				}
			}
		}
	}
}

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
	property alias checkoutBanks: banks
	property alias checkoutTotalValue: totalValue
	property alias checkoutPlaceOrder: placeOrder
	property alias checkoutPremium: premium
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

				RowLayout {
					id: alert
					Layout.alignment: Qt.AlignHCenter

					Label {
						text: qsTr("Already have an account?")
						font.pointSize: 15
					}

					Text {
						id: login
						text: "<a href=\"sign-in.html\">" + qsTr(
								  "Log in") + "</a>"
						font.pointSize: 15
						font.underline: false
					}
				}

				Rectangle {
					Layout.fillWidth: true
					implicitHeight: personal.height
					Layout.margins: 16
					radius: 8
					ColumnLayout {
						id: personal
						anchors {
							left: parent.left
							right: parent.right
						}

						Label {
							text: qsTr("Personal Details")
							font.pointSize: 22
							font.family: "roboto"
							Layout.fillWidth: true
							Layout.rightMargin: 16
							Layout.leftMargin: 16
							Layout.topMargin: 16
						}

						GridLayout {
							Layout.margins: 16
							columns: width < 768 ? 1 : 2
							rows: width < 768 ? 4 : 7
							columnSpacing: 0
							rowSpacing: 16

							ColumnLayout {

								Label {
									text: qsTr("Your name *")
									font.pointSize: 12
									font.family: "roboto"
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
										TextField {
											id: name
											placeholderText: qsTr("Name")
											font.pointSize: 16
											font.family: "roboto"
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
									text: qsTr("Email address *")
									font.pointSize: 12
									font.family: "roboto"
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
										TextField {
											id: email
											placeholderText: qsTr("Email")
											font.pointSize: 16
											font.family: "roboto"
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
									text: qsTr("Mobile number *")
									font.pointSize: 12
									font.family: "roboto"
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
										TextField {
											id: mobile
											placeholderText: qsTr("Mobile number")
											font.pointSize: 16
											font.family: "roboto"
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
									text: qsTr("Select country *")
									font.pointSize: 12
									font.family: "roboto"
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
										TextField {
											id: country
											placeholderText: qsTr("Select country")
											font.pointSize: 16
											font.family: "roboto"
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
									text: qsTr("Select state *")
									font.pointSize: 12
									font.family: "roboto"
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
										TextField {
											id: province
											placeholderText: qsTr(
																 "Select state")
											font.pointSize: 16
											font.family: "roboto"
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
									text: qsTr("Postal code *")
									font.pointSize: 12
									font.family: "roboto"
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
										TextField {
											id: postal
											placeholderText: qsTr("PIN code")
											font.pointSize: 16
											font.family: "roboto"
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
									text: qsTr("Address *")
									font.pointSize: 12
									font.family: "roboto"
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
										TextField {
											id: address
											placeholderText: qsTr("Address")
											font.pointSize: 16
											font.family: "roboto"
											Layout.fillWidth: true
											Layout.fillHeight: true
											background: Rectangle {
												color: "transparent"
											}
										}
									}
								}
							}
						}

						ColumnLayout {

							Label {
								text: qsTr("Payment method")
								font.pointSize: 22
								font.family: "roboto"
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
										Label {
											text: qsTr("Credit or Debit Card")
											font.pointSize: 16
											font.family: "roboto"
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

										Label {
											text: qsTr("Pay with Net Banking")
											font.pointSize: 16
											font.family: "roboto"
											Layout.fillWidth: true
											Layout.rightMargin: 16
											Layout.leftMargin: 16
											Layout.topMargin: 16
										}

										ColumnLayout {
											Layout.margins: 16
											Label {
												text: qsTr("In order to complete your transaction, we will transfer you over to Eduport secure servers.")
												font.pointSize: 14
												font.family: "roboto"
												wrapMode: Text.Wrap
												Layout.fillWidth: true
											}

											Label {
												text: qsTr("Select your bank from the drop-down list and click proceed to continue with your payment.")
												font.pointSize: 14
												font.family: "roboto"
												wrapMode: Text.Wrap
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
														font.pointSize: 16
														font.family: "roboto"
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

					ColumnLayout {
						id: orderSummary
						anchors {
							left: parent.left
							right: parent.right
						}
						Label {
							text: qsTr("Order Summary")
							font.pointSize: 22
							font.family: "roboto"
							Layout.fillWidth: true
							Layout.rightMargin: 16
							Layout.leftMargin: 16
							Layout.topMargin: 16
						}

						ColumnLayout {
							Layout.margins: 16
							spacing: 16

							Item {
								Layout.fillWidth: true
								implicitHeight: codeLabel.implicitHeight + codeValue.implicitHeight

								Label {
									id: codeLabel
									text: qsTr("Transaction code")
									font.pointSize: 14
									font.family: "roboto"
									anchors.verticalCenter: parent.verticalCenter
								}

								Label {
									id: codeValue
									text: "AB12365E"
									font.pointSize: 14
									font.family: "roboto"
									anchors {
										right: parent.right
										verticalCenter: parent.verticalCenter
									}
								}
							}

							RowLayout {

								Rectangle {
									implicitHeight: 56
									color: "#f5f7f9"
									radius: 8
									border.width: 0
									Layout.fillWidth: true
									RowLayout {
										anchors.fill: parent
										TextField {
											placeholderText: qsTr("COUPON CODE")
											font.pointSize: 16
											font.family: "roboto"
											Layout.fillWidth: true
											Layout.fillHeight: true
											background: Rectangle {
												color: "transparent"
											}
										}
									}
								}

								Button {
									text: qsTr("Apply")
									font.pointSize: 14
									font.family: "roboto"
									implicitHeight: 56
									contentItem: Text {
										color: "#ffffff"
										text: "Apply"
										padding: 12
										horizontalAlignment: Text.AlignHCenter
										verticalAlignment: Text.AlignVCenter
										font.weight: Font.Medium
										font.family: "Roboto"
										font.pointSize: 14
									}

									background: Rectangle {
										color: "#066ac9"
										radius: 8
									}
								}
							}
						}

						ColumnLayout {
							Layout.margins: 16
							Item {
								Layout.fillWidth: true
								implicitHeight: priceLabel.implicitHeight
												+ priceValue.implicitHeight

								Label {
									id: priceLabel
									text: qsTr("Original Price")
									font.pointSize: 15
									anchors.verticalCenter: parent.verticalCenter
								}

								Label {
									id: priceValue
									text: "$500"
									font.pointSize: 15
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
									font.pointSize: 15
									anchors.verticalCenter: parent.verticalCenter
								}

								Label {
									id: discountValue
									text: "-" + "$20"
									font.pointSize: 15
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
									font.pointSize: 21
									anchors.verticalCenter: parent.verticalCenter
								}

								Label {
									id: totalValue
									text: "$480"
									font.pointSize: 21
									anchors {
										right: parent.right
										verticalCenter: parent.verticalCenter
									}
								}
							}
						}

						Button {
							id: placeOrder
							Layout.margins: 16
							Layout.fillWidth: true
							text: qsTr("Place Order")
							font.pointSize: 14
							font.family: "roboto"
							implicitHeight: 36
							contentItem: Text {
								color: "#ffffff"
								text: "Place order"
								horizontalAlignment: Text.AlignHCenter
								verticalAlignment: Text.AlignVCenter
								font.weight: Font.Medium
								font.family: "Roboto"
								font.pointSize: 14
							}
							background: Rectangle {
								color: "#0cbc87"
								radius: 8
							}
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
							wrapMode: Text.Wrap
							font.pointSize: 22
							font.family: "roboto"
							color: "#ffffff"
							Layout.fillWidth: true
							Layout.rightMargin: 16
							Layout.leftMargin: 16
							Layout.topMargin: 16
						}

						Label {
							text: qsTr("Here is the description of premium features which will allow users to get benefits and save a lot of money")
							font.pointSize: 16
							font.family: "roboto"
							color: "#ffffff"
							wrapMode: Text.Wrap
							Layout.fillWidth: true
							Layout.margins: 16
						}

						Button {
							text: qsTr("Purchase Premium")
							font.pointSize: 14
							Layout.margins: 16
							font.family: "roboto"
							implicitHeight: 36
							contentItem: Text {
								color: "#000000"
								text: "Purchase premium"
								horizontalAlignment: Text.AlignHCenter
								verticalAlignment: Text.AlignVCenter
								font.weight: Font.Medium
								font.family: "Roboto"
								font.pointSize: 14
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

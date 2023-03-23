import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Bootstrap 5.3
import Eduport 1.4
import "../TextField" as TxtFld
import "../Label" as Lbl

Flickable {
	property alias alert: alert
	property alias login: login
	property alias name: name
	property alias email: email
	property alias mobile: mobile
	property alias country: country
	property alias state: province
	property alias postal: postal
	property alias address: address
	property alias banks: banks
	property alias courseItems: courseItems
	property alias priceValue: priceValue
	property alias discountValue: discountValue
	property alias totalValue: totalValue
	property alias placeOrder: placeOrder
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

					Lbl.Body {
						text: qsTr("Already have an account?")
					}

					Text {
						id: login
						text: "<a href=\"sign-in.html\">" + qsTr("Log in") + "</a>"
						font {
							family: Bootstrap.bodyFont.family
							weight: Bootstrap.bodyFont.weight
							pointSize: Bootstrap.bodyFont.pointSize
							underline: false
						}
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

						Lbl.H5 {
							text: qsTr("Personal Details")
							Layout.fillWidth: true
							Layout.rightMargin: 16
							Layout.leftMargin: 16
							Layout.topMargin: 16
						}

						GridLayout {
							Layout.margins: 16
							columns: body.width
								< 768 ? 1 : 2
							rows: body.width < 768
								? 4 : 7
							columnSpacing: 0
							rowSpacing: 16

							ColumnLayout {

								Lbl.Body {
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
										TxtFld.Input {
											id: name
											placeholderText: qsTr("Name")
											Layout.fillWidth: true
											Layout.fillHeight: true
										}
									}
								}
							}

							ColumnLayout {

								Lbl.Body {
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
										TxtFld.Input {
											id: email
											placeholderText: qsTr("Email")
											Layout.fillWidth: true
											Layout.fillHeight: true
										}
									}
								}
							}

							ColumnLayout {

								Lbl.Body {
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
										TxtFld.Input {
											id: mobile
											placeholderText: qsTr("Mobile number")
											Layout.fillWidth: true
											Layout.fillHeight: true
										}
									}
								}
							}

							ColumnLayout {

								Lbl.Body {
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
										TxtFld.Input {
											id: country
											placeholderText: qsTr("Select country")
											Layout.fillWidth: true
											Layout.fillHeight: true
										}
									}
								}
							}

							ColumnLayout {

								Lbl.Body {
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
										TxtFld.Input {
											id: province
											placeholderText: qsTr("Select state")
											Layout.fillWidth: true
											Layout.fillHeight: true
										}
									}
								}
							}

							ColumnLayout {

								Lbl.Body {
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
										TxtFld.Input {
											id: postal
											placeholderText: qsTr("PIN code")
											Layout.fillWidth: true
											Layout.fillHeight: true
										}
									}
								}
							}

							ColumnLayout {

								Lbl.Body {
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
										TxtFld.Input {
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

							Lbl.H5 {
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
										Lbl.Body {
											text: qsTr("Credit or Debit Card")
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

										Lbl.Body {
											text: qsTr("Pay with Net Banking")
											Layout.fillWidth: true
											Layout.rightMargin: 16
											Layout.leftMargin: 16
											Layout.topMargin: 16
										}

										ColumnLayout {
											Layout.margins: 16
											Lbl.Body {
												text: qsTr("In order to complete your transaction, we will transfer you over to Eduport secure servers.")
												Layout.fillWidth: true
											}

											Lbl.Body {
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
															family: Bootstrap.bodyFont.family
															weight: Bootstrap.bodyFont.weight
															pointSize: Bootstrap.bodyFont.pointSize
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

						Lbl.H4 {
							text: qsTr("Order Summary")
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
										TxtFld.Input {
											placeholderText: qsTr("COUPON CODE")
											Layout.fillWidth: true
											Layout.fillHeight: true
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

						ListView {
							id: courseItems
							interactive: false
							Layout.fillWidth: true
							implicitHeight: count * (width * 400 / 533 + (width < 362 ? 37.5 : 18.75) + 86.5)
							model: ListModel {
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
									title: "Sketch from A to Z: for app designer"
									price: "$150"
								}
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/18.jpg"
									title: "The Complete Video Production Bootcamp"
									price: "$350"
								}
							}
							delegate: Course {
								width: courseItems.width
								imageSource: image
								titleText: title
								priceText: price
							}
						}

						Rectangle {
							Layout.fillWidth: true
							Layout.topMargin: 16
							Layout.bottomMargin: 16
							height: 1
							border {
								width: .5
								color: "#0a000000"
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
									font {
										family: Eduport.fwLightFont.family
										weight: Eduport.fwLightFont.weight
										pointSize: Eduport.h6FontSize
									}
									anchors.verticalCenter: parent.verticalCenter
								}

								Lbl.H6 {
									id: priceValue
									text: "$500"
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
									font {
										family: Eduport.fwLightFont.family
										weight: Eduport.fwLightFont.weight
										pointSize: Eduport.h6FontSize
									}
									anchors.verticalCenter: parent.verticalCenter
								}

								Lbl.Body {
									id: discountValue
									text: "-$20"
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

								Lbl.H5 {
									id: totalLabel
									text: qsTr("Total")
									anchors.verticalCenter: parent.verticalCenter
								}

								Lbl.H5 {
									id: totalValue
									text: "$480"
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
							font: Bootstrap.btnFont
							implicitHeight: 36
							contentItem: Text {
								text: placeOrder.text
								font: placeOrder.font
								color: "#ffffff"
								horizontalAlignment: Text.AlignHCenter
								verticalAlignment: Text.AlignVCenter
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

						Lbl.H5 {
							text: qsTr("Access 25K Online courses from 120 institutions, Start today!")
							color: "#ffffff"
							Layout.fillWidth: true
							Layout.rightMargin: 16
							Layout.leftMargin: 16
							Layout.topMargin: 16
						}

						Lbl.Body {
							text: qsTr("Here is the description of premium features which will allow users to get benefits and save a lot of money")
							color: "#ffffff"
							Layout.fillWidth: true
							Layout.margins: 16
						}

						Button {
							id: premiumButton 
							text: qsTr("Purchase Premium")
							font: Bootstrap.btnFont
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

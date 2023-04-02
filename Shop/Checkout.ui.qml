import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Eduport 1.4
import "../TextField" as TxtFld
import "../Label" as Lbl
import "../Button" as Btn
import "Checkout"

Flickable {
	property alias alert: alert
	property alias login: login
	property alias personalInfo: personalInfo
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
							family: Eduport.bodyFont.family
							weight: Eduport.bodyFont.weight
							pointSize: Eduport.bodyFont.pointSize
							underline: false
						}
					}
				}

				Rectangle {
					Layout.fillWidth: true
					implicitHeight: personalInfo.height
					Layout.margins: 16
					radius: 8

					PersonalInfo {
						id: personalInfo
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

						Btn.Success {
							id: placeOrder
							Layout.margins: 16
							Layout.fillWidth: true
							text: qsTr("Place Order")
							implicitHeight: 36
							font {
								family: Eduport.bsBtnFont.family
								weight: Eduport.bsBtnFont.weight
								pointSize: Eduport.bsBtnLgFontSize
							}
							background: Rectangle {
								color: placeOrder.down ? Eduport.bsBtnSuccessActiveBG
									: placeOrder.enabled
									? Eduport.bsBtnSuccessBg
									: Eduport.bsBtnSuccessDisabledBg
								border {
									width: Eduport.bsBtnBorderWidth
									color: placeOrder.down
										? Eduport.bsBtnSuccessActiveBorderColor
										: placeOrder.enabled
										? Eduport.bsBtnSuccessBorderColor
										: Eduport.bsBtnSuccessDisabledBorderColor
								}
								radius: Eduport.bsBtnLgBorderRadius
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

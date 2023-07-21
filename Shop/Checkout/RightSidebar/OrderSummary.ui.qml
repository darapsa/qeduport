import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Bootstrap 5.3
import Eduport 1.4
import "../../../TextField"
import "../../../Button"
import "../.."

ColumnLayout {
	property alias coupon: coupon
	property alias courseItems: courseItems
	property alias priceValue: priceValue
	property alias discountValue: discountValue
	property alias totalValue: totalValue
	property alias placeOrder: placeOrder

	Label {
		text: qsTr("Order Summary")
		wrapMode: Label.Wrap
		Bootstrap.heading: 4
		Layout.fillWidth: true
		Layout.margins: 25.6
	}

	ListView {
		id: coupon
		Layout.fillWidth: true
		Layout.leftMargin: 25.6
		Layout.rightMargin: 25.6
		Layout.bottomMargin: 16
		interactive: false
		implicitHeight: 87
		model: 1
		delegate: ColumnLayout {
			Bootstrap.mode: coupon.Bootstrap.mode
			width: coupon.width
			spacing: 8

			Item {
				Layout.fillWidth: true
				implicitHeight: codeLabel.implicitHeight
						+ codeValue.implicitHeight

				Label {
					id: codeLabel
					text: qsTr("Transaction code")
					wrapMode: Label.Wrap
					anchors.verticalCenter: parent
								.verticalCenter
				}

				Label {
					id: codeValue
					text: "AB12365E"
					wrapMode: Label.Wrap
					Bootstrap.heading: 6
					font {
						family: Eduport
							.fwLightFont.family
						weight: Eduport
							.fwLightFont.weight
						pointSize: Eduport.h6FontSize
					}
					anchors {
						right: parent.right
						verticalCenter: parent
								.verticalCenter
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
						Input {
							placeholderText:
							qsTr("COUPON CODE")
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
						horizontalAlignment: Text
								.AlignHCenter
						verticalAlignment: Text
								.AlignVCenter
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
	}

	ListView {
		id: courseItems
		interactive: false
		Layout.fillWidth: true
		Layout.leftMargin: 25.6
		Layout.rightMargin: 25.6
		implicitHeight: count
				* (width * 400 / 533
					+ (width < 362 ? 37.5 : 18.75)
					+ 86.5)
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
		Layout.leftMargin: 25.6
		Layout.rightMargin: 25.6
		Layout.bottomMargin: 16
		height: 1
		border {
			width: .5
			color: "#0a000000"
		}
	}

	ColumnLayout {
		Layout.leftMargin: 25.6
		Layout.rightMargin: 25.6

		Item {
			Layout.fillWidth: true
			implicitHeight: priceLabel.implicitHeight
						+ priceValue.implicitHeight

			Label {
				id: priceLabel
				text: qsTr("Original Price")
				wrapMode: Label.Wrap
				Bootstrap.heading: 6
				font {
					family: Eduport.fwLightFont.family
					weight: Eduport.fwLightFont.weight
					pointSize: Eduport.h6FontSize
				}
				anchors.verticalCenter: parent.verticalCenter
			}

			Label {
				id: priceValue
				text: "$500"
				wrapMode: Label.Wrap
				Bootstrap.heading: 6
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
				wrapMode: Label.Wrap
				Bootstrap.heading: 6
				font {
					family: Eduport.fwLightFont.family
					weight: Eduport.fwLightFont.weight
					pointSize: Eduport.h6FontSize
				}
				anchors.verticalCenter: parent.verticalCenter
			}

			Label {
				id: discountValue
				text: "-$20"
				wrapMode: Label.Wrap
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
				wrapMode: Label.Wrap
				Bootstrap.heading: 5
				anchors.verticalCenter: parent.verticalCenter
			}

			Label {
				id: totalValue
				text: "$480"
				wrapMode: Label.Wrap
				Bootstrap.heading: 5
				anchors {
					right: parent.right
					verticalCenter: parent.verticalCenter
				}
			}
		}
	}

	Success {
		id: placeOrder
		Layout.leftMargin: 25.6
		Layout.rightMargin: 25.6
		Layout.bottomMargin: 25.6
		Layout.fillWidth: true
		text: qsTr("Place Order")
		implicitHeight: 36
		font {
			family: Eduport.bsBtnFont.family
			weight: Eduport.bsBtnFont.weight
			pointSize: Eduport.bsBtnLgFontSize
		}
		background: Rectangle {
			color: placeOrder.down
				? Eduport.bsBtnSuccessActiveBG
				: placeOrder.enabled
					? Eduport.bsBtnSuccessBg
					: Eduport.bsBtnSuccessDisabledBg
			border {
				width: Eduport.bsBtnBorderWidth
				color: placeOrder.down
					? Eduport.bsBtnSuccessActiveBorderColor
					: placeOrder.enabled
					? Eduport.bsBtnSuccessBorderColor
					: Eduport
						.bsBtnSuccessDisabledBorderColor
			}
			radius: Eduport.bsBtnLgBorderRadius
		}
	}
}

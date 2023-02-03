import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Flickable {
	id: flickable
	property alias detailImage: image
	property alias detailPrice: price
	property alias detailOriginalPrice: originalPrice
	property alias detailDiscount: discount
	property alias detailTime: time
	property alias detailTrial: trial
	property alias detailBuy: buy
	contentHeight: body.height

	ColumnLayout {
		id: body
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		HeaderToolBar {
			Layout.fillWidth: true
		}

		Item {
			Layout.fillWidth: true
			implicitHeight: width * 1.2

			DropShadow {
				source: rectangle
				color: Qt.rgba(.113, .227, .325, .15)
				anchors.fill: rectangle
			}

			Rectangle {
				id: rectangle
				radius: 10
				anchors {
					top: parent.top
					topMargin: 25.6
					left: parent.left
					leftMargin: 12.8
					right: parent.right
					rightMargin: 12.8
					bottom: parent.bottom
				}

				Image {
					id: image
					source: "https://eduport.webestica.com/assets/images/courses/4by3/01.jpg"
					sourceSize {
						width: parent.width - 16
						height: parent.width * 3 / 4
					}
					width: sourceSize.width
					height: sourceSize.height
					anchors {
						top: parent.top
						topMargin: 8
						horizontalCenter: parent.horizontalCenter
					}
					layer.enabled: true
					layer.effect: OpacityMask {
						maskSource: Rectangle {
							width: image.width
							height: image.height
							radius: 10
						}
					}
				}

				ColumnLayout {
					width: parent.width - 16
					anchors {
						top: image.bottom
						horizontalCenter: parent.horizontalCenter
						bottom: parent.bottom
						bottomMargin: 8
					}

					RowLayout {
						Layout.topMargin: 16
						Layout.bottomMargin: 16

						ColumnLayout {

							RowLayout {
								implicitWidth: price.width + originalPrice.width + discountLabel.width
								Label {
									id: price
									text: "$150"
									font.pixelSize: 21
								}

								Label {
									id: originalPrice
									text: "$350"
									font.pixelSize: 15
									font.strikeout: true
								}

								Rectangle {
									id: discountLabel
									implicitWidth: discount.width
									implicitHeight: discount.height
									radius: 8
									color: "#6c757d"
									Label {
										id: discount
										text: qsTr("60% off")
										font.pixelSize: 14
										horizontalAlignment: Text.AlignHCenter
										verticalAlignment: Text.AlignVCenter
										padding: 4
									}
								}
							}

							RowLayout {
								id: time

								Label {
									text: qsTr("5 days left at this price")
									font.pixelSize: 15
								}
							}
						}
					}

					GridLayout {
						columns: flickable.width < 378 ? 1 : 2
						rows: flickable.width < 378 ? 2 : 1
						Layout.bottomMargin: 16

						Button {
							id: trial
							text: qsTr("Free trial")
							contentItem: Text {
								text: trial.text
								font.pixelSize: 15
								color: trial.down ? "#ffffff"
								: "#066ac9"
							}
							background: Rectangle {
								color: trial.down ? "#066ac9"
								: "#ffffff"
								border.color: "#066ac9"
								radius: 8
							}
						}

						Button {
							id: buy
							text: qsTr("Buy course")
							contentItem: Text {
								text: buy.text
								font.pixelSize: 15
								color: "#ffffff"
							}
							background: Rectangle {
								color: buy.down ? "#0aa073"
								: "#0cbc87"
								border.color: buy.down
								? "#0a966c" : "#0cbc87"
								radius: 8
							}
						}
					}
				}
			}
		}
	}
}

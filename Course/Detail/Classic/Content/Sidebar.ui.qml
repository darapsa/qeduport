import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import QtMultimedia 5.15
import Bootstrap 5.3
import "../../../../Label" as Lbl
import "../../../../Button" as Btn

ColumnLayout {
	property alias image: image
	property alias mediaPlayer: mediaPlayer
	property alias initialPrice: initialPrice
	property string priceText: "$150"
	property alias discount: discount
	property alias time: time
	property alias trial: trial
	property alias buy: buy

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
				width: parent.width - 16
				height: parent.width * 3 / 4
				anchors {
					top: parent.top
					topMargin: 8
					horizontalCenter: parent
							.horizontalCenter
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

			MediaPlayer {
				id: mediaPlayer
			}

			VideoOutput {
				anchors.fill: image
				source: mediaPlayer
			}

			Button {
				anchors.centerIn: image
				display: AbstractButton.IconOnly
				flat: true
				width: 44
				height: 44
				icon {
					width: 44
					height: 44
					color: "#ffffff"
					source: "../../../../Font-Awesome/svgs/solid/circle-play.svg"
				}
				onClicked: mediaPlayer.play()
			}

			ColumnLayout {
				width: parent.width - 16
				anchors {
					top: image.bottom
					horizontalCenter: parent
							.horizontalCenter
					bottom: parent.bottom
					bottomMargin: 8
				}

				RowLayout {
					Layout.topMargin: 16
					Layout.bottomMargin: 16

					ColumnLayout {
						spacing: 8

						RowLayout {

							Lbl.H3 {
								text: priceText
							}

							Lbl.Body {
								id: initialPrice
								text: "$350"
								color
								: "#4d000000"
								font.strikeout
									: true
							}

							Rectangle {
								id
								: discountLabel
								implicitWidth
								: discount.width
								implicitHeight
								: discount
									.height
								radius: 6
								color: "#fd7e14"

								Label {
									id: discount
									text: qsTr("60% off")
									color: "white"
									font {
										family: Bootstrap.bodyFont.family
										weight: Bootstrap.bodyFont.weight
										pointSize: Bootstrap.badgeFontSize
									}
									horizontalAlignment: Text.AlignHCenter
									verticalAlignment: Text.AlignVCenter
									topPadding: 4.46
									leftPadding: 8.29
									rightPadding: 8.29
									bottomPadding: 4.46
								}
							}
						}

						RowLayout {
							id: time

							Lbl.Body {
								text: qsTr("5 days left at this price")
								color: "#d6293e"
							}
						}
					}
				}

				RowLayout {
					Layout.topMargin: 16
					Layout.fillWidth: true
					spacing: 16

					Button {
						id: trial
						horizontalPadding: 16
						verticalPadding: 8
						text: qsTr("Free trial")
						font: Bootstrap.btnFont
						contentItem: Text {
							horizontalAlignment
								: Text
								.AlignHCenter
							text: trial.text
							font: trial.font
							color: trial.down
								? "#ffffff"
								: "#066ac9"
						}
						background: Rectangle {
							radius: 5.2
							color: trial.down
								? "#066ac9"
								: "#ffffff"
							border {
								color: "#066ac9"
								width: 1
							}
						}
					}

					Btn.Success {
						id: buy
						text: qsTr("Buy course")
					}
				}
			}
		}
	}
}

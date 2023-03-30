import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import QtMultimedia 5.15
import Eduport 1.4
import "../../../../../Label" as Lbl
import "../../../../../Button" as Btn
import "../../../../../Button/Outline" as BtnOutline

ColumnLayout {
	property alias image: image
	property alias play: play
	property alias mediaPlayer: mediaPlayer
	property alias initialPrice: initialPrice
	property string priceText: "$150"
	property alias discount: discount
	property alias time: time
	property alias trial: trial
	property alias buy: buy
	spacing: 16

	Image {
		id: image
		Layout.fillWidth: true
		Layout.maximumHeight: width * 400 / 533
		source: "https://eduport.webestica.com/assets/images/courses/4by3/01.jpg"
		fillMode: Image.PreserveAspectFit
		layer.enabled: true
		layer.effect: OpacityMask {
			maskSource: Rectangle {
				width: image.width
				height: image.height
				radius: 8
			}
		}

		MediaPlayer {
			id: mediaPlayer
		}

		VideoOutput {
			anchors.fill: parent
			source: mediaPlayer
		}

		Button {
			id: play
			anchors.centerIn: parent
			display: AbstractButton.IconOnly
			flat: true
			icon {
				width: 44
				height: 44
				color: "#ffffff"
				source: "../../../../../Font-Awesome/svgs/solid/circle-play.svg"
			}
		}
	}

	ColumnLayout {
		Layout.topMargin: 0
		Layout.margins: 16

		RowLayout {

			ColumnLayout {
				spacing: 0

				RowLayout {
					spacing: 8

					Lbl.H3 {
						text: priceText
					}

					Lbl.Body {
						id: initialPrice
						text: "$350"
						font.strikeout: true
					}

					Label {
						id: discount
						text: qsTr("60% off")
						color: "white"
						font {
							family: Eduport
								.bodyFont
								.family
							weight: Eduport
								.bodyFont
								.weight
							pointSize: Eduport
							.bsBadgeFontSize
						}
						horizontalAlignment: Text
								.AlignHCenter
						verticalAlignment: Text
								.AlignVCenter
						topPadding: 4.46
						leftPadding: 8.29
						rightPadding: 8.29
						bottomPadding: 4.46
						background: Rectangle {
							radius: 6
							color: "#fd7e14"
						}
					}
				}

				RowLayout {
					id: time
					spacing: 8

					Lbl.Body {
						text: qsTr("5 days left at this price")
						color: "#d6293e"
					}
				}
			}
		}

		RowLayout {
			Layout.topMargin: 16

			BtnOutline.Primary {
				id: trial
				text: qsTr("Free trial")
			}

			Btn.Success {
				id: buy
				text: qsTr("Buy course")
			}
		}
	}
}

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtMultimedia
import Bootstrap
import Eduport
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
	property alias share: share
	property alias shareMenu: shareMenu
	property alias shareList: shareList
	property alias buttons: buttons
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

					Label {
						text: priceText
						wrapMode: Label.Wrap
						Bootstrap.heading: 3
					}

					Label {
						id: initialPrice
						text: "$350"
						wrapMode: Label.Wrap
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

					Image {
						source: "../../../../../Font-Awesome/svgs/solid/stopwatch.svg"
						sourceSize {
							width: 13
							height: 15
						}

						ColorOverlay {
							anchors.fill: parent
							source: parent
							color: Eduport
								.bsDanger
						}
					}

					Label {
						text: qsTr("5 days left at this price")
						color: Eduport.bsDanger
						wrapMode: Label.Wrap
					}
				}
			}

			Button {
				id: share
				Layout.fillWidth: true
				display: AbstractButton.IconOnly
				icon.source: "../../../../../Font-Awesome/svgs/solid/share-nodes.svg"

				Menu {
					id: shareMenu
					ListView {
						id: shareList
						interactive: false
						implicitHeight: count * 40
						model: ListModel {
							ListElement {
								label: "Twitter"
							}
							ListElement {
								label: "Facebook"
							}
							ListElement {
								label: "LinkedIn"
							}
							ListElement {
								label: qsTr("Copy link")
							}
						}
						delegate: Button {
							text: label
						}
					}
				}
			}
		}

		GridView {
			id: buttons
			interactive: false
			Layout.topMargin: 16
			Layout.fillWidth: true
			model: 1
			delegate: RowLayout {
				Component.onCompleted: buttons.height = height
				width: buttons.width

				BtnOutline.Primary {
					text: qsTr("Free trial")
				}

				Btn.Success {
					text: qsTr("Buy course")
				}
			}
		}
	}
}

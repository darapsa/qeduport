import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Item {
	width: 350
	height: 450
	DropShadow {
		color: "#4d000000"
		source: courseVideoCard
		verticalOffset: 4
		radius: 12
		samples: 12
		anchors.fill: courseVideoCard
	}
	Rectangle {
		id: courseVideoCard
		radius: 8
		anchors.fill: parent
		anchors.rightMargin: 8
		anchors.leftMargin: 8
		anchors.bottomMargin: 8
		anchors.topMargin: 8
		ColumnLayout {
			id: courseDetailVideo
			anchors.fill: parent
			Rectangle {
				id: courseVideoThumbnail
				radius: 8
				Layout.rightMargin: 8
				Layout.leftMargin: 8
				Layout.bottomMargin: 0
				Layout.topMargin: 8
				Layout.fillHeight: true
				Layout.fillWidth: true
				Image {
					id: courseVideoImage
					source: "https://eduport.webestica.com/assets/images/courses/4by3/01.jpg"
					fillMode: Image.PreserveAspectCrop
					width: parent.width
					height: parent.height
					visible: false
				}
				OpacityMask {
					id: courseVideoMask
					anchors.fill: courseVideoThumbnail
					source: courseVideoImage
					maskSource: courseVideoThumbnail
				}
				ColorOverlay {
					anchors.fill: courseVideoMask
					source: courseVideoMask
					color: "#80000000"
				}
				Button {
					id: playVideoButton
					width: 44
					height: 44
					anchors.verticalCenter: parent.verticalCenter
					icon.height: 44
					icon.width: 44
					icon.color: "#ffffff"
					flat: true
					icon.source: "Font-Awesome/svgs/solid/circle-play.svg"
					display: AbstractButton.IconOnly
					anchors.horizontalCenter: parent.horizontalCenter
				}
			}
			RowLayout {
				id: priceAndTime
				spacing: 8
				Layout.rightMargin: 16
				Layout.leftMargin: 16
				Layout.topMargin: 8
				Layout.bottomMargin: 4
				Label {
					id: publishedPrice
					color: "#000000"
					text: "$150"
					font.weight: Font.Medium
					verticalAlignment: Text.AlignVCenter
					font.pointSize: 32
					font.family: "Roboto"
				}
				Label {
					id: originalPrice
					color: "#80000000"
					text: "$150"
					font.strikeout: true
					font.weight: Font.Medium
					verticalAlignment: Text.AlignVCenter
					font.pointSize: 16
					font.family: "Roboto"
				}
				Label {
					id: discount
					color: "#ffffff"
					text: "60% off"
					horizontalAlignment: Text.AlignHCenter
					verticalAlignment: Text.AlignVCenter
					font.pointSize: 12
					rightPadding: 8
					leftPadding: 8
					bottomPadding: 4
					topPadding: 4
					font.family: "Roboto"
					background: Rectangle {
						width: discount.width
						height: discount.height
						color: "#fd7e14"
						radius: 4
					}
				}
			}
			RowLayout {
				id: timerContent
				Layout.topMargin: 4
				Layout.bottomMargin: 8
				Layout.rightMargin: 16
				Layout.leftMargin: 16
				spacing: 8
				Image {
					id: timerIcon
					source: "Material/svg/filled/timer.svg"
					sourceSize.height: 24
					sourceSize.width: 24
					ColorOverlay {
						anchors.fill: timerIcon
						source: timerIcon
						color: "#d6293e"
					}
				}

				Label {
					color: "#d6293e"
					text: "5 days left at this price"
					font.family: "Roboto"
					font.pointSize: 14
					font.styleName: "Regular"
				}
			}
			RowLayout {
				id: cardFooterButton
				Layout.topMargin: 8
				Layout.margins: 16
				spacing: 8

				Button {
					id: freeTrialButton
					text: qsTr("Free trial")
					font.styleName: "Medium"
					font.pointSize: 14
					font.family: "Roboto"
					Layout.fillWidth: true
				}

				Button {
					id: buyButton
					text: qsTr("Buy course")
					font.styleName: "Medium"
					font.pointSize: 14
					font.family: "Roboto"
					Layout.fillWidth: true
				}
			}
		}
	}
}

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects
import Eduport
import "../../Button"
import "../../DropShadow"


Rectangle {
	id: sidebarCard
	height: sidebarCardImage.height + cardBody.height

	Image {
		id: sidebarCardImage
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: parent.top
		anchors.rightMargin: 0
		anchors.leftMargin: 0
		anchors.topMargin: 0
		source: "https://eduport.webestica.com/assets/images/book/01.jpg"
		sourceSize {
			width: parent.width
			height: sidebarCardImage.width
		}
		fillMode: Image.PreserveAspectCrop
		layer {
			enabled: true
			effect: MultiEffect {
				maskEnabled: true
				maskSource: maskRectangle
			}
		}
		Rectangle {
			id: maskRectangle
			width: sidebarCardImage.sourceSize.width
			height: sidebarCardImage.sourceSize.height
			radius: 8
			layer.enabled: true
			visible: false
		}
	}
	RowLayout {
		id: cardBody
		anchors.right: parent.right
		anchors.left: parent.left
		anchors.top: sidebarCardImage.bottom
		anchors.rightMargin: 0
		anchors.leftMargin: 0
		anchors.topMargin: 0
		anchors.bottomMargin: 0

		GridLayout {
			rowSpacing: 16
			columnSpacing: 16
			Layout.bottomMargin: 16
			Layout.rightMargin: 20
			Layout.leftMargin: 20
			Layout.topMargin: 16
			Layout.fillHeight: true
			Layout.fillWidth: true
			columns: sidebarCard.width > 360 ? 2 : 1
			Success {
				id: addToCart
				text: "Add to cart"
				Layout.fillWidth: true
			}
			Light {
				id: wishlist
				text: "Add to wishlist"
				Layout.fillWidth: true
			}
		}
	}
}

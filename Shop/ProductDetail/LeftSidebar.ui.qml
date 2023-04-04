import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Eduport 1.4
import "../../Button"
import "../../DropShadow"


Rectangle {
	id: sidebarCard
	height: sidebarCardImage.height + cardBody.height

	Rectangle {
		id: sidebarCardImage
		width: parent.width
		height: sidebarCardImage.width
		radius: 8
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.top: parent.top
		anchors.rightMargin: 0
		anchors.leftMargin: 0
		anchors.topMargin: 0
		Image {
			id: sidebarCardImageSource
			anchors.fill: parent
			visible: false
			source: "https://eduport.webestica.com/assets/images/book/01.jpg"
			fillMode: Image.PreserveAspectCrop
		}
		OpacityMask {
			id: sidebarCardImageMask
			anchors.fill: sidebarCardImage
			source: sidebarCardImageSource
			maskSource: sidebarCardImage
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

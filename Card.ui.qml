import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
	property string imageSource: "darapsa.svg"
	property string badgeText: "Beginner"
	property string titleText: "Sketch from A to Z: for app designer"
	property string textTruncateText: "Rooms oh fully taken by worse do Points afraid but may end Rooms Points afraid but may end Rooms"

	Rectangle {
		anchors {
			top: parent.top
			topMargin: 51.2
			left: parent.left
			leftMargin: 25.6
			right: parent.right
			rightMargin: 25.6
			bottom: parent.bottom
		}

		Image {
			id: image
			source: imageSource
			sourceSize {
				width: parent.width
				height: parent.width * 3 / 4
			}
		}

		Item {
			id: body
			width: parent.width
			anchors {
				top: image.bottom
				bottom: parent.bottom
			}

			Item {
				id: badgeAndFavorite
				height: favorite.sourceSize.height
				anchors {
					top: parent.top
					left: parent.left
					leftMargin: 16
					right: parent.right
					rightMargin: 16
				}

				Label {
					id: badge
					text: badgeText
					font.pointSize:12
					anchors {
						verticalCenter: parent.verticalCenter
						left: parent.left
						leftMargin: 8
					}
				}

				Image {
					id: favorite
					source: "Font-Awesome/svgs/solid/heart.svg"
					sourceSize {
						width: 16
						height: 16
					}
					anchors {
						right: parent.right
						rightMargin: 8
					}
				}
			}

			Label {
				id: title
				text: titleText
				wrapMode: Text.Wrap
				font {
					weight: Font.Medium
					pointSize: 20
				}
				anchors {
					top: badgeAndFavorite.bottom
					topMargin: 16
					left: parent.left
					leftMargin: 16
					right: parent.right
					rightMargin: 16
				}
			}

			Label {
				id: textTruncate
				text: textTruncateText
				wrapMode: Text.Wrap
				font {
					weight: Font.Light
					pointSize: 14
				}
				anchors {
					top: title.bottom
					topMargin: 16
					bottom: parent.bottom
					bottomMargin: 16
					left: parent.left
					leftMargin: 16
					right: parent.right
					rightMargin: 16
				}
			}
		}
	}

	width: 300
	height: 480
}
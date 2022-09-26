import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Item {
	property string imageSource: "Darapsa.svg"
	property string badgeText: "Beginner"
	property string titleText: "Sketch from A to Z: for app designer"
//	property string textTruncateText: "Rooms oh fully taken by worse do. Points afraid but may end afraid but.."

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
			source: imageSource
			sourceSize {
				width: parent.width
				height: parent.width * 3 / 4
			}
			anchors.top: parent.top
		}

		Item {
			id: body
			width: parent.width
			anchors {
				top: image.bottom
				bottom: footer.top
			}

			Item {
				id: badgeAndFavorite
				height: body.height / 6
				anchors {
					top: parent.top
					topMargin: 16
					left: parent.left
					leftMargin: 20
					right: parent.right
					rightMargin: 20
				}

				Label {
					id: badge
					text: badgeText
					font.pointSize:12
					anchors {
						top: parent.top
						topMargin: 5.6
						left: parent.left
						leftMargin: 10.4
						bottom: parent.bottom
						leftMargin: 5.6
					}
				}

				Image {
					id: favorite
					source: "Font-Awesome/svgs/solid/heart.svg"
					sourceSize {
						width: height
						height: parent.height / 1.5
					}
					anchors {
						right: parent.right
						verticalCenter: parent.verticalCenter
					}
				}

			}

			Label {
				id: title
				width: parent.width
				text: titleText
				wrapMode: Text.Wrap
				font {
					weight: Font.Medium
					pointSize: 20
				}
				anchors {
					top: badgeAndFavorite.bottom
					topMargin: 8
					left: parent.left
					leftMargin: 20
					right: parent.right
					rightMargin: 20
				}
			}
/*
			Label {
				id: textTruncate
				text: textTruncateText
				wrapMode: Text.Wrap
				font {
					weight: Font.Light
					pointSize: 14
				}
			}
*/
			Item {
				id: listInline
				height: badgeAndFavorite.height
				anchors {
					top: title.bottom
					topMargin: 8
					left: parent.left
					leftMargin: 20
					right: parent.right
					rightMargin: 20
				}
			}
		}

		Item {
			id: footer
			width: parent.width
			height: (parent.height - image.sourceSize.height) / 3
			anchors.bottom: parent.bottom
		}
	}

	DropShadow {
		verticalOffset: 2
		radius: 2
		samples: 4
		source: rectangle
		color: Qt.rgba(.113, .227, .325, .15)
		anchors.fill: rectangle
	}

	width: 323.9
	height: 446.583
}
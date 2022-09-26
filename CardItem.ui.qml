import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
	property alias cardImage: image
	property alias cardTitle: title
	property alias textTruncate: textTruncate

	width: 300
	height: 480

	Image {
		id: image
		source: "darapsa.svg"
		sourceSize {
			width: parent.width
			height: 225
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
			height: favorite.height
			anchors {
				top: parent.top
				left: parent.left
				leftMargin: 16
				right: parent.right
				rightMargin: 16
			}

			Label {
				text: qsTr("Beginner")
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
			text: qsTr("Sketch from A to Z: for app designer")
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
			text: qsTr("Rooms oh fully taken by worse do Points afraid but may end Rooms Points afraid but may end Rooms")
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

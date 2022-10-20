import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Item {
	property string imageSource: "Darapsa.svg"

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
			source: imageSource
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

		Item {
			id: body
			width: parent.width
			anchors {
				top: image.bottom
				bottom: parent.bottom
			}

		}
	}
}

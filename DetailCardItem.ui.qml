import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Item {
	property string imageSource: "https://eduport.webestica.com/assets/images/courses/4by3/01.jpg"
	property alias buy: buy

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
			width: parent.width - 16
			anchors {
				top: image.bottom
				horizontalCenter: parent.horizontalCenter
				bottom: parent.bottom
				bottomMargin: 8
			}

			Item {
				id: info
				width: parent.width - 32
				anchors {
					top: parent.top
					topMargin: 16
					horizontalCenter: parent.horizontalCenter
					bottom: buttons.top
					bottomMargin: 16
				}
			}

			Item {
				id: buttons
				width: parent.width - 32
				height: 40.5
				anchors {
					horizontalCenter: parent.horizontalCenter
					bottom: parent.bottom
					bottomMargin: 16
				}

				Button {
					id: trial
					text: qsTr("Free trial")
					contentItem: Text {
						text: trial.text
						font.pixelSize: 15
						color: trial.down ? "#ffffff"
						: "#066ac9"
					}
					background: Rectangle {
						color: trial.down ? "#066ac9"
						: "#ffffff"
						border.color: "#066ac9"
						radius: 8
					}
					height: parent.height
					anchors.left: parent.left
				}

				Button {
					id: buy
					text: qsTr("Buy course")
					contentItem: Text {
						text: buy.text
						font.pixelSize: 15
						color: "#ffffff"
					}
					background: Rectangle {
						color: buy.down ? "#0aa073"
						: "#0cbc87"
						border.color: buy.down
						? "#0a966c" : "#0cbc87"
						radius: 8
					}
					height: parent.height
					anchors.right: parent.right
				}
			}
		}
	}

	height: width * 1.2
}

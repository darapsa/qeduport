import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
	property alias area: area

	Rectangle {
		color: bgColor
		radius: 8
		anchors {
			top: parent.top
			topMargin: 25.6
			left: parent.left
			leftMargin: 12.8
			right: parent.right
			rightMargin: 12.8
			bottom: parent.bottom
		}

		RowLayout {
			anchors {
				top: parent.top
				topMargin: 25.6
				left: parent.left
				leftMargin: 25.6
				right: parent.right
				rightMargin: 25.6
				bottom: parent.bottom
				bottomMargin: 25.6
			}

			Image {
				source: icon
				sourceSize.height: parent.height
			}

			ColumnLayout {
				FontLoader {
					id: bold
					name: "Heebo"
					source: "Heebo/Heebo-Bold.ttf"
				}

				Label {
					text: count
					font {
						family: bold.name
						pixelSize: 21
					}
				}

				FontLoader {
					id: medium
					name: "Heebo"
					source: "Heebo/Heebo-Bold.ttf"
				}

				Label {
					text: title
					font {
						family: medium.name
						pixelSize: 15
					}
				}
			}
		}

		MouseArea {
			id: area
			anchors.fill: parent
		}
	}
}

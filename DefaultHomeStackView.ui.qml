import QtQuick 2.15
import QtQuick.Controls 2.15

StackView {
	property alias grid: grid

	id: stack
	initialItem: Item {

		GridView {
			model: ListModel {
				ListElement {
					count: "10K"
					bgColor: "#26f7c32e"
				}
				ListElement {
					count: "200+"
					bgColor: "#1a1d3b53"
				}
				ListElement {
					count: "60K+"
					bgColor: "#1a6f42c1"
				}
				ListElement {
					count: "6K+"
					bgColor: "#1a17a2b8"
				}
			}

			delegate: Rectangle {
				color: bgColor
				implicitWidth: label.width
				implicitHeight: label.height

				FontLoader {
					id: heebo
					name: "Heebo"
					source: "Heebo/Heebo-Bold.ttf"
				}

				Label {
					id: label
					text: count
					font {
						family: heebo.name
						pixelSize: 21
					}
				}
			}

			cellWidth: width < 576 ? stack.width : width < 768
			? stack.width / 2 : width < 992 ? stack.width / 3
			: stack.width / 4
			cellHeight: cellWidth * 1.3
			anchors {
				top: parent.top
				left: parent.left
				right: parent.right
			}
			height: 100
		}

		GridView {
			id: grid
			cellWidth: width < 576 ? stack.width : width < 768
			? stack.width / 2 : width < 992 ? stack.width / 3
			: stack.width / 4
			cellHeight: cellWidth * 1.3
			anchors {
				left: parent.left
				right: parent.right
				bottom: parent.bottom
			}
			height: parent.height - 100
		}
	}
}

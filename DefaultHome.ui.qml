import QtQuick 2.15
import QtQuick.Controls 2.15

ScrollView {
	property alias popularCourseTabsContent: popularCourseTabsContent
	contentWidth: counter.width
	contentHeight: counter.height + popularCourseTabsContent.height

	GridView {
		id: counter
		interactive: false

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

		delegate: Item {
			width: counter.cellWidth
			height: 125.6
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
		}

		cellWidth: width < 576 ? width : width < 768 ? width / 2
		: width < 992 ? width / 3 : width / 4
		cellHeight: cellWidth * 1.3

		height: 100
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}
	}

	GridView {
		id: popularCourseTabsContent
		interactive: false

		cellWidth: width < 576 ? width : width < 768 ? width / 2
		: width < 992 ? width / 3 : width / 4
		cellHeight: cellWidth * 1.3

		height: width < 576 ? cellHeight : width < 768 ? cellHeight * 2
		: width < 992 ? cellHeight * 3 : cellHeight * 4
		anchors {
			left: parent.left
			right: parent.right
			bottom: parent.bottom
		}
	}
}

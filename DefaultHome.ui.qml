import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	property alias popularCourseTabsContent: popularCourseTabsContent
	contentHeight: counter.height + popularCourseTabsContent.height

	GridView {
		id: counter
		interactive: false

		model: ListModel {
			ListElement {
				icon: "Font-Awesome/svgs/solid/tv.svg"
				count: "10K"
				title: qsTr("Online Courses")
				bgColor: "#26f7c32e"
			}
			ListElement {
				icon: "Font-Awesome/svgs/solid/user-tie.svg"
				count: "200+"
				title: qsTr("Expert Tutors")
				bgColor: "#1a1d3b53"
			}
			ListElement {
				icon: "Font-Awesome/svgs/solid/user-graduate.svg"
				count: "60K+"
				title: qsTr("Online Students")
				bgColor: "#1a6f42c1"
			}
			ListElement {
				icon: "Bootstrap/icons/patch-check-fill.svg"
				count: "6K+"
				title: qsTr("Certified Courses")
				bgColor: "#1a17a2b8"
			}
		}

		delegate: Item {
			implicitWidth: counter.cellWidth
			implicitHeight: counter.cellHeight
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
			}
		}

		cellWidth: width < 576 ? width : width < 768 ? width / 2
		: width < 992 ? width / 3 : width / 4
		cellHeight: 125.6

		height: width < 576 ? cellHeight * 4
		: width < 768 ? cellHeight * 3
		: width < 992 ? cellHeight * 2 : cellHeight
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

		height: width < 576 ? cellHeight * 4
		: width < 768 ? cellHeight * 3
		: width < 992 ? cellHeight * 2 : cellHeight
		anchors {
			top: counter.bottom
			left: parent.left
			right: parent.right
		}
	}
}

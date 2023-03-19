import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import "../../../.."
import "Main/TabContents" as MainTabContents

ColumnLayout {
	property alias tabs: tabs
	property alias courseDescription: courseDescription

	Item {
		Layout.fillWidth: true
		Layout.leftMargin: 15
		Layout.rightMargin: 15
		implicitHeight: rectangle.height

		DropShadow {
			source: rectangle
			color: "#4d000000"
			verticalOffset: 4
			radius: 12
			samples: 12
			anchors.fill: rectangle
		}

		Rectangle {
			id: rectangle
			radius: 5.2
			anchors {
				left: parent.left
				right: parent.right
			}
			implicitHeight: tabs.height + tabContents.height + 83.2

			ColumnLayout {
				anchors {
					left: parent.left
					leftMargin: 25.6
					right: parent.right
					rightMargin: 25.6
				}

				GridView {
					id: tabs
					interactive: false
					Layout.topMargin: 16
					Layout.bottomMargin: 16
					cellWidth: 105.016
					cellHeight: 46
					implicitWidth: parent.width
					implicitHeight: Math.ceil(count
							/ Math.floor(count
							/ (cellWidth * count
							/ width))) * cellHeight
					model: ["Overview", "Curriculum",
						"Instructor", "Reviews", "FAQs",
						"Comment"]
					delegate: TabItem {
						contentItem: Text {
							text: modelData
							color: "#066ac9"
							font {
								family: doesntEmbed ? "Roboto" : regular.name
								pointSize: 15
							}
						}
						background: Rectangle {
							color: index == currentIndex ? "#1a0fffff" : "transparent"
							radius: 5.2
						}
					}
				}

				StackLayout {
					id: tabContents
					currentIndex: tabs.currentIndex
					Layout.topMargin: 33.6
					Layout.leftMargin: 25.6
					Layout.rightMargin: 25.6
					Layout.bottomMargin: 25.6
					Layout.preferredWidth: parent.width
					Layout.preferredHeight: switch (
							currentIndex) {
						case 0:
							return overview.height;
						case 2:
							return instructor.height;
						default:
							return 0;
					}

					ColumnLayout {
						id: overview

						Label {
							text: qsTr("Course Description")
							color: "#24292d"
							wrapMode: Text.Wrap
							Layout.fillWidth: true
							Layout.bottomMargin: 16
							font {
								family: heebo.name
								pointSize: 20.1
							}
						}

						Label {
							id: courseDescription
							text: qsTr("Welcome to the Digital Marketing Ultimate Course Bundle - 12 Courses in 1 (Over 36 hours of content)")
							color: "#747579"
							wrapMode: Text.Wrap
							Layout.fillWidth: true
							font {
								family: doesntEmbed ? "Roboto" : regular.name
								pointSize: 15
							}
						}
					}

					Item {}

					MainTabContents.Instructor {
						id: instructor
					}

					Item {}

					Item {}

					Item {}
				}
			}
		}
	}
}

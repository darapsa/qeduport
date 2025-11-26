import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Bootstrap
import Eduport
import "../../../../DropShadow" as DrpShdw
import "../../../../Button/NavLink" as NavLink
import "Main/TabContents" as MainTabContents

ColumnLayout {
	property alias tabs: tabs
	property alias courseDescription: courseDescription

	Item {
		Layout.fillWidth: true
		Layout.leftMargin: 15
		Layout.rightMargin: 15
		implicitHeight: content.height

		Rectangle {
			id: content
			color: Eduport.bsBodyBg
			anchors {
				left: parent.left
				right: parent.right
			}
			implicitHeight: tabs.height + tabContents.height + 83.2

			DrpShdw.Box {
				source: rectangle
				anchors.fill: rectangle
			}

			Rectangle {
				id: rectangle
				anchors.fill: container
				color: Eduport.bsCardBg
				radius: 5.2
			}

			ColumnLayout {
				id: container
				anchors {
					left: parent.left
					right: parent.right
				}

				GridView {
					id: tabs
					interactive: false
					Layout.topMargin: 16
					Layout.leftMargin: 25.6
					Layout.rightMargin: 25.6
					Layout.bottomMargin: 16
					cellWidth: 105.016
					cellHeight: 46
					implicitWidth: parent.width - 51.2
					implicitHeight: Math.ceil(count
							/ Math.floor(count
							/ (cellWidth * count
							/ width))) * cellHeight
					model: ["Overview", "Curriculum",
						"Instructor", "Reviews", "FAQs",
						"Comment"]
					delegate: NavLink.TabsLine {}
				}

				MenuSeparator {
					contentItem: Rectangle {
						implicitWidth: container.width
						implicitHeight: 1
						color: Eduport.bsBorderColor
					}
				}

				StackLayout {
					id: tabContents
					currentIndex: tabs.currentIndex
					Layout.topMargin: 25.6
					Layout.leftMargin: 25.6
					Layout.rightMargin: 25.6
					Layout.bottomMargin: 25.6
					Layout.preferredWidth: parent.width
									- 51.2
					Layout.preferredHeight: switch (
							currentIndex) {
						case 0:
							return overview.height;
						case 2:
							return instructor
								.height;
						default:
							return 0;
					}

					ColumnLayout {
						id: overview

						Label {
							text: qsTr("Course Description")
							wrapMode: Label.Wrap
							Bootstrap.heading: 5
							Layout.fillWidth: true
							Layout.bottomMargin: 16
						}

						Label {
							id: courseDescription
							text: qsTr("Welcome to the Digital Marketing Ultimate Course Bundle - 12 Courses in 1 (Over 36 hours of content)")
							wrapMode: Label.Wrap
							Layout.fillWidth: true
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

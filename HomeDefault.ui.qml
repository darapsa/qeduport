import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	property alias counter: counter
	property alias popular: popular
	property alias getStarted: getStarted
	property bool doesntEmbed: Qt.platform.os === "android"
				|| Qt.platform.os === "linux"
				|| Qt.platform.os === "osx"
				|| Qt.platform.os === "unix"
				|| Qt.platform.os === "windows"
	contentHeight: body.height

	ColumnLayout {
		id: body
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		GridLayout {
			id: banner
			columns: width < 992 ? 1 : 2
			rows: width < 992 ? 2 : 1
			Layout.topMargin: 48
			Layout.leftMargin: 51.28
			Layout.rightMargin: 51.28

			ColumnLayout {

				FontLoader {
					id: heebo
					source: "Heebo/Heebo-Bold.ttf"
				}

				Label {
					text: qsTr("Limitless learning at your fingertips")
					color: "#24292d"
					horizontalAlignment: Text.AlignHCenter
					wrapMode: Text.Wrap
					Layout.fillWidth: true
					font {
						family: heebo.name
						pointSize: 23.6 + .0432 * width
					}
				}

				FontLoader {
					id: roboto
					source: doesntEmbed ? ""
						: "Roboto/Roboto-Medium.ttf"
				}

				Label {
					text: qsTr("Online learning and teaching marketplace with 5K+ courses & 10M students. Taught by experts to help you acquire new skills.")
					color: "#747579"
					horizontalAlignment: Text.AlignHCenter
					wrapMode: Text.Wrap
					Layout.fillWidth: true
					font {
						family: doesntEmbed ? "Roboto"
							: roboto.name
						pixelSize: 19
					}
				}

				Button {
					id: getStarted
					Layout.alignment: Qt.AlignHCenter
					Layout.leftMargin: 24
					Layout.rightMargin: 24
					Layout.bottomMargin: 25.6
					horizontalPadding: 24
					verticalPadding: 12.8
					contentItem: Text {
						color: getStarted.down
							? "#ffffff"
							: "#d6293e"
						text: qsTr("Get Started")
						horizontalAlignment: Text
							.AlignHCenter
						verticalAlignment: Text
							.AlignVCenter
						font {
							family: doesntEmbed
							? "Roboto"
							: roboto.name
							pixelSize: 16
							weight: Font.Medium
						}
					}
					background: Rectangle {
						radius: 8
						color: getStarted.down
							? "#d6293e"
							: Qt.rgba(.839, .16,
								.243, .1)
						border {
							color:
							getStarted.down
							? "#d6293e"
							: "transparent"
							width: 1
						}
					}
				}
			}

			ColumnLayout {
				Layout.topMargin: 48
				Layout.leftMargin: 24
				Layout.rightMargin: 24

				Image {
					id: image
					source: "https://eduport.webestica.com/assets/images/element/07.png"
					fillMode: Image.PreserveAspectFit
					Layout.fillWidth: true
				}
			}
		}

		GridView {
			id: counter
			interactive: false
			cellWidth: width < 576 ? width
				: width < 1200 ? width / 2
				: width / 4
			cellHeight: 125.6
			Layout.fillWidth: true
			Layout.preferredHeight: width < 576
				? cellHeight * count
				: width < 1200 ? cellHeight * count / 2
				: cellHeight

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
		}

		ColumnLayout {
			Layout.leftMargin: 15
			Layout.rightMargin: 15
			Layout.bottomMargin: 25.6

			Label {
				text: qsTr("Most Popular Courses")
				color: "#24292d"
				horizontalAlignment: Text.AlignHCenter
				wrapMode: Text.Wrap
				Layout.fillWidth: true
				Layout.bottomMargin: 8
				font {
					family: doesntEmbed ? "Roboto"
							: roboto.name
					pointSize: 44
				}
			}

			Label {
				text: qsTr("Choose from hundreds of courses from specialist organizations")
				color: "#747579"
				horizontalAlignment: Text.AlignHCenter
				wrapMode: Text.Wrap
				Layout.fillWidth: true
				font {
					family: doesntEmbed ? "Roboto"
							: roboto.name
					pointSize: 14
				}
			}
		}

		TabBar {
			id: tabs
			currentIndex: tabsContent.currentIndex
			background: Rectangle{
				color: Qt.rgba(.0235, .416, .788, .1)
				radius: 10
			}
			horizontalPadding: 16
			verticalPadding: 10
			Layout.fillWidth: true
			Layout.bottomMargin: 25.6

			TabButton {
				id: webDesign
				text: qsTr("Web Design")
				horizontalPadding: 16
				verticalPadding: 8
				anchors {
					rightMargin: 8
					bottomMargin: 8
				}
				background: Rectangle {
					color: "#066ac9"
					radius: 5.2
				}
			}

			TabButton {
				id: development
				text: qsTr("Development")
				horizontalPadding: 16
				verticalPadding: 8
				anchors {
					rightMargin: 8
					bottomMargin: 8
				}
				background: Rectangle {
					color: "#066ac9"
					radius: 5.2
				}
			}

			TabButton {
				id: graphicDesign
				text: qsTr("Graphic Design")
				horizontalPadding: 16
				verticalPadding: 8
				anchors {
					rightMargin: 8
					bottomMargin: 8
				}
				background: Rectangle {
					color: "#066ac9"
					radius: 5.2
				}
			}

			TabButton {
				id: marketing
				text: qsTr("Marketing")
				horizontalPadding: 16
				verticalPadding: 8
				anchors {
					rightMargin: 8
					bottomMargin: 8
				}
				background: Rectangle {
					color: "#066ac9"
					radius: 5.2
				}
			}

			TabButton {
				id: finance
				text: qsTr("Finance")
				horizontalPadding: 16
				verticalPadding: 8
				anchors {
					rightMargin: 8
					bottomMargin: 8
				}
				background: Rectangle {
					color: "#066ac9"
					radius: 5.2
				}
			}
		}

		SwipeView {
			id: tabsContent
			currentIndex: tabs.currentIndex
			Layout.fillWidth: true
			Layout.preferredHeight: popular.height

			GridView {
				id: popular
				interactive: false
				cellWidth: width < 576 ? width
					: width < 768 ? width / 2
					: width < 992 ? width / 3
					: width / 4
				cellHeight: cellWidth * 1.3
				width: parent.width
				height: width < 576
					? cellHeight * count
					: width < 768
					? cellHeight
					* (count + count % 2) / 2
					: width < 992
					? cellHeight
					* (count + (count + 1) % 3) / 3
					: cellHeight
					* (count + (count + 2) % 4) / 4
			}
		}
	}
}

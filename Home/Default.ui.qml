import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects
import Bootstrap
import Eduport
import ".."
import "../Label" as Lbl
import "../Button" as Btn
import "Default" as Default

Flickable {
	property alias banner: banner
	property string bannerTitleText: qsTr("Limitless learning at your fingertips")
	property string bannerContentText: qsTr("Online learning and teaching marketplace with 5K+ courses & 10M students. Taught by experts to help you acquire new skills.")
	property string imageSource: "https://eduport.webestica.com/assets/images/element/07.png"
	property alias counter: counter
	property alias tabs: tabs
	property alias tabsContent: tabsContent
	property alias getStarted: getStarted
	contentHeight: body.height

	Rectangle {
		anchors.fill: parent
		color: ApplicationWindow.window.Bootstrap.bodyBg
	}

	ColumnLayout {
		id: body
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		GridLayout {
			id: banner
			columns: body.width < 992 ? 1 : 2
			rows: body.width < 992 ? 2 : 1
			Layout.leftMargin: -9
			Layout.rightMargin: -9
			Layout.bottomMargin: 48

			ColumnLayout {
				Layout.topMargin: 48
				Layout.leftMargin: 15
				Layout.rightMargin: 15
				Layout.bottomMargin: 48
				Layout.maximumWidth: body.width < 992
					? body.width : body.width / 2

				Lbl.Display6 {
					text: bannerTitleText
					horizontalAlignment: Text.AlignHCenter
					Layout.fillWidth: true
				}

				Label {
					text: bannerContentText
					horizontalAlignment: Text.AlignHCenter
					Layout.fillWidth: true
					font.pointSize: Eduport.leadFontSize
					wrapMode: Label.Wrap
				}

				Button {
					id: getStarted
					Layout.alignment: Qt.AlignHCenter
					Layout.leftMargin: 24
					Layout.rightMargin: 24
					Layout.bottomMargin: 25.6
					horizontalPadding: 24
					verticalPadding: 12.8
					text: qsTr("Get Started")
					font: Eduport.bsBtnFont
					contentItem: Text {
						horizontalAlignment: Text
							.AlignHCenter
						verticalAlignment: Text
							.AlignVCenter
						text: getStarted.text
						font: getStarted.font
						color: getStarted.down
							? "#ffffff"
							: "#d6293e"
					}
					background: Rectangle {
						radius: 8
						color: getStarted.down
							? "#d6293e"
							: Qt.rgba(.839, .16,
								.243, .1)
						border {
							color: getStarted.down
							? "#d6293e"
							: "transparent"
							width: 1
						}
					}
				}
			}

			Item {
				Layout.topMargin: 48
				Layout.leftMargin: 24
				Layout.rightMargin: 24
				Layout.fillWidth: true
				implicitHeight: image.height

				MultiEffect {
					source: angularRectangle
					anchors.fill: angularRectangle
					shadowEnabled: true
					shadowColor: Qt.rgba(.113, .227, .325, 1.0)
					shadowOpacity: .15
				}

				Rectangle {
					id: angularRectangle
					radius: 8
					implicitWidth: angularImage.width + 16
					implicitHeight: angularImage.height + 16
					anchors {
						top: parent.top
						right: parent.right
						rightMargin: 24
					}

					Image {
						id: angularImage
						source: "https://eduport.webestica.com/assets/images/client/angular.svg"
						anchors.centerIn: parent
					}
				}

				Image {
					id: image
					source: imageSource
					width: parent.width
					fillMode: Image.PreserveAspectFit
				}
			}
		}

		GridView {
			id: counter
			interactive: false
			cellWidth: body.width < 576 ? width
				: body.width < 1200 ? width / 2
				: width / 4
			cellHeight: 125.6
			Layout.fillWidth: true
			implicitHeight: body.width < 576
				? cellHeight * count
				: body.width < 1200 ? cellHeight * count / 2
				: cellHeight

			model: ListModel {
				ListElement {
					icon: "../../Font-Awesome/svgs/solid/tv.svg"
					count: "10K"
					title: qsTr("Online Courses")
					bgColor: "#26f7c32e"
				}
				ListElement {
					icon: "../../Font-Awesome/svgs/solid/user-tie.svg"
					count: "200+"
					title: qsTr("Expert Tutors")
					bgColor: "#1a1d3b53"
				}
				ListElement {
					icon: "../../Font-Awesome/svgs/solid/user-graduate.svg"
					count: "60K+"
					title: qsTr("Online Students")
					bgColor: "#1a6f42c1"
				}
				ListElement {
					icon: "../../Bootstrap/icons/patch-check-fill.svg"
					count: "6K+"
					title: qsTr("Certified Courses")
					bgColor: "#1a17a2b8"
				}
			}

			delegate: Default.Counter {
				implicitWidth: counter.cellWidth
				implicitHeight: counter.cellHeight
			}
		}

		ColumnLayout {
			Layout.topMargin: 64
			Layout.leftMargin: 15
			Layout.rightMargin: 15
			Layout.bottomMargin: 48

			ColumnLayout {
				Layout.bottomMargin: 25.6

				Label {
					text: qsTr("Most Popular Courses")
					wrapMode: Label.Wrap
					Bootstrap.heading: 1
					horizontalAlignment: Text.AlignHCenter
					Layout.fillWidth: true
					Layout.bottomMargin: 8
				}

				Label {
					text: qsTr("Choose from hundreds of courses from specialist organizations")
					horizontalAlignment: Text.AlignHCenter
					Layout.fillWidth: true
					wrapMode: Label.Wrap
				}
			}

			Rectangle {
				color: Qt.rgba(.0235, .416, .788, .1)
				radius: 10
				implicitHeight: tabs.height + 20
				Layout.fillWidth: true
				Layout.bottomMargin: 25.6

				GridView {
					id: tabs
					interactive: false
					anchors {
						left: parent.left
						leftMargin: 16
						right: parent.right
						rightMargin: 16
						verticalCenter: parent
								.verticalCenter
					}
					cellWidth: 142
					cellHeight: 46
					implicitHeight: Math.ceil(count
							/ Math.floor(count
								/ (cellWidth
									* count
									/ width)
								)) * cellHeight
					model: ["Web Design", "Development",
						"Graphic Design", "Marketing",
						"Finance"]
					delegate: Btn.NavLink {}
				}
			}

			StackLayout {
				currentIndex: tabs.currentIndex
				property real preservedAspectHeight: width * 1.6
				Layout.leftMargin: -12.8
				Layout.rightMargin: -12.8
				Layout.preferredHeight: body.width < 576
					? preservedAspectHeight
					* tabsContent.currentCount
					: body.width < 768
					? preservedAspectHeight / 2
					* Math.ceil(tabsContent.currentCount
							/ 2)
					: body.width < 992
					? preservedAspectHeight / 3
					* Math.ceil(tabsContent.currentCount
							/ 3)
					: preservedAspectHeight / 4
					* Math.ceil(tabsContent.currentCount
							/ 4)

				Repeater {
					id: tabsContent
					property int currentCount: 8
					model: ListModel {
						ListElement {
							content: [
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
									level: "All level"
									levelColor: "#ff6f42c1"
									levelBackgroundColor: "#1a6f42c1"
									liked: false
									title: "Sketch from A to Z: for app designer"
									truncated: "Proposal indulged no do sociable he throwing settling."
									rate: 4.0
								},
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/02.jpg"
									level: "Beginner"
									levelColor: "#ff0cbc87"
									levelBackgroundColor: "#1a0cbc87"
									liked: true
									title: "Graphic Design Masterclass"
									truncated: "Rooms oh fully taken by worse do Points afraid but may end Rooms"
									rate: 4.5
								},
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/03.jpg"
									level: "Beginner"
									levelColor: "#ff0cbc87"
									levelBackgroundColor: "#1a0cbc87"
									liked: false
									title: "Create a Design System in Figma"
									truncated: "Rooms oh fully taken by worse do. Points afraid but may end afraid but may end."
									rate: 4.5
								},
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/07.jpg"
									level: "Beginner"
									levelColor: "#ff0cbc87"
									levelBackgroundColor: "#1a0cbc87"
									liked: true
									title: "Deep Learning with React-Native"
									truncated: "Far advanced settling say finished raillery. Offered chiefly farther"
									rate: 4.0
								},
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/11.jpg"
									level: "All level"
									levelColor: "#ff6f42c1"
									levelBackgroundColor: "#1a6f42c1"
									liked: true
									title: "Build Responsive Websites with HTML"
									truncated: "Far advanced settling say finished raillery. Offered chiefly farther"
									rate: 4.0
								},
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/12.jpg"
									level: "Beginner"
									levelColor: "#ff0cbc87"
									levelBackgroundColor: "#1a0cbc87"
									liked: false
									title: "Build Websites with CSS"
									truncated: "Far advanced settling say finished raillery. Offered chiefly farther"
									rate: 4.5
								},
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/04.jpg"
									level: "All level"
									levelColor: "#ff6f42c1"
									levelBackgroundColor: "#1a6f42c1"
									liked: true
									title: "Learn Invision"
									truncated: "Arrived off she elderly beloved him Course regard to up he hardly."
									rate: 3.5
								},
								ListElement {
									image: "https://eduport.webestica.com/assets/images/courses/4by3/09.jpg"
									level: "All level"
									levelColor: "#ff6f42c1"
									levelBackgroundColor: "#1a6f42c1"
									liked: false
									title: "JavaScript: Full Understanding"
									truncated: "Far advanced settling say finished raillery. Offered chiefly farther"
									rate: 5.0
								}
							]
						}
					}

					GridView {
						id: tabPane
						interactive: false
						cellWidth: body.width < 576
							? width
							: body.width < 768
							? width / 2
							: body.width < 992
							? width / 3
							: width / 4
						cellHeight: cellWidth
							* 400 / 533 + 273.35
						model: content
						delegate: Default.Card {
							width: tabPane
								.cellWidth
							imageSource: image
							badgeText: level
							badgeColor: levelColor
							badgeBackgroundColor:
							levelBackgroundColor
							favorite.checked: liked
							titleText: title
							truncatedText: truncated
							rating: rate
						}
					}
				}
			}
		}
	}
}

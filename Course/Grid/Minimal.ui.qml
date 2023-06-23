import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Eduport 1.4
import "Minimal"
import "../../Home/Default"

Flickable {
	property alias filterBar: filterBar
	property alias courseGrid: courseGrid
	contentHeight: main.height

	Rectangle {
		anchors.fill: parent
		color: Eduport.bsBodyBg
	}

	ColumnLayout {
		id: main
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

		FilterBar {
			id: filterBar
			Layout.topMargin: 16
			Layout.rightMargin: 16
			Layout.leftMargin: 16
			Layout.fillWidth: true
		}

		GridView {
			id: courseGrid
			interactive: false
			Layout.fillWidth: true
			implicitHeight: main.width < 576
				? cellHeight * count
				: main.width < 768
				? cellHeight * count / 2
				: main.width < 992
				? cellHeight * count / 3
				: cellHeight * count / 4
			cellWidth: main.width < 576
				? width
				: main.width < 768
				? width / 2
				: main.width < 992
				? width / 3
				: width / 4
			cellHeight: cellWidth * 400 / 533 + 220.35
			model: ListModel {
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
					level: "All level"
					levelColor: "#ff6f42c1"
					levelBackgroundColor: "#1a6f42c1"
					liked: false
					title: "Sketch from A to Z: for app designer"
					rate: 4.0
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/02.jpg"
					level: "Beginner"
					levelColor: "#ff0cbc87"
					levelBackgroundColor: "#1a0cbc87"
					liked: true
					title: "Graphic Design Masterclass"
					rate: 4.5
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/03.jpg"
					level: "Beginner"
					levelColor: "#ff0cbc87"
					levelBackgroundColor: "#1a0cbc87"
					liked: false
					title: "Create a Design System in Figma"
					rate: 4.5
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/07.jpg"
					level: "Beginner"
					levelColor: "#ff0cbc87"
					levelBackgroundColor: "#1a0cbc87"
					liked: true
					title: "Deep Learning with React-Native"
					rate: 4.0
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/11.jpg"
					level: "All level"
					levelColor: "#ff6f42c1"
					levelBackgroundColor: "#1a6f42c1"
					liked: true
					title: "Build Responsive Websites with HTML"
					rate: 4.0
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/12.jpg"
					level: "Beginner"
					levelColor: "#ff0cbc87"
					levelBackgroundColor: "#1a0cbc87"
					liked: false
					title: "Build Websites with CSS"
					rate: 4.5
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/05.jpg"
					level: "Intermediate"
					levelColor: "#ff0cbc87"
					levelBackgroundColor: "#1a0cbc87"
					liked: false
					title: "The Complete Web Development in python"
					rate: 4.5
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/06.jpg"
					level: "Intermediate"
					levelColor: "#ff0cbc87"
					levelBackgroundColor: "#1a0cbc87"
					liked: false
					title: "Angular – The Complete Guider"
					rate: 4.5
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/10.jpg"
					level: "Beginner"
					levelColor: "#ff0cbc87"
					levelBackgroundColor: "#1a0cbc87"
					liked: true
					title: "Bootstrap 5 From Scratch"
					rate: 4.5
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/13.jpg"
					level: "Beginner"
					levelColor: "#ff0cbc87"
					levelBackgroundColor: "#1a0cbc87"
					liked: false
					title: "PHP with - CMS Project"
					rate: 4.0
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/01.jpg"
					level: "Beginner"
					levelColor: "#ff0cbc87"
					levelBackgroundColor: "#1a0cbc87"
					liked: true
					title: "Digital Marketing Masterclass"
					rate: 4.5
				}
				ListElement {
					image: "https://eduport.webestica.com/assets/images/courses/4by3/04.jpg"
					level: "All level"
					levelColor: "#ff6f42c1"
					levelBackgroundColor: "#1a6f42c1"
					liked: true
					title: "Learn Invision"
					rate: 3.5
				}
			}
			delegate: Card {
				width: courseGrid.cellWidth
				height: courseGrid.cellHeight
				imageSource: image
				badgeText: level
				badgeColor: levelColor
				badgeBackgroundColor: levelBackgroundColor
				favorite.checked: liked
				titleText: title
				truncatedVisible: false
				rating: rate
			}
		}
	}
}

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "Dashboard"

Flickable {
	property alias tableBody: tableBody
	contentWidth: table.width

	ColumnLayout{
		id: table
		width: 839.878

		RowLayout {
			Layout.fillWidth: true
			height: 50
			Label{
				text: "Course Title" 
				font.bold: true
				font.pixelSize: 30
			}
			Label{
				text: "Total Lectures"
				font.bold: true
				color: "#666666"
				font.pixelSize: 30
			}
			Label{
				text: "Completed Lectures"
				font.bold: true
				color: "#666666"
				font.pixelSize: 30
			}
			Label{
				text: "Action"
				font.bold: true
				color: "#666666"
				font.pixelSize: 30
			}
		}

		ListView {
			id: tableBody
			Layout.fillWidth: true
			height: 100 * count
			interactive: false
			model: ListModel {
				ListElement {
					title: qsTr("Building Scalable APIs with GraphQL")
					image: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
                                        level: "Beginner"
                                        totalLectures: 16
                                        completedLectures: 14
				}
				ListElement {
					title: qsTr("Create a Design System in Figma")
					image: "https://eduport.webestica.com/assets/images/courses/4by3/03.jpg"
                                        level: "Beginner"
                                        totalLectures: 42 
                                        completedLectures: 40
				}
				ListElement {
					title: qsTr("Graphic Design Masterclass")
					image: "https://eduport.webestica.com/assets/images/courses/4by3/02.jpg"
                                        level: "Beginner"
                                        totalLectures: 16
                                        completedLectures: 14
				}
				ListElement {
					title: qsTr("The Complete Web Development in python")
					image: "https://eduport.webestica.com/assets/images/courses/4by3/05.jpg"
                                        level: "Beginner"
                                        totalLectures: 28
                                        completedLectures: 12
				}
				ListElement {
					title: qsTr("Digital Marketing Masterclass")
					image: "https://eduport.webestica.com/assets/images/courses/4by3/01.jpg"
                                        level: "Advanced"
                                        totalLectures: 32
                                        completedLectures: 18
				}
				// Add more ListElements for other courses
			}
			delegate: CourseListItem {
				width: tableBody.width
				courseTitle.text: title
				courseThumb.source: image
			}
		}
	}
}

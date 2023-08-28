import QtQuick 2.15
import QtQuick.Controls 2.15
import "Dashboard"
import QtQuick.Layouts 1.15

Flickable {
	contentWidth: table.width

	ColumnLayout{
		id: table
		width: 839.878

		RowLayout {
			Layout.fillWidth: true
			Label{
				text: "Course Title"
			}
			Label{
				text: "Total Lectures"
			}
			Label{
				text: "Completed Lecture"
			}
			Label{
				text: "Action"
			}
		}

		ListView {
			id: tableBody
			Layout.fillWidth: true
			height: 100 * count
			model: ListModel {
				ListElement {
					title: qsTr("Building Scalable APIs with GraphQL")
					image: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
				}
				ListElement {
					title: qsTr("Create a Design System in Figma")
					image: "https://eduport.webestica.com/assets/images/courses/4by3/03.jpg"
				}
			}
			delegate: CourseListItem {
				width: tableBody.width
				courseTitle.text: title
				courseThumb.source: image
			}
		}
	}
}

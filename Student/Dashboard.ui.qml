import QtQuick 2.15
import QtQuick.Controls 2.15
import "Dashboard"
import QtQuick.Layouts 1.15

ColumnLayout{
	RowLayout {
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
			courseTitle.text: title
			courseThumb.source: image
		}
	}
}

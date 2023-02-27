import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

GridLayout {
	id: instructorContent
	width: instructorContent.width
	height: instructorContent.height

	Image {
		id: instructorImage
		Layout.preferredWidth: 300
		Layout.preferredHeight: 300
		source: "https://eduport.webestica.com/assets/images/instructor/01.jpg"
		fillMode: Image.PreserveAspectFit
		Layout.margins: 8
	}
	ColumnLayout {
		id: instructoryBody
		spacing: 8
		Layout.margins: 8
		
		Label {
			id: instructorFullname
			color: "#000000"
			text: qsTr("Instructor Fullname")
			font.styleName: "Bold"
			font.pointSize: 32
			font.family: "roboto"

		}
		Label {
			id: instructorTitle
			color: "#66000000"
			text: qsTr("Instructor of Marketing")
			font.styleName: "Regular"
			font.pointSize: 16
			font.family: "roboto"
			
		}
		RowLayout{
			spacing: 16
			ListInlineItem {
				id: listInlineItem1
			}
			
			ListInlineItem {
				id: listInlineItem2
			}
			
			ListInlineItem {
				id: listInlineItem3
			}
			
			ListInlineItem {
				id: listInlineItem4
			}
			
		}
	}
	
}
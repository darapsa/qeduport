import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

GridLayout {
	id: instructorContent
	width: instructorContent.width
	height: instructorContent.height
    rowSpacing: 16
    columnSpacing: 16
    flow: GridLayout.TopToBottom

	RowLayout {
		id: instructorStatistics
		Image {
			id: instructorImage
			Layout.preferredWidth: 300
			Layout.preferredHeight: 300
			source: "https://eduport.webestica.com/assets/images/instructor/01.jpg"
			fillMode: Image.PreserveAspectFit
			Layout.margins: 8
		}
		ColumnLayout {
			id: instructorBody
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
	ColumnLayout {
		id: insturctorInfo
		Label {
			color: "#000000"
			text: qsTr("About Instructor")
			font.styleName: "Medium"
			font.pointSize: 21
			font.family: "roboto"
		}
		Label {
			color: "#66000000"
			width: 720
			text: qsTr("Fulfilled direction use continual set him propriety continued. Saw met applauded favorite deficient engrossed concealed and her. Concluded boy perpetual old supposing. Farther related bed and passage comfort civilly. Dashboard see frankness objection abilities. As hastened oh produced prospect formerly up am. Placing forming nay looking old married few has. Margaret disposed of add screened rendered six say his striking confined. As it so contrasted oh estimating instrument. Size like body someone had. Are conduct viewing boy minutes warrant the expense? Tolerably behavior may admit daughters offending her ask own. Praise effect wishes change way and any wanted.")
			wrapMode: Text.WordWrap
			font.styleName: "Regular"
			font.pointSize: 14
			font.family: "roboto"
		}
	}
}
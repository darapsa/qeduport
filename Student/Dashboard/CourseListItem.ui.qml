import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12

Item {
	property alias courseTitle: courseTitle
	property alias courseThumb: courseThumb
	property alias courseProgressPercentage: courseProgressPercentage
	property alias courseProgressBar: courseProgressBar
	property alias courseListActionButton: courseListActionButton

	width:courseData.width
	height: courseData.height
	RowLayout {
		id: courseData
		spacing: 16
		Rectangle {
			id: courseThumbnail
			radius: 8
			Layout.preferredHeight: 72
			Layout.preferredWidth: 100
			Layout.minimumHeight: 72
			Layout.minimumWidth: 100
			Image {
				id: courseThumb
				source: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
				sourceSize: Qt.size(parent.width, parent.height)
				visible: false
			}
			OpacityMask{
				anchors.fill: courseThumbnail
				source: courseThumb
				maskSource: courseThumbnail
			}
		}
		ColumnLayout{
			id: courseProgressInfo
			spacing: 0
			Label{
				id: courseTitle
				color: "#000000"
				text: "Course name"
				font.pointSize: 16
				font.family: "roboto"
				font.styleName: "Medium"
				Layout.fillWidth: true
			}
			Label{
				id: courseProgressPercentage
				color: "#000000"
				text: "80%"
				font.pointSize: 16
				font.family: "roboto"
				font.styleName: "Medium"
				horizontalAlignment: Text.AlignRight
				Layout.fillWidth: true
			}
			ProgressBar {
				id: courseProgressBar
				value: 0.8
			}
		}
		Button {
			id: courseListActionButton
			icon.source: "Material/svg/filled/play_circle_outline.svg"
			text: "Continue"
			font.weight: Font.Medium
			font.family: "Roboto"
			font.pointSize: 14
		}
	}
}

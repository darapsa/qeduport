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

	height: courseData.height

	RowLayout {
		id: courseData
		spacing: 16
		width: parent.width

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
			width: parent.width - image.width - spacing

			Label{
				id: courseTitle
				color: "#000000"
				text: "Course name"
				font.pointSize: 16
				font.family: "roboto"
				font.styleName: "Medium"
				Layout.fillWidth: true
			}

			RowLayout { // So the Bar and % of value side by side
				ProgressBar {
					id: courseProgressBar
					value: completedLectures / totalLectures * 100
					to: 100
					width: parent.width * 0.7
					height: 10
					background: Rectangle {
						color: "#666666" // Background color of the ProgressBar
					}
				}
				Label{
					id: courseProgressPercentage
	//				color: "#000000"
					text:  Math.round(completedLectures / totalLectures * 100) + "%"
					color: "#666666"
	//				font.pixelSize: 14
					font.pointSize: 14
					font.family: "roboto"
					font.styleName: "Medium"
	//				horizontalAlignment: Text.AlignRight
	//				Layout.fillWidth: true
				}
			}
		}
		Button {
			id: courseListActionButton
			icon.source: "Material/svg/filled/play_circle_outline.svg"
			text: "Continue"
			font.weight: Font.Medium
			font.family: "Roboto"
			font.pointSize: 14
			onClicked: {
				// Implement resuming logic
			}
		}
	}
}

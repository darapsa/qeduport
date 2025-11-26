import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Bootstrap

RowLayout {
	property alias courseTitle: courseTitle
	property alias courseThumb: courseThumb
	property alias courseProgressPercentage: courseProgressPercentage
	property alias courseProgressBar: courseProgressBar
	property alias courseListActionButton: courseListActionButton
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
		width: parent.width - image.width - spacing

		Label{
			id: courseTitle
			text: "Building Scalable APIs with GraphQL"
			Layout.fillWidth: true
			Bootstrap.heading: 6
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
				text:  Math.round(completedLectures / totalLectures * 100) + "%"
				Bootstrap.heading: 6
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
	}
}

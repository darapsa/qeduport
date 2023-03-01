import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12

RowLayout {
	id: instructorCard
	spacing: 0
	height: instructorCardAvatar.height
	width: instructorCardAvatar.width + instructorCardBody.width

	RowLayout{
		id: instructorCardAvatar
		Rectangle{
			Layout.margins: 8
			id: instructorThumbnail
			radius: 8
			Layout.preferredHeight: 200
			Layout.preferredWidth: 200
			Layout.minimumHeight: 200
			Layout.minimumWidth: 200
		}
		Image{
			id: instructorThumb
			source: "https://eduport.webestica.com/assets/images/instructor/02.jpg"
			sourceSize: Qt.size(instructorThumbnail.width, instructorThumbnail.height)
			visible: false
		}
		OpacityMask{
			anchors.fill: instructorThumbnail
			source: instructorThumb
			maskSource: instructorThumbnail
		}
	}
	ColumnLayout {
		id: instructorCardBody
		Layout.preferredWidth: 360
		Layout.minimumWidth: 360
		Layout.alignment: Qt.AlignLeft | Qt.AlignTop
		spacing: 0
		Label{
			id: courseTitle
			color: "#000000"
			text: "Instructor name"
			font.pointSize: 21
			font.family: "roboto"
			font.styleName: "Medium"
			Layout.fillWidth: true
			Layout.rightMargin: 8
			Layout.leftMargin: 8
			Layout.topMargin: 8
		}
		Label{
			id: instructorTitle
			color: "#4d000000"
			text: "Instructor title"
			font.pointSize: 12
			font.family: "roboto"
			font.styleName: "Regular"
			Layout.fillWidth: true
			Layout.margins:8
		}
		Label{
			id: insturctorCardContent
			color: "#4d000000"
			text: "Passage its ten led hearted removal cordial. Preference any astonished unreserved Mrs."
			wrapMode: Text.WordWrap
			font.pointSize: 12
			font.family: "roboto"
			font.styleName: "Regular"
			Layout.fillWidth: true
			Layout.margins:8
		}

		Label{
			id: instructorCategory
			color: "#fd7e14"
			text: "Instructor title"
			font.pointSize: 16
			font.family: "roboto"
			font.styleName: "Medium"
			Layout.fillWidth: true
			Layout.margins:8
		}
	}
}
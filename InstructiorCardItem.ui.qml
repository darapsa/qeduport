import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12

Item {
	
	height: instructorCardAvatar.height
	width: instructorCardAvatar.width

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
}
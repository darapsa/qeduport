import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Item {
	width: courseDetailVideo.width
	height: courseDetailVideo.height
	ColumnLayout {
		id: courseDetailVideo
		spacing: 0
		Rectangle {
			color: "#4d000000"
			radius: 8
			Layout.minimumHeight: 250
			Layout.minimumWidth: 350
			Layout.fillHeight: true
			Layout.fillWidth: true
		}
		RowLayout {
			spacing: 8
			Label {
				id: price
				color: "#000000"
				text: "$150"
				font.weight: Font.Medium
				verticalAlignment: Text.AlignVCenter
				font.pointSize: 32
				font.family: "Roboto"
			}
			Label {
				id: originalPrice
				color: "#80000000"
				text: "$150"
				font.strikeout: true
				font.weight: Font.Medium
				verticalAlignment: Text.AlignVCenter
				font.pointSize: 16
				font.family: "Roboto"
				Layout.fillHeight: true
			}
			Badge{
				id:badge
				Layout.fillWidth: true
				Layout.fillHeight: true
			}
		}
	}
}
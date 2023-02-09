import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Rectangle {
	id: recentlyViewedCard
	Layout.fillWidth: true
	implicitHeight: recentlyCardContent.height
	color: "#ffffff"
	radius: 8
	anchors.margins: 24

	ColumnLayout {
		id: recentlyCardContent
		anchors {
			left: parent.left
			right: parent.right
		}
		Label {
			text: qsTr("Recently viewed")
			font.pointSize: 22
			font.family: "roboto"
			color: "#000000"
			Layout.fillWidth: true
		}
	}
	DropShadow {
		source: recentlyViewedCard
		color: Qt.rgba(.0, .0, .0, .30)
		anchors.fill: recentlyViewedCard
	}
}

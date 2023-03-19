import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.12


RowLayout {
	id:listInline
	width: listInlineItem.width
	height: listInlineItem.height
	RowLayout {
		id:listInlineItem
		Rectangle {
			id: inlineItemIconBg
			radius: 100
			color: "#4dfd7e14"
			Layout.preferredHeight: 42
			Layout.preferredWidth: 42
			Layout.minimumHeight: 42
			Layout.minimumWidth: 42
			
			Image {
				id: inlineItemIcon
				anchors.verticalCenter: parent.verticalCenter
				source: "../../../../../../../Material/svg/filled/school.svg"
				anchors.horizontalCenter: parent.horizontalCenter
				fillMode: Image.PreserveAspectFit
				Layout.preferredHeight: 12
				Layout.preferredWidth: 12
				Layout.minimumHeight: 12
				Layout.minimumWidth: 12

				ColorOverlay{
					anchors.fill: inlineItemIcon
					source: inlineItemIcon
					color: "#fd7e14"
				}
			}
		}
		Label {
			id: instructorTitle
			color: "#000000"
			text: qsTr("List inline item metrics")
			font.styleName: "Regular"
			font.pointSize: 14
			font.family: "roboto"
		}
	}
}

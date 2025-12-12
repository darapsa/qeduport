import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects

RowLayout {

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

			layer {
				enabled:true
				effect: MultiEffect {
					brightness: 1.0
					colorization: 1.0
					colorizationColor: "#fd7e14"
				}
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

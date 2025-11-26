import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Item {
	width: reviewItem.width
	height: reviewItem.height
	RowLayout {
		id:reviewItem
		spacing: 16
		RowLayout {
			id: reviewAvatar
			Layout.alignment: Qt.AlignLeft | Qt.AlignTop
			Rectangle {
				id: avatarMask
				radius: 100
				Layout.preferredHeight: 82
				Layout.preferredWidth: 82
				Layout.minimumHeight: 82
				Layout.minimumWidth: 82
				Image{
					id: avatarImage
					source: "https://eduport.webestica.com/assets/images/avatar/09.jpg"
					sourceSize: Qt.size(parent.width, parent.height)
					visible: false
				}
			}
			OpacityMask {
				anchors.fill: avatarMask
				source: avatarImage
				maskSource: avatarMask
			}
		}
		ColumnLayout {
			id: reviewDetails
			Layout.alignment: Qt.AlignLeft | Qt.AlignTop
			Layout.maximumWidth: 680
			spacing: 8
			
			Label {
				id: reviewerName
				color: "#000000"
				text: "Reviewer Name"
				font.pointSize: 21
				font.family: "roboto"
				Layout.fillWidth: true
			}
			Label {
				id: reviewTimestamp
				color: "#4d000000"
				text: "2 days ago"
				font.pointSize: 14
				font.family: "roboto"
				Layout.fillWidth: true
			}
			Label {
				id: reviewText
				color: "#4d000000"
				text: "Perceived end knowledge certainly day sweetness why cordially. Ask a quick six seven offer see among. Handsome met debating sir dwelling age material. As style lived he worse dried. Offered related so visitors we private removed. Moderate do subjects to distance."
				wrapMode: Text.WordWrap
				font.pointSize: 16
				font.family: "roboto"
				Layout.fillWidth: true
			}
		}

	}
}

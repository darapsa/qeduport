import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects

Item {
	width: reviewItem.width
	height: reviewItem.height
	RowLayout {
		id:reviewItem
		spacing: 16
		RowLayout {
			Layout.alignment: Qt.AlignLeft | Qt.AlignTop
			Image {
				id: avatarImage
				source: "https://eduport.webestica.com/assets/images/avatar/09.jpg"
				sourceSize {
					width: 82
					height: 82
				}
			}
			layer {
				enabled: true
				effect: MultiEffect {
					maskEnabled: true
					maskSource: maskRectangle
				}
			}
			Rectangle {
				id: maskRectangle
				width: avatarImage.sourceSize.width
				height: avatarImage.sourceSize.height
				radius: avatarImage.sourceSize.width
				layer.enabled: true
				visible: false
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

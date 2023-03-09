import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

ColumnLayout {
	readonly property bool doesntEmbed: Qt.platform.os === "android"
				|| Qt.platform.os === "linux"
				|| Qt.platform.os === "osx"
				|| Qt.platform.os === "unix"
				|| Qt.platform.os === "windows"

	FontLoader {
		id: heebo
		source: "Heebo/Heebo-Bold.ttf"
	}

	FontLoader {
		id: regular
		source: doesntEmbed ? "" : "Roboto/Roboto-Regular.ttf"
	}

	Rectangle {
		Layout.fillWidth: true
		Layout.topMargin: 16
		Layout.bottomMargin: 16
		height: 1
		border {
			width: .5
			color: "#0a000000"
		}
	}

	GridLayout {
		Layout.topMargin: -16
		rows: width < 576 ? 2 : 1
		columns: width < 576 ? 1 : 2

		Rectangle {
			id: rectangle
			Layout.topMargin: 16
			Layout.fillWidth: true
			implicitHeight: courseItemImage.height
			radius: 5.2

			Image {
				id: courseItemImage
				anchors {
					left: parent.left
					right: parent.right
				}
				source: image
				fillMode: Image.PreserveAspectFit
				layer.enabled: true
				layer.effect: OpacityMask {
					maskSource: Rectangle {
						width: courseItemImage.width
						height: courseItemImage.height
						radius: 5.2
					}
				}
			}
		}

	       ColumnLayout {
			Layout.topMargin: 16

			Label {
				Layout.fillWidth: true
				text: title
				font {
					family: heebo.name
					pointSize: 15
				}
			}

			Item {
				Layout.fillWidth: true
				Layout.topMargin: 16
				Label {
					anchors {
						top: parent.top
						left: parent.left
						bottom: parent.bottom
					}
					text: price
					color: "#0cbc87"
					font {
						family: doesntEmbed ? "Roboto" : regular.name
						pointSize: 15
					}
				}
		       }
	       }
       }
}

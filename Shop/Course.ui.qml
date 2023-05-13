import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import Bootstrap 5.3

ColumnLayout {
	property string imageSource: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
	property string titleText: "Sketch from A to Z: for app designer"
	property string priceText: "$150"
	property alias buttons: buttons

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
				source: imageSource
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
				text: titleText
				wrapMode: Label.Wrap
				Bootstrap.heading: 6
			}

			Item {
				Layout.fillWidth: true
				Layout.topMargin: 16
				implicitHeight: buttons.height

				Label {
					id: price
					anchors {
						top: parent.top
						left: parent.left
					}
					text: priceText
					wrapMode: Label.Wrap
				}

				GridView {
					id: buttons
					interactive: false
					anchors {
						top: parent.top
						right: parent.right
					}
					width: 137.016
					model: ["Remove", "Edit"]
					delegate: Button {
						flat: true
						text: modelData
					}
				}
		       }
	       }
       }
}

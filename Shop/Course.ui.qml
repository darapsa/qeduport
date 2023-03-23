import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import "../Label" as Lbl

ColumnLayout {
	property string imageSource: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
	property string titleText: "Sketch from A to Z: for app designer"
	property string priceText: "$150"

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

			Lbl.H6 {
				Layout.fillWidth: true
				text: titleText
			}

			Item {
				Layout.fillWidth: true
				Layout.topMargin: 16
				Lbl.Body {
					anchors {
						top: parent.top
						left: parent.left
						bottom: parent.bottom
					}
					text: priceText
					color: "#0cbc87"
				}
		       }
	       }
       }
}

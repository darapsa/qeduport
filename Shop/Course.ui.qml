import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects
import Bootstrap

ColumnLayout {
	property string imageSource: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
	property string titleText: "Sketch from A to Z: for app designer"
	property string priceText: "$150"
	property alias info: info

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
				layer {
					enabled: true
					effect: MultiEffect {
						maskEnabled: true
						maskSource: maskRectangle
					}
				}
				Rectangle {
					id: maskRectangle
					width: courseItemImage.width
					height: courseItemImage.height
					radius: 5.2
					layer.enabled: true
					visible: false
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

			GridView {
				id: info
				Layout.fillWidth: true
				Layout.topMargin: 16
				interactive: false
				model: 1
				delegate: Item {
					width: info.width
					height: buttons.height

					Label {
						id: price
						anchors {
							top: parent.top
							left: parent.left
						}
						text: priceText
						wrapMode: Label.Wrap
					}

					RowLayout {
						id: buttons
						anchors {
							top: parent.top
							right: parent.right
						}

						Button {
							flat: true
							text: "Remove"
						}

						Button {
							flat: true
							text: "Edit"
						}
					}
				}
		       }
	       }
       }
}

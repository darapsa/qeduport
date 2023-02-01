import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Item {
	property string imageSource: "https://eduport.webestica.com/assets/images/courses/4by3/08.jpg"
	readonly property color allLevelsColor: "#ff6f42c1"
	readonly property color beginnerColor: "#ff0cbc87"
	readonly property color intermediateColor: "#ff17a2b8"
	readonly property color allLevelsBackgroundColor: "#1a6f42c1"
	readonly property color beginnerBackgroundColor: "#1a0cbc87"
	readonly property color intermediateBackgroundColor: "#1a17a2b8"
	property string badgeText: "Beginner"
	property color badgeColor: "#ff0cbc87"
	property color badgeBackgroundColor: "#1a0cbc87"
	property string titleText: "Sketch from A to Z: for app designer"
	property alias imageArea: imageArea
	property alias titleArea: titleArea
//	property string textTruncateText: "Rooms oh fully taken by worse do. Points afraid but may end afraid but.."

	DropShadow {
		source: rectangle
		color: Qt.rgba(.113, .227, .325, .15)
		anchors.fill: rectangle
	}

	Rectangle {
		id: rectangle
		radius: 10
		anchors {
			top: parent.top
			topMargin: 25.6
			left: parent.left
			leftMargin: 12.8
			right: parent.right
			rightMargin: 12.8
			bottom: parent.bottom
		}

		Image {
			id: image
			source: imageSource
			sourceSize {
				width: parent.width
				height: parent.width * 3 / 4
			}
			anchors.top: parent.top
			layer.enabled: true
			layer.effect: OpacityMask {
				maskSource: Rectangle {
					width: image.width
					height: image.height
					radius: 10
				}
			}

			MouseArea {
				id: imageArea
				anchors.fill: parent
			}
		}

		Item {
			id: body
			width: parent.width
			anchors {
				top: image.bottom
				bottom: footer.top
			}

			Item {
				id: badgeAndFavorite
				height: body.height / 6
				anchors {
					top: parent.top
					topMargin: 16
					left: parent.left
					leftMargin: 20
					right: parent.right
					rightMargin: 20
				}

				Rectangle {
					id: badge
					color: badgeBackgroundColor
					implicitWidth: badgeLabel.width + 18
					implicitHeight: badgeLabel.height + 6
					radius: 6
					anchors {
						left: parent.left
						verticalCenter: parent.verticalCenter
					}

					FontLoader {
						id: roboto
						name: "Roboto"
						source: "Roboto/Roboto-Regular.ttf"
					}

					Label {
						id: badgeLabel
						text: badgeText
						color: badgeColor
						font {
							family: roboto.name
							pixelSize: 13
						}
						anchors.centerIn: parent
					}
				}

				Image {
					id: favorite
					source: "Font-Awesome/svgs/solid/heart.svg"
					sourceSize {
						height: parent.height / 1.5
					}
					anchors {
						right: parent.right
						verticalCenter: parent.verticalCenter
					}
				}

			}

			FontLoader {
				id: heebo
				name: "Heebo"
				source: "Heebo/Heebo-Bold.ttf"
			}

			Label {
				id: title
				width: parent.width
				text: titleText
				wrapMode: Text.Wrap
				font {
					family: heebo.name
					pixelSize: 21
				}
				anchors {
					top: badgeAndFavorite.bottom
					topMargin: 8
					left: parent.left
					leftMargin: 20
					right: parent.right
					rightMargin: 20
				}

				MouseArea {
					id: titleArea
					anchors.fill: parent
				}
			}
/*
			Label {
				id: textTruncate
				text: textTruncateText
				wrapMode: Text.Wrap
				font {
					weight: Font.Light
					pointSize: 14
				}
			}
*/
			Item {
				id: listInline
				height: badgeAndFavorite.height
				anchors {
					top: title.bottom
					topMargin: 8
					left: parent.left
					leftMargin: 20
					right: parent.right
					rightMargin: 20
				}
			}
		}

		Item {
			id: footer
			width: parent.width
			height: (parent.height - image.sourceSize.height) / 3
			anchors.bottom: parent.bottom
		}
	}

	width: 323.9
	height: 446.583
}

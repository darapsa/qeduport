import QtQuick 2.15
import QtQuick.Controls 2.15

Flickable {
	property string cardImageSource
	contentHeight: card.height

	DetailCardItem {
		id: card
		imageSource: cardImageSource
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}
	}
}

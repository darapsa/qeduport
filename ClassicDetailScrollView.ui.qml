import QtQuick 2.15
import QtQuick.Controls 2.15

ScrollView {
	property string cardImageSource

	DetailCardItem {
		imageSource: cardImageSource
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}
	}
}

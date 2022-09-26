import QtQuick 2.15
import QtQuick.Controls 2.15

GridView {
	cellWidth: parent.width / 2
	cellHeight: cellWidth
	ScrollBar.vertical: ScrollBar {}
}

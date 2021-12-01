import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    width: 600
    height: 400

    property TextArea textArea: textArea

    TextArea {
        id: textArea
        anchors.fill: parent
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.WrapAnywhere
        font.pointSize: 12
        rightPadding: 8
        leftPadding: 8
        font.family: "Courier"
        placeholderText: qsTr("Place your base64 encoded data here...")
    }
}

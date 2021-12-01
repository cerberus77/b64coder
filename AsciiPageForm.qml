import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    width: 600
    height: 400

    property TextArea textArea: textArea

    TextArea {
        id: textArea
        color: "#000000"
        anchors.fill: parent
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.WrapAnywhere
        placeholderTextColor: "#7f000000"
        font.pointSize: 12
        placeholderText: "Type your ASCII data here..."
        antialiasing: false
        rightPadding: 8
        leftPadding: 8
        font.family: "Courier"
    }
}

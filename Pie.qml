/****************************************************************************

Copyright 2013-2014 Michał Prędotka

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

****************************************************************************/

import QtQuick 1.1

Rectangle {
    id: pie

    color: "#eee"
    width: parent.width - 80
    height: parent.height - 80
    radius: 4
    x: 40
    y: - parent.height + 20
    z: 2

    MouseArea {
        anchors.fill: parent
        onClicked: timer_root.state = ""
    }

    Text {
        id: pieegg

        anchors {
            top: parent.top
            topMargin: 40
            horizontalCenter: parent.horizontalCenter
        }
        text: qsTr("<center>3.14159</center><center>That's right, this is the part of Pi</center><center>...and here's the part of a pie for you</center>")
        font {
            family: "Ubuntu Light"
            pixelSize: parent.width/20
        }
    }

    Image {
        id: pieimg

        source: "images/pie.png"
        anchors.centerIn: parent
    }

    Text {
        id: egg

        color: "#4c4c4c"
        anchors {
            bottom: parent.bottom
            bottomMargin: 30
            horizontalCenter: parent.horizontalCenter
        }
        text: qsTr("You have just found an Easter Egg!")
        font {
            family: "Ubuntu Light"
            pixelSize: parent.width/30
        }
    }

    Text {
        id: photocredit

        color: "#4c4c4c"
        anchors {
            bottom: parent.bottom
            bottomMargin: 5
            horizontalCenter: parent.horizontalCenter
        }
        text: qsTr("Photo by TheCulinaryGeek <style type='text/css'>a:link {color:'#4c4c4c'}</style><a href='http://www.flickr.com/photos/preppybyday/5076305261/'>http://www.flickr.com/photos/preppybyday/5076305261/</a>")
        font.pixelSize: 12
        onLinkActivated: Qt.openUrlExternally(link)
    }
}

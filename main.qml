import QtQuick
import QtQuick.Window

Window {
    id: windowLogin
    width: 1366
    height: 768
    visible: true
    title: qsTr("Commande du robot")

    Image {
        id: background
        x: 0
        y: 0
        source: "qrc:/background.png"
        fillMode: Image.PreserveAspectFit

        Image {
            id: backdroite
            x: 1059
            y: 213
            source: "qrc:/back droite.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: video
            x: 60
            y: 200
            source: "qrc:/video.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: backgauche
            x: 60
            y: 213
            source: "qrc:/back gauche.png"
            fillMode: Image.PreserveAspectFit

            Image {
                id: down
                x: 115
                y: 270
                source: "qrc:/down.png"
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    id: area_down
                    anchors.fill: parent
                    hoverEnabled: true
                    Connections {
                        target: area_down
                        function onClicked() {
                            console.log("robot arrière")
                            MysqlQMLObject.connectToDatabase()
                            MysqlQMLObject.down()
                        }
                    }
                }
            }

            Image {
                id: up
                x: 115
                y: 90
                source: "qrc:/up.png"
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    id: area_up
                    anchors.fill: parent
                    hoverEnabled: true
                    Connections {
                        target: area_up
                        function onClicked() {
                            console.log("robot avant")
                            MysqlQMLObject.connectToDatabase()
                            MysqlQMLObject.up()
                        }
                    }
                }
            }

            Image {
                id: right1
                x: 213
                y: 166
                source: "qrc:/right.png"
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    id: area_right
                    anchors.fill: parent
                    hoverEnabled: true
                    Connections {
                        target: area_right
                        function onClicked() {
                            console.log("robot droite")
                            MysqlQMLObject.connectToDatabase()
                            MysqlQMLObject.right()
                        }
                    }
                }
            }

            Image {
                id: left1
                x: 44
                y: 166
                source: "qrc:/left.png"
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    id: area_left
                    anchors.fill: parent
                    hoverEnabled: true
                    Connections {
                        target: area_left
                        function onClicked() {
                            console.log("robot gauche")
                            MysqlQMLObject.connectToDatabase()
                            MysqlQMLObject.left()
                        }
                    }
                }
            }
        }

        Text {
            id: text1
            x: 100
            y: 150
            width: 165
            height: 57
            text: qsTr("Déplacement ")
            font.pixelSize: 40
            font.family: "Times New Roman"
            color: "#82d5ef"
        }
        Text {
            id: text2
            x: 561
            y: 150
            width: 165
            height: 57
            text: qsTr("Streaming Vidéo")
            font.pixelSize: 40
            font.family: "Times New Roman"
            color: "#82d5ef"
        }
        Text {
            id: text3
            x: 427
            y: 8
            width: 557
            height: 57
            text: qsTr("ROBOT EXPLORATEUR ")
            font.pixelSize: 47
            font.family: "Times New Roman"
            color: "#82d5ef"
        }
        Text {
            id: text4
            x: 1108
            y: 299
            width: 196
            height: 57
            text: qsTr("Température: ")
            font.pixelSize: 32
            font.family: "Times New Roman"
            color: "#82d5ef"
        }
        Text {
            id: text6
            x: 1126
            y: 416
            width: 165
            height: 57
            text: qsTr("Humidité: ")
            font.pixelSize: 32
            font.family: "Times New Roman"
            color: "#82d5ef"
        }

        Image {
            id: headlin
            x: 0
            y: 15
            source: "images/headlin.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: text7
            x: 299
            y: 697
            width: 299
            height: 63
            color: "#82d5ef"
            text: qsTr("Date et heure :")
            font.pixelSize: 38
            font.family: "Times New Roman"
        }

        Text {
            id: text8
            x: 561
            y: 699
            width: 275
            height: 61
            color: "#82d5ef"
            text: new Date().toLocaleDateString(Qt.locale("fr_FR"))
            font.pixelSize: 38
            font.family: "Times New Roman"
        }
        Text {
            id: text9
            x: 989
            y: 699
            width: 275
            height: 61
            color: "#82d5ef"
            text: new Date().toLocaleTimeString(Qt.locale("fr_FR"), "hh:mm:ss")
            font.pixelSize: 38
            font.family: "Times New Roman"
        }
    }
}

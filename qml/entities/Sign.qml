import QtQuick 2.0
import Felgo 3.0

PenguinEntityBaseDraggable {
    id: sign
    entityType: "sign"

    property alias bigtux: bigtux

    Image {
        id: bigtux

        property double row: 0
        property double column: 0

        source: "../../assets/sign/bigtux_sign.png"
        width: 200
        height: 140//135
    }
}


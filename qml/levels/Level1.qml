import Felgo 3.0
import QtQuick 2.12
import "../entities"
import "." as Levels

Levels.LevelBase {
    id: level1
    // we need to specify the width to get correct debug draw for our physics
    // the PhysicsWorld component fills it's parent by default, which is the viewPort Item of the gameScene and this item uses the size of the level
    // NOTE: thy physics will also work without defining the width here, so no worries, you can ignore it untill you want to do some physics debugging
    width: 42 * gameScene.gridSize


    // you could draw your level on a graph paper and then add the tiles here only by defining their row, column and size

    GroundInside {
        row: -2
        column: 0
        size:24
    }

    GroundInside {
        row: -2
        column: 1
        size: 24
    }

    Ground {
        row:-2
        column: 2
        size: 4
    }

    GroundInside {
        row: 2
        column: 2
        size: 19
    }

    Ground {
        row: 2
        column: 3
        size: 3
    }

    GroundInside {
        row: 5
        column: 3
        size: 3
    }

    GroundInside {
        row: 5
        column: 4
        size: 3
    }

    Ground {
        row: 5
        column: 5
        size: 3
    }

    Ground {
        row: 8
        column: 3
        size: 13
    }

    Ground {
        row: 14
        column: 7
        size: 4
    }

    Ground {
        row: 20
        column: 8
        size: 1
    }

    Ground {
        row: 24
        column: 7
        size: 2
    }

    GroundInside {
        row: 22
        column: 0
        size: 13
    }

    GroundInside {
        row: 22
        column: 1
        size: 13
    }


    Spikes {
        row: 21
        column: 1.5
        size: 6
    }

    Ground {
        row: 24
        column: 2
        size: 2
    }

    GroundInside {
        row: 26
        column: 2
        size:1
    }

    Ground {
        row: 26
        column: 3
        size: 1
    }

    Spikes {
        row: 27
        column: 1.5
        size: 4
    }

    GroundInside {
        row: 28
        column: 2
        size: 1
    }

    GroundInside {
        row: 28
        column: 3
        size: 1
    }

    Ground {
        row: 28
        column: 4
        size: 1
    }

    Ground {
        row: 29
        column: 2
        size: 3
    }

    GroundInside {
        row: 32
        column: 2
        size: 1
    }

    GroundInside {
        row: 32
        column: 3
        size: 1
    }

    GroundInside {
        row: 32
        column: 4
        size: 1
    }

    Ground {
        row: 32
        column: 5
        size: 1
    }

    Ground {
        row: 33
        column: 2
        size: 2
    }


    GroundInside {
        row: 37
        column: 0
        size:10
    }

    GroundInside {
        row: 37
        column: 1
        size:10
    }

    Ground {
        row: 37
        column: 2
        size:10
    }

    Door {
        row: 40
        column: 5.6
        size: 1
    }

    Fire {
        row: 4
        column: 4
        dieFire.visible: false
    }

    Fatbat {
        row: 34
        column: 4
        dieFatbat.visible: false
    }

    CoinGround {
        id: coin1
        row: 5.5
        column: 5.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin2
        row: 6.5
        column: 5.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin3
        row: 7.5
        column: 5.5
        startX: row*64
        startY: level.height-(column+1)*64
    }



    CoinGround {
        id: coin6
        row: 11.5
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin7
        row: 12.5
        column: 6
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin4
        row: 12.5
        column: 7
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin8
        row: 14.5
        column: 7.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin9
        row: 15.5
        column: 7.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin10
        row: 16.5
        column: 7.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin11
        row: 17.5
        column: 7.5
        startX: row*64
        startY: level.height-(column+1)*64
    }


    CoinGround {
        id: coin12
        row: 20.3
        column: 8.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin13
        row: 24.3
        column: 7.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin14
        row: 25.3
        column: 7.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Fire {
        row: 20
        column: 4
        dieFire.visible: false
    }

    Fire {
        row: 30
        column: 4
        dieFire.visible: false
    }

    CoinGround {
        id: coin15
        row: 13.3
        column: 3.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin16
        row: 14.3
        column: 3.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin17
        row: 15.3
        column: 3.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin18
        row: 16.3
        column: 3.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin19
        row: 17.3
        column: 3.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin20
        row: 18.3
        column: 3.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin21
        row: 19.3
        column: 3.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin22
        row: 20.3
        column: 3.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin23
        row: 24.3
        column: 2.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin24
        row: 25.3
        column: 2.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin25
        row: 26.3
        column: 3.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin26
        row: 28.3
        column: 4.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    CoinGround {
        id: coin27
        row: 32.3
        column: 5.5
        startX: row*64
        startY: level.height-(column+1)*64
    }

    Sign {
        row: 9
        column: 5.2
    }

    Block {
        id: first_block
        row: 14
        column: 5
    }

    SnowBall {
        id: snowball
        row: 14
        column: 5.5
        startX: row * 64
        startY: level.height - (column+1) * 64
    }

    Brick {
        row:14.5
        column: 5
    }

    Brick {
        row: 15
        column: 5
    }

    Brick {
        row: 15.5
        column: 5
    }

    ExcBrick {
        row: 16
        column: 5
    }


}

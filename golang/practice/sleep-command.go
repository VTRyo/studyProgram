package main

import (
    "log"
    "os/exec"
    "fmt"
)

func main() {
    log.Print("これはコマンドを実行するプログラムです.\n")
    command := exec.Command("sleep", "2")
    error := command.Start()

    if error != nil {
      panic(fmt.Sprintf("エラー1: %v", error))
    }

    log.Printf("コマンドを開始しました")

    error = command.Wait()

    if error != nil {
      panic(fmt.Sprintf("エラー2: %v", error))
    }

    log.Printf("コマンドが終了しました")
}


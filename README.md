# Command
命令をクラスにする

## どんなものか

## 登場人物
### Command(命令役)
命令のインターフェースを定義する
> サンプルプログラムのCommandプロトコル

### ConcreteCommand(具体的命令)
Comamndプロトコルを実装する
> サンプルプログラムのDrawCommandクラス

### Receiver(受信者)
Command役が命令を実行するときに対象となる役(= 命令の受け取り手)
> サンプルプログラムのDrawViewクラス

### Client(依頼者)
ConcreteCommandを生成し、Receiverを割り当てる
> サンプルプログラムのViewController

### Invoker(起動者)
命令の実行を開始する。
> サンプルプログラムでは、ViewControllerとDrawViewクラス

## どんなメリットがあるか


## 参考文献
- [増補改訂版 Java言語で学ぶデザインパターン入門](https://www.hyuki.com/dp/)

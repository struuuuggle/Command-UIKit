# Command
命令をクラスにする

[UML](https://raw.githubusercontent.com/struuuuggle/Command-UIKit/master/img/command_uml.pdf)
 | [シーケンス図](https://raw.githubusercontent.com/struuuuggle/Command-UIKit/master/img/command_sequence.pdf)

<img src="https://github.com/struuuuggle/Command-UIKit/blob/master/img/command.gif" width="320"/>

## どんなものか
命令をオブジェクトとして表現する。
SwiftではCommandをプロトコルとして表現し、ここの命令はComamndプロトコルに適合したConcreteCommandを作って実装してみた。


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

## ポイント
### 命令をオブジェクトとして表現すること
Commandパターンのポイントは、命令(処理)をメソッド呼び出しとして表現するのではなくオブジェクトとして表現すること。
命令をオブジェクトとして表現すれば、命令を再利用することができるようになる。
たとえば、命令をコレクションで保持すれば履歴を表現したり、複数の処理をまとめて実行することも容易になる。

## 命令にどんな情報をもたせるかは目的による
描画した様子を履歴から復元するだけなら、「復元」を表すCommandには最終的な描画結果の情報さえあればOK。
描画した様子をアニメーションつきで表現するとなると、「復元」を表すCommandには時間情報も持たせる必要がある。
つまるところは目的に応じた情報の持たせ方を設計する必要がある。

## ラッパー/アダプター
命令はユーザーの操作するアクションをつけることになる。(draw, clear...)





## 参考文献
- [増補改訂版 Java言語で学ぶデザインパターン入門](https://www.hyuki.com/dp/)

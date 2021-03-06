Raspberry Pi 
=============

### 設定密碼

`sudo raspi-config` 許多設定可以在裡面完成

`sudo passwd`	更改目前使用者的密碼

`sudo passwd root`  更改root密碼

### 使用者與群組

`sudo adduser user`  新增使用者

`sudo adduser user group` 將使用者家進群組

### 編輯檔案

`vi /資料夾/檔案名稱 `

__或__

`nano /資料夾/檔案名稱`

### 設定sudo權限

`sudo vi /etc/sudoers` 編輯這份檔案

```
root    ALL=(ALL:ALL) NOPASSWD:ALL     #在這行下面
yourname    ALL=(ALL:ALL) NOPASSWD:ALL #新增你的使用者名稱


```

### 更改使用者名稱

若是更改預設使用者的話，請先到`raspi-config` > `Boot Options` > `Desktop / CLI` > `Desktop` 及`Console`關掉預設登入，重開機後請用其他使用者登入，或是使用`root`登入。

`usermod -l newname pi`  更改使用者名稱

`usermod -m -d /home/newname newname`  更改家目錄名稱

`groupmod --new-name newname pi`  更改群組名稱



### 無線網路設定

在 `/etc/wpa_supplicant/wpa_supplicant.conf` 做設定

```config
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=TW

network={
        ssid="ASUSLAB"   #無線網路的名稱
        psk="ASUSASUS"   #無線網路的密碼
        key_mgmt=WPA-PSK
}
```

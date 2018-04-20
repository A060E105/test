# java

### java型態
|||
|:--:|:--:|
|int |整數|
|char|字元|
|float|浮點數|
|String|字串|
---
### java基本架構
* ###### 以hello.java當範例
```java
import java.util.Scanner;  //載入Scanner類別

public class hello{        //公開的類別 **注意類別名稱需與檔名相同**
	public static void main(String[] args){   //主函式
		Scanner sr = new Scanner(System.in);  //宣告sr為Scanner類別的變數 new一個物件進來


	}
}
```
---
* ### 輸出的方法
>`System.out.print();` 
<br>及<br>
>`System.out.println();`

##### 例如:
```java
public class hello{
	public static void main(String[] args){
		System.out.print("Hello");     //輸出完不會斷行
		System.out.println(" World!!");  // 輸出完會自動斷行
	}
}
```
>##### 結果:
```
Hello World!!
```

- ##### 字串加法
```java
public class hello{
	public static void main(String[] args){

		String str1 = "ABC";
		String str2 = "123";

		System.out.println(str1+str2);  //合併兩個字串
	}
}
```
>##### 結果:
```
ABC123
```

- ##### 整數加法
```java
public class hello{
	public static void main(String[] args){

		int num1 = 5;
		int num2 = 10;

		System.out.println(num1+num2);  //兩數相加
	}
}
```
>##### 結果:
```
15
```

- ##### 字串與整數的輸出
```java
public class hello{
	public static void main(String[] args){

		int num1 = 5;
		int num2 = 10;
		int num3 = 15;

		System.out.println("(" + num1 + "x" + num2 + ")+" + num3 + "=" + ((num1*num2)+num3));
	}
}
```
>##### 結果:
```
(5x10)+15=65
```
---
* ### 輸入的方法
#### next();
```java
import java.util.Scanner;

public class hello{
	public static void main(String[] args){
		Scanner sr = new Scanner(System.in);

		String str1 = sr.next();
		String str2 = sr.next();

		System.out.print("輸出:");
		System.out.println(str1+str2);  //合併兩個字串
	}
}
```
> ##### 結果:
```
5 6
輸出:56
```
---
#### nextInt();
```java
import java.util.Scanner;

public class hello{
	public static void main(String[] args){
		Scanner sr = new Scanner(System.in);

		int num1 = sr.nextInt();
		int num2 = sr.nextInt();

		System.out.println(num1+num2);  //兩數相加
	}
}
``` 
> ##### 結果:
```
5 10
15
```
---
#### nextFloat();
```java
import java.util.Scanner;

public class hello{
	public static void main(String[] args){
		Scanner sr = new Scanner(System.in);

		float ft1 = sr.nextFloat();
		float ft2 = sr.nextFloat();

		System.out.println(ft1+ft2);
	}
}
```
> ##### 結果:
```
1.5 3.6
5.1

```
---
#### nextLine();
```java
import java.util.Scanner;

public class hello{
	public static void main(String[] args){
		Scanner sr = new Scanner(System.in);

		String str = sr.nextLine();     //讀取整行字串
		String arr_str[] = str.split(" ");  //將字串分開成陣列 以空格來分
		int arr_int[] = new int[arr_str.length];    //宣告整數陣列
						//length方法會計算陣列的長度

		for(int i=0;i<arr_str.length;i++){
			arr_int[i] = Integer.parseInt(arr_str[i]); //將字串轉成整數
		}

		int sum=0;
		for(int i=0;i<arr_str.length;i++){
			sum+=arr_int[i];           //將輸入的數字總和
		}
		System.out.println("總和:"+sum);
	}
}
```
> ##### 結果:
```
5 10 15 20 25
總和:75
```
---
### 判斷式
- if...else if...else
```
if(判斷式1){  
	//判斷式1為真 則執行此區塊
}else if(判斷式2){
	//判斷式2為真 則執行此區塊
}else{
	//以上判斷式皆為假 則執行此區塊
}
```
##### 例如:
```java
public class hello{
	public static void main(String[] args){

		int num = 50;

		if(num>50){
			System.out.println(num + ">50");
		}else if(num<50){
			System.out.println(num + "<50");
		}else{
			System.out.println(num + "=50");
		}
	}
}
```
> ##### 結果:
```
50=50
```
---
### 迴圈
- for迴圈
```
for(初始值;判斷值;遞增值){
	程式碼;
}
```

##### 例如:
```java
public class hello{
	public static void main(String[] args){

		for(int i=0;i<10;i++){
			System.out.print(i+" ");
		}
		System.out.println();
	}
}
```
> ##### 結果:
```
0 1 2 3 4 5 6 7 8 9
```


多行註解【^1】
【1】: https://www.gwww.google.com.tw/

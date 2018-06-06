```php
<?php
date_default_timezone_set("asia/taipei");
$dsn='mysql:host=127.0.0.1;dbname=IOTDB';

try {
	$db=new PDO($dsn,'root','ksui1302');
	$db->exec("set names utf8");

	if(isset($_GET['SID'])&&isset($_GET['Name'])&&isset($_GET['Value'])&&isset($_GET['Unit'])){//判斷所有參數是否都有值
		//取得參數
		$SID=$_GET['SID'];
		$Name=$_GET['Name'];
		$Value=$_GET['Value'];
		$Unit=$_GET['Unit'];
		$sql="INSERT INTO SensorValue(SID,Name,Value,Unit) VALUES('".$SID."','".$Name."','".$Value."','".$Unit."');";//新增資料SQL指令
		echo $sql;
		$result=$db->query($sql);
		echo $result;
		// print($db->query($sql));
		if($result==1){//判斷是否有新增成功
			echo "新增成功";
		}else{
			echo "新增失敗";
		}
	}else{
		echo "資料錯誤";
	}

} catch (PDOException $e) {
	printf("DATABASER_ERRMESG: %s",$e->getMessage());
}


?>
```

```php
<html>
	<body>
		<table border=3>
			<tr>
				<th>Name</th>
				<th>Value</th> 
				<th>Unit</th>
				<th>Time</th>
			 </tr>
		<?php
			// header("Content-Type:text/html; charset=utf-8");

			date_default_timezone_set("asia/taipei");
			$dsn='mysql:host=127.0.0.1;dbname=IOTDB';

			try {
				$db=new PDO($dsn,'root','ksui1302');
				$db->exec("set names utf8");

				if(isset($_GET['SID'])){//以_GET取得SID
					$SID=$_GET['SID'];
					$sql="SELECT * FROM SensorValue where SID='".$SID."';";//以SID，搜尋符合條件的資料

					foreach ($db->query($sql) as $row) {
					    echo "<tr>";
					    echo "	<td>".$row["Name"]."</td>";
					    echo "	<td>".$row["Value"]."</td>";
					    echo "	<td>".$row["Unit"]."</td>";
					    echo "	<td>".$row["Time"]."</td>";
					    echo "</tr>";
					}

				}else{
					echo "請輸入SID(GET)";
				}
			} catch (PDOException $e) {
				printf("DATABASER_ERRMESG: %s",$e->getMessage());
			}
				
		?>	
		</table>

	</body>
</html>

```

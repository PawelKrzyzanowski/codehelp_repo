<!DOCTYPE HTML PUBLIC>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<title>C o d e . H e l p</title>
	<meta name="description" content="Opis zawartości" />
	<meta name="keywords" content="moja, strona, opis, tytuł, zawartość" />
	<meta http-equiv="X-UA-Compatibile" content="IE=edge, chrome=1" />
	<!--<link rel="stylesheet" href="style.css" type="text/css"/>-->
	<!--<script type="text/javascript" src="javascript.js"> </script>-->
</head>
<body>
	<table width="95%" align="center" border="2" bordercolor="#d4d4d4" cellpadding="5" cellspacing="1">     
		<tr>
<?php 
			//POŁĄCZENIE
			ini_set("display_errors", 0);
			require_once 'connect.php';
			$polaczenie = mysqli_connect($host, $user, $password);
			mysqli_query($polaczenie, "SET CHARSET utf8");
			mysqli_query($polaczenie, "SET NAMES 'utf8' COLLATE 'utf8_polish_ci'");
			mysqli_select_db($polaczenie, $database);
			//POLECENIE SQL
			$polecenie = 'SELECT * FROM mytable';
			$rezultat = mysqli_query($polaczenie, $polecenie);
			//WYŚWIETLENIE WYNIKÓW TABELI Z BAZY - START
			$liczba_wierszy = mysqli_num_rows($rezultat);
			//KOMÓRKI NA PIERWSZY WIERSZ - START
			if ($liczba_wierszy>=1) 
			{
//echo<<<END END; musi być na samym brzegu i nic innego w linijce
echo<<<END
<td width="10%" align="center" bgcolor="e5e5e5">JĘZYK</td>
<td width="10%" align="center" bgcolor="e5e5e5">TEMAT</td>
<td width="30%" align="center" bgcolor="e5e5e5">OPIS</td>
<td width="50%" align="center" bgcolor="e5e5e5">PRZYKŁAD</td>
</tr><tr>
END;
			}//KOMÓRKI NA PIERWSZY WIERSZ - STOP
			//UZUPEŁNIENIE TREŚCI - START
			for ($i = 1; $i <= $liczba_wierszy; $i++) 
			{
				$rekord = mysqli_fetch_assoc($rezultat);
				$jezyk = $rekord['jezyk'];
				$temat = $rekord['kategoria'];
				$opis = $rekord['opis'];
				if($jezyk=='HTML')
					$kod = htmlspecialchars($rekord['przyklad']);
				else
					$kod = $rekord['przyklad'];
echo<<<END
<td width="10%" align="center">$jezyk</td>
<td width="10%" align="center">$temat</td>
<td width="30%" align="left">$opis</td>
<td width="50%" align="justify">
<TEXTAREA rows="3" style="width:100%">
$kod
</TEXTAREA>
</td>
</tr><tr>
END;
			}//UZUPEŁNIENIE TREŚCI STOP
?>
		</tr>
	</table>
</body>
</html>
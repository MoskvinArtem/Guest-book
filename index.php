<?php
header("Content-type: text/html; charset=utf-8");

require 'connect.php';
require 'funcs.php';

if (!empty($_POST)) {
	save_mess();
	header("Location: {$_SERVER['PHP_SELF']}");
	exit;
}

$messages = get_mess();

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<title>Гостевая книга</title>

</head>
<body>

<div class="some-form">
  <form action="index.php" method="post" class="form">
    <div class="some-form__header title">Введите ваши данные и текст, чтобы оставить комментарий в гостевой книге</div>

    <div class="some-form__line">
      <input type="text" name="name" id="name" placeholder="Ваше имя *" required>
    </div>
    <div class="some-form__line">
      <input type="text" name="homepage" id="homepage" placeholder="Homepage">
    </div>
    <div class="some-form__line">
      <input type="email" name="email" placeholder="E-mail" required>
    </div>

    <div class="some-form__line">
    	<textarea type="text" name="text" id="text" placeholder="Текст комментария" required></textarea>
    </div>

    <div class="some-form__submit">
      <input type="submit" value="Отправить" class="button button_submit button_wide">
    </div>

  </form>
</div>

<div class="some-invis-form"></div>

<div class="messages-form">

	
	<?php if(!empty($messages)): ?>
		<?php foreach ($messages as $message): ?>
			<div class="messages">

				<div style="font: 600 18px 'Roboto', sans-serif;"><?=nl2br(htmlspecialchars($message['name']))?></div>
				<div style="font: 200 12px 'Roboto'; float: left; padding-right: 10px"><?=$message['date']?></div>
				<div style="font: 200 14px 'Roboto'"><?=nl2br(htmlspecialchars($message['email']))?></div>
				<div style="font: 600 14px 'Roboto'"><?=nl2br(htmlspecialchars($message['homepage']))?></div>
				<hr>
				<div style="font: 200 18px 'Roboto'"><?=nl2br(htmlspecialchars($message['text']))?></div>
			</div>
		<?php endforeach; ?>
	<?php endif; ?>

</div>

</body>
</html>
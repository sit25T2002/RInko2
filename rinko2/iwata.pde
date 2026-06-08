void iwataINIT() {
  //noStroke();

  // りんご本体
  fill(220, 30, 30);
  ellipse(170, 220, 120, 140);
  ellipse(230, 220, 120, 140);

  // 上部のくぼみ
  fill(255);
  ellipse(200, 145, 40, 25);

  // ヘタ
  fill(120, 80, 40);
  rect(195, 100, 10, 50);

  // 葉
  fill(50, 180, 70);
  pushMatrix();
  translate(230, 110);
  rotate(radians(30));
  ellipse(0, 0, 60, 30);
  popMatrix();

  // ハイライト
  fill(255, 255, 255, 120);
  ellipse(160, 190, 30, 50);
}

float t = 0;

void setup() {
  // キャンバスサイズ (w=400に対応)
  size(400, 400);
}

void draw() {
  // 背景色 (ほぼ黒)
  background(9);
  
  // 線の色と透明度 (元の stroke(w, 96) は白の半透明に相当します)
  stroke(255, 96);

  // 時間を進める
  t += PI / 60.0;

  // 元の for(i=3e4; i--;) は 29999 から 0 までのループ
  for (int i = 29999; i >= 0; i--) {
    // 割り算を小数で行うため .0 をつけています
    float y = i / 799.0;
    
    float k = 5 * cos(i / 48.0);
    float e = 5 * cos(y / 9.0);
    
    // mag() でベクトルの長さを計算
    float m = mag(k, e);
    
    // JavaScriptの累乗 (**) は、Processingでは pow() を使います
    float d = pow(m / (6 + (i % 4)), 4) + 4;
    
    // ~(i & 1) はビット演算。iが偶数なら-1、奇数なら-2になります
    int bitOp = ~(i & 1);
    
    float q = k * (3 + e / 2.0 * sin(d * 8 + k / 9.0 - t)) - 3 * sin(k * d / 3.0) - bitOp * 80;
    
    // 角度cの計算
    float c = d - t / 9.0 + (i % 5);
    
    // X座標とY座標の計算 (中心を200, 200に設定)
    float px = q * sin(c) + 200;
    float py = q * cos(c - (i % 2) + (i % 5) * 3 + 7) + 200;
    
    // 点を描画
    point(px, py);
  }
}

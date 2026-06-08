boolean initialized = false;

int num = 100;
int mod = 2;
int[][] state = new int[num][num];

void koizumi() {

  // 初期状態にする処理：最初の1回だけ実行
  if (!initialized) {
    for (int i=0; i<num; i++) {
      for (int j=0; j<num; j++) {
        if (i == num/2 && j == num/2) {
          state[i][j] = 1;
        } else {
          state[i][j] = 0;
        }
      }
    }
    initialized = true;
  }


  // セルを描く処理
  float scalar = (float)width / num;

  noStroke();

  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {

      // 色相にセルの状態を割り当てる
      fill((float)state[i][j] % mod, (float)state[i][j] % mod, 1);

      // セルの描画
      rect(j * scalar, i * scalar, scalar, scalar);
    }
  }


  // 次の世代を計算する処理
  int[][] nextState = new int[num][num];

  for (int i=0; i<num; i++) {
    for (int j=0; j<num; j++) {

      int nextC;

      nextC = (
        state[(i-1+num) % num][j]
        + state[i][(j-1+num) % num]
        + state[i][j]
        + state[i][(j+1) % num]
        + state[(i+1) % num][j]
        ) % mod;

      nextState[i][j] = nextC;
    }
  }

  // 状態を更新
  state = nextState;
}

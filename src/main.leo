// The 'game' program.
program game.aleo {

  // Function to initialize the game board
  function init_board(rows: u32, cols: u32) -> [[u32]]:

    var board: [[u32]] = new [[u32]](4, 4) { |i, j| 0 };

    generate_new_cell(&mut board);
    generate_new_cell(&mut board);

    return [[u32]](board);

  }

  // Function to generate a new cell
  function generate_new_cell(board: &mut [[u32]]) {
    let mut empty_cells: [(u32, u32)] = [];
    for i in range(4) {
      for j in range(4) {
        if board[i][j] == 0 {
          empty_cells.push((i, j));
        }
      }
    }
    
    if empty_cells.len() > 0 {
      let (i, j) = random.choice(empty_cells);
      board[i][j] = random.choice([2, 4]);
    }
  }

  // Function to check if a move is possible
  function can_move(board: &[[u32]], direction: u32) -> bool {
    for i in range(4) {
      for j in range(4) {
        if board[i][j] != 0 {
          match direction {
            case 0: // Up
              if i > 0 && board[i - 1][j] == 0 {
                return true;
              } else if i > 0 && board[i - 1][j] == board[i][j] {
                return true;
              }
            case 1: // Down
              if i < 3 && board[i + 1][j] == 0 {
                return true;
              } else if i < 3 && board[i + 1][j] == board[i][j] {
                return true;
              }
            case 2: // Left
              if j > 0 && board[i][j - 1] == 0 {
                return true;
              } else if j > 0 && board[i][j - 1] == board[i][j] {
                return true;
              }
            case 3: // Right
              if j < 3 && board[i][j + 1] == 0 {
                return true;
              } else if j < 3 && board[i][j + 1] == board[i][j] {
                return true;
              }
          }
        }
      }
    }
    return false;
  }

  // Function to perform a move
  function move(board: &mut [[u32]], direction: u32) {
    if !can_move(board, direction) {
      return;
    }
  }
  
    for i in range(4) {
      for j in range(4) {
        if board[i][j] != 0 {
          match direction {
            case 0: // Up
              if i > 0 && board[i - 1][j] == 0 {
                board[i - 1][j] = board[i][j];
                board[i][j] = 0;
              } else if i > 0 && board[i - 1][j] == board[i][j] {
                board[i - 1][j] *= 2;
                board[i][j] = 0;
              }
            case 1: // Down
              if i < 3 && board[i + 1][j] == 0 {
                board[i + 1][j] = board[i][j];
                board[i][j] = 0;
              } else if i < 3 && board[i + 1][j] == board[i][j] {
                board[i + 1][j] *= 2;
                board[i][j] = 0;
              }
            case 2: // Left
              if j > 0 && board[i][j - 1] == 0 {
                board[i][j - 1] = board[i][j];
                board
              }
          }
        }
      }
    }
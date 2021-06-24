# クラス定義
class Team
  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  # 勝率を戻り値とするメソッド：勝率 ＝ 勝試合数÷（勝試合数＋敗試合数）
  def calc_win_rate()
      self.win/(self.win + self.lose).to_f
  end
  
  # チームの成績をターミナルに表示する
  def show_team_result()
      puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{calc_win_rate()} です。"
  end
end

# インスタンスの生成と、変数への代入
giants = Team.new('Giants', 67, 45, 8)
tigers = Team.new('Tigers', 60, 53, 7)
dragons = Team.new('Dragons', 60, 55, 5)
baystars = Team.new('BayStars', 56, 58, 6)
carp = Team.new('Carp', 52, 56, 12)
swallows = Team.new('Swallows', 41, 69, 10)


# インスタンスの使用
giants.show_team_result()
tigers.show_team_result()
dragons.show_team_result()
baystars.show_team_result()
carp.show_team_result()
swallows.show_team_result()
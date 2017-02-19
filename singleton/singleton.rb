class Singleton
  def self.get_instance
    @singleton = self.new
    puts "インスタンスを生成しました"
    @singleton
  end
end

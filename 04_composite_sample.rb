
# FileEntry, DirEntryクラスの共通メソッドを規定(Component)
class Entry
  # ファイル/ディレクトリの名称を返す
  def get_name; end

  # ファイル/ディレクトリのパスを返す
  def ls_entry(prefix) end

  # ファイル/ディレクトリの削除を行う
  def remove; end
end


# ファイルを表す(Leaf)
class FileEntry < Entry
  def initialize(name)
    @name = name
  end

  # ファイル名を返す
  def get_name
    @name
  end

  # ファイルのパスを返す
  def ls_entry(prefix)
    puts(prefix + "/" + get_name)
  end

  # ファイルの削除を行う
  def remove
    puts @name + "を削除しました"
  end
end

# ディレクトリを表す(Composite)
class DirEntry < Entry
  def initialize(name)
    @title = name
    @directory = Array.new
  end

  def get_name
    @title
  end

  def add(entry)
    @directory.push(entry)
  end

  def ls_entry(prefix)
    puts(prefix + "/" + get_name)
    @directory.each do |e|
      e.ls_entry(prefix + "/" + @title)
    end
  end

  def remove
    @direcotry.each do |i|
      i.remove
    end
    puts @title + "を削除しました"
  end
end


root = DirEntry.new("root")
tmp = DirEntry.new("tmp")
tmp.add(FileEntry.new("conf"))
tmp.add(FileEntry.new("data"))
root.add(tmp)

root.ls_entry("")

require './print_banner'

class Print < PrintBanner
  def print_week
    @banner.show_with_paren
  end

  def print_strong
    @banner.show_with_aster
  end
end

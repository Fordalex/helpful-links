module Quiz
  class FlashCardStatsController < Admin::AdminController
    layout "quiz/layouts/application"

    def stats
      @flash_card_categories = FlashCardCategory.joins(:flash_cards).order(:name).distinct
    end
  end
end
